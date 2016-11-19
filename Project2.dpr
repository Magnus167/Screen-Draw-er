program Project2;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Black');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
