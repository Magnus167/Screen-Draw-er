object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 550
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 25
  object Image1: TImage
    Left = 336
    Top = 0
    Width = 1296
    Height = 1000
    OnClick = Image1Click
  end
  object Label1: TLabel
    Left = 16
    Top = 112
    Width = 50
    Height = 25
    Caption = 'Label1'
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 16
    Top = 192
    Width = 53
    Height = 25
    Caption = 'Label2'
    OnClick = Label2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 384
    Top = 264
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 152
    Top = 272
  end
end
