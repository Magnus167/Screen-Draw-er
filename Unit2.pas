unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ShellApi;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sp, m, xxxx: Int64;
  str: String;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Int64;
  rec: TRect;

begin
  sp := 0;
  Timer2.Interval := 500;
  Label2.Visible := False;
  Label2.Font.Size := 200;
  Label1.Font.Size := 40;
  Label1.Caption := TimeToStr(Time);
  xxxx := 0;
  rec := Rect(0, 0, Image1.Height, Image1.Width);

  Image1.Canvas.Pen.Color := clBlack;

  rec := Rect(0, 0, Image1.Height, Image1.Width);

  Image1.Canvas.Brush.Style := bsSolid;
  Image1.Canvas.Brush.Color := clBlack;

  Image1.Canvas.FillRect(rec);

  m := 0;
  Image1.Canvas.Pen.Color := clBlack;
  Image1.Canvas.Rectangle(0, 0, Image1.Height, Image1.Width);
  Timer1.Interval := 1;
  for i := 0 to 20 do
  begin
    Image1.Canvas.Pen.Color := RGB(Random(256), Random(256), Random(256));
    Image1.Canvas.MoveTo(Random(Image1.Height), Random(Image1.Width));
    Image1.Canvas.LineTo(Random(Image1.Height), Random(Image1.Width));
  end;

end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormResize(Sender: TObject);
var
  x: Integer;
begin
  Image1.Height := Form1.Height;
  Image1.Width := Form1.Height;

  // Image1.Canvas.Pen.Color := clWhite;
  //
  // Image1.Canvas.Rectangle(0, 0, Image1.Height, Image1.Width);
  //
  // Image1.Canvas.Rectangle(0, 0, Image1.Height, Image1.Width);
  for x := 0 to 0 do
  begin
    Image1.Canvas.Pen.Color := RGB(Random(256), Random(256), Random(256));
    Image1.Canvas.MoveTo(Random(Image1.Height), Random(Image1.Width));
    Image1.Canvas.LineTo(Random(Image1.Height), Random(Image1.Width));
  end;

end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Label2.Caption := TimeToStr(Time);
  Label1.Visible := False;
  Image1.Visible := False;

  Label2.Visible := True;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  Label2.Visible := False;
  Label1.Visible := True;
  Image1.Visible := True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  rec: TRect;
  x: Int64;
begin
  if Label1.Visible = True then
  begin

    for x := 0 to 5 do
    begin
      Image1.Canvas.Pen.Color := RGB(Random(256), Random(256), Random(256));
      Image1.Canvas.MoveTo(Random(Image1.Height), Random(Image1.Width));
      Image1.Canvas.LineTo(Random(Image1.Height), Random(Image1.Width));
      m := m + 1;

    end;
    if m >= 2500 then
    begin
      rec := Rect(0, 0, Image1.Height, Image1.Width);

      Image1.Canvas.Pen.Color := clBlack;

      rec := Rect(0, 0, Image1.Height, Image1.Width);

      Image1.Canvas.Brush.Style := bsSolid;
      Image1.Canvas.Brush.Color := clBlack;

      Image1.Canvas.FillRect(rec);
      xxxx := xxxx + 1;
      m := 0;
    end;

    if xxxx >= 5 then
      FormCreate(Sender);

  end

end;

procedure TForm1.Timer2Timer(Sender: TObject);

begin
//  if sp = 5 then
//  begin
//    ShellExecute(Handle, 'open', 'C:\Users\Bellatrix\Desktop\speak.vbs', nil, nil,
//      SW_SHOWNORMAL);
//    sp := 0;
//
//  end;
//
//  sp := sp + 1;
  str := TimeToStr(Time);
  if Label1.Visible = False then
    Label2.Caption := str
  else
    Label1.Caption := str;

end;

end.
