object Form4: TForm4
  Left = 489
  Top = 139
  Width = 304
  Height = 558
  Caption = 'Registrasi Akun'
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
    Left = 64
    Top = 8
    Width = 153
    Height = 30
    Caption = 'Registrasi Akun'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Nirmala UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 56
    Width = 40
    Height = 20
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 120
    Width = 66
    Height = 20
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 248
    Width = 137
    Height = 20
    Caption = 'Konfirmasi Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 88
    Top = 312
    Width = 103
    Height = 20
    Caption = 'Nomor Telepon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 112
    Top = 376
    Width = 48
    Height = 20
    Caption = 'Gender'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 104
    Top = 184
    Width = 62
    Height = 20
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 80
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 144
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 24
    Top = 208
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 24
    Top = 272
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 24
    Top = 336
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 176
    Top = 448
    Width = 83
    Height = 33
    Caption = 'Daftar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 448
    Width = 81
    Height = 33
    Caption = 'Kembali'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 232
    Width = 97
    Height = 17
    Caption = 'Show'
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 296
    Width = 97
    Height = 17
    Caption = 'Show'
    TabOrder = 8
    OnClick = CheckBox2Click
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 400
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 9
    Items.Strings = (
      'L'
      'P')
  end
end
