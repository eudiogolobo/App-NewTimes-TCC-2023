object frm_matricula: Tfrm_matricula
  Left = 0
  Top = 0
  Caption = 'frm_matricula'
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
    Height = 1128
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label17: TLabel
      Left = 115
      Top = 155
      Width = 189
      Height = 22
      Caption = 'Informa'#231#245'es do aluno:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 115
      Top = 299
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
    object Label12: TLabel
      Left = 115
      Top = 525
      Width = 251
      Height = 22
      Caption = 'Informa'#231#245'es da mensalidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 115
      Top = 754
      Width = 220
      Height = 22
      Caption = 'Informa'#231#245'es da matr'#237'cula:'
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
      Width = 246
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 246
        Height = 15
        Align = alTop
        Caption = 'NOME DO ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 82
      end
      object Panel1: TPanel
        Left = 0
        Top = 48
        Width = 246
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 0
        Top = 32
        Width = 217
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dm.ds_alunosconslu
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 658
      Top = 214
      Width = 110
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 110
        Height = 15
        Align = alTop
        Caption = 'DATA DE NASCIMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 111
      end
      object Panel10: TPanel
        Left = 0
        Top = 48
        Width = 110
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 0
        Top = 32
        Width = 217
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'data_nasc'
        DataSource = dm.ds_alunosconslu
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 448
      Top = 214
      Width = 121
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 121
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
      object Panel12: TPanel
        Left = 0
        Top = 48
        Width = 121
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 0
        Top = 32
        Width = 217
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cpf'
        DataSource = dm.ds_alunosconslu
        Enabled = False
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
      TabOrder = 3
      object Label2: TLabel
        Left = 13
        Top = 28
        Width = 76
        Height = 22
        Caption = 'Matr'#237'cula'
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
      TabOrder = 4
    end
    object Panel4: TPanel
      Left = 115
      Top = 329
      Width = 653
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 5
    end
    object Panel5: TPanel
      Left = 115
      Top = 358
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'CURSO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 37
      end
      object cb1: TComboBox
        Left = 0
        Top = 28
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        OnChange = cb1Change
      end
    end
    object Panel6: TPanel
      Left = 367
      Top = 358
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'TURMA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 37
      end
      object ComboBox2: TComboBox
        Left = 0
        Top = 28
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        OnChange = ComboBox2Change
      end
    end
    object Panel8: TPanel
      Left = 618
      Top = 358
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 8
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 150
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
      object DBEdit6: TDBEdit
        Left = 0
        Top = 32
        Width = 124
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Turno'
        DataSource = dm.ds_pturma
        Enabled = False
        TabOrder = 0
      end
      object Panel17: TPanel
        Left = 0
        Top = 48
        Width = 150
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Panel13: TPanel
      Left = 115
      Top = 446
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 150
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
      object DBEdit2: TDBEdit
        Left = 0
        Top = 32
        Width = 105
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'DataInicio'
        DataSource = dm.ds_pturma
        Enabled = False
        TabOrder = 0
      end
      object Panel15: TPanel
        Left = 0
        Top = 48
        Width = 150
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Panel14: TPanel
      Left = 367
      Top = 446
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 150
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
      object DBEdit4: TDBEdit
        Left = 0
        Top = 32
        Width = 108
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'DataFinal'
        DataSource = dm.ds_pturma
        Enabled = False
        TabOrder = 0
      end
      object Panel16: TPanel
        Left = 0
        Top = 48
        Width = 150
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object pnl_salvar: TPanel
      Left = 115
      Top = 1020
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
      TabOrder = 11
      object btn_salvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 97
        Height = 30
        Cursor = crHandPoint
        Align = alClient
        Caption = 'MATRICULAR'
        Flat = True
        OnClick = btn_salvarClick
        ExplicitLeft = 100
        ExplicitHeight = 33
      end
    end
    object pnl_cancelar: TPanel
      Left = 250
      Top = 1020
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
      TabOrder = 12
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
    object Panel18: TPanel
      Left = 618
      Top = 446
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      object Label11: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'STATUS DA TURMA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 93
      end
      object DBEdit7: TDBEdit
        Left = 0
        Top = 32
        Width = 108
        Height = 12
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'status'
        DataSource = dm.ds_pturma
        Enabled = False
        TabOrder = 0
      end
      object Panel19: TPanel
        Left = 0
        Top = 48
        Width = 150
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Panel20: TPanel
      Left = 115
      Top = 555
      Width = 653
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 14
    end
    object Panel21: TPanel
      Left = 115
      Top = 584
      Width = 145
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 15
      object Label13: TLabel
        Left = 0
        Top = 0
        Width = 145
        Height = 15
        Align = alTop
        Caption = 'VALOR DAS PARCELAS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 114
      end
      object Label19: TLabel
        Left = 0
        Top = 32
        Width = 13
        Height = 13
        Caption = 'R$'
      end
      object Panel26: TPanel
        Left = 0
        Top = 48
        Width = 145
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 15
        Top = 32
        Width = 121
        Height = 15
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel22: TPanel
      Left = 367
      Top = 584
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 16
      object Label14: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'FORMA DE PAGAMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 117
      end
      object ComboBox3: TComboBox
        Left = 0
        Top = 21
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        OnChange = ComboBox3Change
      end
    end
    object Panel23: TPanel
      Left = 115
      Top = 784
      Width = 653
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 17
    end
    object Panel24: TPanel
      Left = 115
      Top = 813
      Width = 145
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 18
      object Label16: TLabel
        Left = 0
        Top = 0
        Width = 145
        Height = 15
        Align = alTop
        Caption = 'DATA DA MATR'#205'CULA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 106
      end
      object MaskEdit2: TMaskEdit
        Left = 0
        Top = 28
        Width = 120
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
    end
    object Panel25: TPanel
      Left = 367
      Top = 813
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 19
      object Label18: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'SITUA'#199#195'O DA MATR'#205'CULA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 126
      end
      object ComboBox1: TComboBox
        Left = 0
        Top = 28
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        Items.Strings = (
          'ATIVA'
          'INATIVA')
      end
    end
    object Panel27: TPanel
      Left = 115
      Top = 672
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 20
      object Label20: TLabel
        Left = 0
        Top = 0
        Width = 150
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
      object Label21: TLabel
        Left = 0
        Top = 32
        Width = 13
        Height = 13
        Caption = 'R$'
      end
      object Panel28: TPanel
        Left = 0
        Top = 48
        Width = 150
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 15
        Top = 32
        Width = 121
        Height = 15
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel29: TPanel
      Left = 367
      Top = 672
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 21
      object Label22: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'DESCONTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 55
      end
      object Label24: TLabel
        Left = 0
        Top = 32
        Width = 4
        Height = 13
        Caption = '-'
      end
      object Panel30: TPanel
        Left = 0
        Top = 48
        Width = 150
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 8
        Top = 32
        Width = 121
        Height = 15
        BorderStyle = bsNone
        TabOrder = 1
        OnChange = Edit3Change
      end
    end
    object Panel31: TPanel
      Left = 618
      Top = 578
      Width = 150
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 22
      object Label23: TLabel
        Left = 0
        Top = 0
        Width = 150
        Height = 15
        Align = alTop
        Caption = 'DIA DE VENCIMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 101
      end
      object dtp1: TDateTimePicker
        Left = 0
        Top = 27
        Width = 145
        Height = 21
        Date = 45236.000000000000000000
        Time = 0.802734270830114800
        TabOrder = 0
        OnChange = dtp1Change
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
    Max = 1128
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
