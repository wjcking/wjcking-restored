object AboutBox: TAboutBox
  Left = 164
  Top = 120
  BorderStyle = bsDialog
  Caption = 'AboutBox'
  ClientHeight = 324
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 260
    Width = 150
    Height = 12
    Caption = #32593#22336#65306'http://www.videa.cn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 288
    Width = 150
    Height = 12
    Caption = #20449#31665#65306'wjcking@hotmail.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 260
    Width = 84
    Height = 12
    Caption = #20316#32773#65306#34394#25311#29702#24819
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 288
    Width = 60
    Height = 12
    Caption = #29256#26412#65306'V1.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 454
    Height = 241
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Lines.Strings = (
      ''
      '                      '#39318#20808#35874#35874#24744#20351#29992#36825#20010#23567#36719#20214
      '                      '
      '1.'#23567#36890#35759#24405#25903#25345#28155#21152#32852#31995#20154','#25209#37327#26356#26032#12289#21024#38500#12289#25209#37327#21024#38500#12289#22810#20998#31867#26597#35810#12290
      ''
      '2.'#35831#23450#26102#32473#25968#25454#24211#22791#20221#65292'lib'#25991#20214#22841#26159#23384#25918#25968#25454#24211#30340#65292#22791#20221#22312'buckup'#37324#12290
      ''
      '3.'#26412#36719#20214#22806#34920#24456#31616#21333#65292#20294#20869#37096#37319#29992'MVC'#35774#35745#27169#24335#65292#38750#25645#31215#26408#32534#20889#32780#25104#12290
      ''
      '--------------------------------------------------------------'
      ' 4.'#21442#32771#36164#28304
      ' '
      #12298'Delphi'#27169#24335#32534#31243#12299#21016#33402
      #12298'Delphi'#22522#30784#25945#31243#12299#39134#24605#31185#25216
      #12298'C#'#35774#35745#27169#24335#12299'    James W.Cooper['#32654']'
      ' Microsoft Petshop3.0'#28304#20195#30721'     [C#]')
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 360
    Top = 276
    Width = 75
    Height = 25
    Caption = #30830#23450
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
