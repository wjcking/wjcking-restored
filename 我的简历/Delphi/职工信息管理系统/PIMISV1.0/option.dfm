object frmOption: TfrmOption
  Left = 283
  Top = 94
  BorderStyle = bsDialog
  Caption = #36873#39033'...'
  ClientHeight = 306
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 0
    Top = 10
    Width = 406
    Height = 246
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #31995#32479#36873#39033
      object Memo: TMemo
        Left = 213
        Top = 0
        Width = 185
        Height = 219
        Align = alRight
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
      object cbShowLogin: TCheckBox
        Left = 30
        Top = 40
        Width = 151
        Height = 17
        Caption = #21551#21160#26102#26174#31034#30331#38470#31383#21475
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
  end
  object Button3: TButton
    Left = 315
    Top = 270
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 205
    Top = 270
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = Button4Click
  end
end
