object frm_del_professor: Tfrm_del_professor
  Left = 0
  Top = 0
  Caption = 'frm_del_professor'
  ClientHeight = 514
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseMove = FormMouseMove
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 880
    Height = 656
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label17: TLabel
      Left = 115
      Top = 155
      Width = 226
      Height = 22
      Caption = 'Informa'#231#245'es do professor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel7: TPanel
      Left = 115
      Top = 214
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'NOME DO PROFESSOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 109
      end
      object Panel1: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 0
        Top = 27
        Width = 213
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Nome'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object pnl_salvar: TPanel
      Left = 115
      Top = 555
      Width = 97
      Height = 30
      BevelOuter = bvNone
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object btn_salvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 97
        Height = 30
        Cursor = crHandPoint
        Align = alClient
        Caption = 'CANCELAR'
        Flat = True
        OnClick = btn_salvarClick
        ExplicitLeft = 100
        ExplicitHeight = 33
      end
    end
    object pnl_cancelar: TPanel
      Left = 250
      Top = 555
      Width = 97
      Height = 30
      BevelOuter = bvNone
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object btn_cancelar: TSpeedButton
        Left = 0
        Top = 0
        Width = 97
        Height = 30
        Cursor = crHandPoint
        Align = alClient
        Caption = 'EXCLU'#205'R'
        Flat = True
        OnClick = btn_cancelarClick
        ExplicitLeft = 100
        ExplicitHeight = 33
      end
    end
    object Panel4: TPanel
      Left = 115
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'N'#218'MERO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 45
      end
      object Panel8: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Numero'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 544
      Top = 214
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'E-MAIL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 36
      end
      object Panel12: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Email'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel13: TPanel
      Left = 544
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'ENDERE'#199'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 56
      end
      object Panel14: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Endereco'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel15: TPanel
      Left = 544
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'COMPLEMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 76
      end
      object Panel16: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Complemento'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel35: TPanel
      Left = 115
      Top = 54
      Width = 653
      Height = 72
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 7
      object Label2: TLabel
        Left = 13
        Top = 28
        Width = 196
        Height = 22
        Caption = 'Exclus'#227'o De Professor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 115
      Top = 185
      Width = 650
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 8
    end
    object Panel5: TPanel
      Left = 115
      Top = 443
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CIDADE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 40
      end
      object Panel6: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cidade'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel17: TPanel
      Left = 544
      Top = 443
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'ESTADO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 41
      end
      object Panel18: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Estado'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 111
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 22
      end
      object Panel10: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 0
        Top = 27
        Width = 215
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CPF'
        DataSource = dm.ds_pesq_professor
        MaxLength = 14
        TabOrder = 1
      end
    end
  end
  object ScrollBar1: TScrollBar
    Left = 867
    Top = 0
    Width = 17
    Height = 514
    Align = alRight
    Kind = sbVertical
    Max = 656
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
