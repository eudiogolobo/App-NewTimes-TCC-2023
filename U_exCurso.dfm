object frm_excurso: Tfrm_excurso
  Left = 0
  Top = 0
  Caption = 'EXCLUS'#195'O DE CURSO'
  ClientHeight = 514
  ClientWidth = 884
  Color = clWhite
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
    Width = 884
    Height = 1114
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label17: TLabel
      Left = 115
      Top = 155
      Width = 191
      Height = 22
      Caption = 'Informa'#231#245'es do curso:'
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
        Caption = 'NOME DO CURSO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 85
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
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dm.dconcur
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 115
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CARGA HOR'#193'RIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 86
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
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CargaHoraria'
        DataSource = dm.dconcur
        TabOrder = 1
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
      TabOrder = 2
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'METODOLOGIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 73
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
        DataField = 'Metodologia'
        DataSource = dm.dconcur
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
      TabOrder = 3
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'QUANTIDADE DE M'#211'DULOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 133
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
        DataField = 'Modulos'
        DataSource = dm.dconcur
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
      TabOrder = 4
      object Label2: TLabel
        Left = 13
        Top = 28
        Width = 163
        Height = 22
        Caption = 'Exclus'#227'o De Curso'
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
      TabOrder = 5
    end
    object Panel17: TPanel
      Left = 544
      Top = 443
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'IDIOMA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 38
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
        DataField = 'Idioma'
        DataSource = dm.dconcur
        TabOrder = 1
      end
    end
    object Panel19: TPanel
      Left = 115
      Top = 531
      Width = 650
      Height = 206
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 650
        Height = 15
        Align = alTop
        Caption = 'CONTE'#218'DOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 62
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 21
        Width = 649
        Height = 180
        DataField = 'Conteudo'
        DataSource = dm.dconcur
        TabOrder = 0
      end
    end
    object Panel21: TPanel
      Left = 115
      Top = 762
      Width = 650
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 8
      object Label11: TLabel
        Left = 0
        Top = 0
        Width = 650
        Height = 15
        Align = alTop
        Caption = 'REQUISITOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 60
      end
      object Panel22: TPanel
        Left = 0
        Top = 48
        Width = 650
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 0
        Top = 27
        Width = 641
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Requisitos'
        DataSource = dm.dconcur
        TabOrder = 1
      end
    end
    object pnl_salvar: TPanel
      Left = 115
      Top = 967
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
      TabOrder = 9
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
      Top = 967
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
      TabOrder = 10
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
    object Panel23: TPanel
      Left = 115
      Top = 833
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object Label12: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'VALOR TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 69
      end
      object Panel24: TPanel
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
      object DBEdit11: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ValorTotal'
        DataSource = dm.dconcur
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
      TabOrder = 12
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'FORMATO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 50
      end
      object DBComboBox1: TDBComboBox
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        DataField = 'Formato'
        DataSource = dm.dconcur
        Items.Strings = (
          'SEMIPRESENCIAL'
          'PRESENCIAL')
        TabOrder = 0
      end
    end
    object Panel12: TPanel
      Left = 544
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = #193'REA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 30
      end
      object DBComboBox2: TDBComboBox
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        DataField = 'Area'
        DataSource = dm.dconcur
        Items.Strings = (
          'PROFISSIONAL'
          'ESCOLAR')
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 115
      Top = 443
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 14
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'N'#205'VEL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 31
      end
      object DBComboBox3: TDBComboBox
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        DataField = 'Nivel'
        DataSource = dm.dconcur
        Items.Strings = (
          'B'#193'SICO'
          'M'#201'DIO'
          'AVAN'#199'ADO')
        TabOrder = 0
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
    Max = 1114
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
