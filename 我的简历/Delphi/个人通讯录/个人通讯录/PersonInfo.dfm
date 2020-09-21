object PersonInfoForm: TPersonInfoForm
  Left = 147
  Top = 218
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #32852#31995#20154#20449#24687
  ClientHeight = 387
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 16
    Width = 84
    Height = 12
    Caption = #35831#20808#36873#25321#20998#31867#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 52
    Width = 417
    Height = 129
    Caption = #20010#20154#20449#24687
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 24
      Top = 64
      Width = 36
      Height = 12
      Caption = #25163#26426#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 208
      Top = 64
      Width = 60
      Height = 12
      Caption = #20303#23429#30005#35805#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 30
      Width = 60
      Height = 12
      Caption = #24615'    '#21035#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 36
      Height = 12
      Caption = #22995#21517#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 20
      Top = 96
      Width = 48
      Height = 12
      Caption = #65329#65329#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 208
      Top = 96
      Width = 60
      Height = 12
      Caption = #21333#20301#30005#35805#65306
    end
    object txtPhone: TEdit
      Left = 271
      Top = 62
      Width = 122
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 3
      OnKeyPress = EditKeyPress
    end
    object txtHP: TEdit
      Left = 80
      Top = 60
      Width = 121
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
      OnKeyPress = EditKeyPress
    end
    object ddlSex: TComboBox
      Left = 272
      Top = 26
      Width = 90
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = #30007
      Items.Strings = (
        #30007
        #22899)
    end
    object txtName: TEdit
      Left = 80
      Top = 27
      Width = 121
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EditKeyPress
    end
    object txtComPhone: TEdit
      Left = 272
      Top = 92
      Width = 120
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 5
      OnKeyPress = EditKeyPress
    end
    object txtQQ: TEdit
      Left = 80
      Top = 92
      Width = 121
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 4
      OnKeyPress = EditKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 196
    Width = 417
    Height = 133
    Caption = #20854#20182#20449#24687
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label17: TLabel
      Left = 28
      Top = 65
      Width = 42
      Height = 12
      Caption = 'Email'#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 28
      Top = 33
      Width = 42
      Height = 12
      Caption = #32593' '#22336#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 28
      Top = 101
      Width = 42
      Height = 12
      Caption = #20303' '#22336#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object txtAddress: TEdit
      Left = 76
      Top = 97
      Width = 329
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = EditKeyPress
    end
    object txtWebSite: TEdit
      Left = 76
      Top = 25
      Width = 245
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EditKeyPress
    end
    object txtMail: TEdit
      Left = 76
      Top = 61
      Width = 245
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = EditKeyPress
    end
    object btnUrl: TButton
      Left = 328
      Top = 25
      Width = 81
      Height = 20
      Caption = #21040#27492#32593#31449'[&B]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = ButtonSet
    end
    object btnMail: TButton
      Left = 328
      Top = 61
      Width = 81
      Height = 20
      Caption = #21457#36865#37038#20214'[&W]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = ButtonSet
    end
  end
  object btnCancel: TButton
    Left = 368
    Top = 348
    Width = 75
    Height = 25
    Caption = #20851#38381
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = ButtonSet
  end
  object btnOK: TButton
    Left = 280
    Top = 348
    Width = 75
    Height = 25
    Caption = #28155#21152
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnOKClick
  end
  object ddlPersonType: TComboBox
    Left = 342
    Top = 12
    Width = 95
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ItemHeight = 12
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    Text = #26379#21451
    Items.Strings = (
      #26379#21451
      #21516#23398
      #21516#20107
      #23458#25143
      #20146#25114
      #20854#20182)
  end
end
