object frm_cad_avaliacao: Tfrm_cad_avaliacao
  Left = 0
  Top = 0
  Caption = 'frm_cad_avaliacao'
  ClientHeight = 514
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 985
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label12: TLabel
      Left = 115
      Top = 463
      Width = 221
      Height = 22
      Caption = 'Informa'#231#245'es da avalia'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 115
      Top = 155
      Width = 190
      Height = 22
      Caption = 'Informa'#231#245'es da turma:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel35: TPanel
      Left = 115
      Top = 54
      Width = 653
      Height = 72
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 13
        Top = 28
        Width = 192
        Height = 22
        Caption = 'Cadastro De Avalia'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnl_salvar: TPanel
      Left = 115
      Top = 865
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
        Caption = 'CONFIRMAR'
        Flat = True
        OnClick = btn_salvarClick
        ExplicitLeft = 100
        ExplicitHeight = 33
      end
    end
    object pnl_cancelar: TPanel
      Left = 250
      Top = 865
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
        Caption = 'CANCELAR'
        Flat = True
        OnClick = btn_cancelarClick
        ExplicitLeft = 100
        ExplicitHeight = 33
      end
    end
    object Panel20: TPanel
      Left = 115
      Top = 495
      Width = 653
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 115
      Top = 522
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'M'#211'DULO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 45
      end
      object ComboBox3: TComboBox
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
      end
    end
    object Panel7: TPanel
      Left = 544
      Top = 522
      Width = 224
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 224
        Height = 15
        Align = alTop
        Caption = 'DATA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 29
      end
      object MaskEdit1: TMaskEdit
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
    end
    object Panel9: TPanel
      Left = 544
      Top = 599
      Width = 217
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label15: TLabel
        Left = 0
        Top = 0
        Width = 217
        Height = 15
        Align = alTop
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 21
      end
      object Panel11: TPanel
        Left = 0
        Top = 48
        Width = 217
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        TabOrder = 1
        Text = 'Selecione'
        Items.Strings = (
          'PROVA OBJETIVA'
          'PROVA DISSERTATIVA'
          'TRABALHO EM GRUPO'
          'DEBATE'
          'SEMIN'#193'RIO'
          'AUTOAVALIA'#199#195'O')
      end
    end
    object Panel12: TPanel
      Left = 115
      Top = 599
      Width = 217
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
      object Label17: TLabel
        Left = 0
        Top = 0
        Width = 217
        Height = 15
        Align = alTop
        Caption = 'TOTAL DE AULA(S)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 88
      end
      object ComboBox5: TComboBox
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
      end
    end
    object Panel3: TPanel
      Left = 115
      Top = 679
      Width = 653
      Height = 133
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 8
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 653
        Height = 15
        Align = alTop
        Caption = 'DESCRI'#199#195'O/ ASSUNTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 111
      end
      object Memo1: TMemo
        Left = 0
        Top = 21
        Width = 649
        Height = 108
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 115
      Top = 214
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'NOME DA TURMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 82
      end
      object Panel5: TPanel
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
      object Edit1: TEdit
        Left = 0
        Top = 26
        Width = 205
        Height = 17
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 115
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'TURNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 33
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
      object cb2: TComboBox
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = 'Selecione'
        Items.Strings = (
          'MATUTINO'
          'VESPERTINO'
          'NOTURNO')
      end
    end
    object Panel8: TPanel
      Left = 115
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'DATA DE CONCLUS'#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 109
      end
      object Panel13: TPanel
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
      object dtp2: TDateTimePicker
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Date = 45226.000000000000000000
        Time = 0.781459907404496300
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel14: TPanel
      Left = 544
      Top = 214
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 12
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CURSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 34
      end
      object cb1: TComboBox
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'Selecione'
      end
    end
    object Panel15: TPanel
      Left = 544
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'DATA DE INICIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 78
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
      object dtp1: TDateTimePicker
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Date = 45226.000000000000000000
        Time = 0.781459907404496300
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel17: TPanel
      Left = 115
      Top = 185
      Width = 650
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 14
    end
    object Panel18: TPanel
      Left = 544
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 15
      object Label11: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'STATUS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 39
      end
      object cb3: TComboBox
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'Selecione'
        Items.Strings = (
          'ATIVO'
          'INATIVO')
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
    Max = 985
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
