object frm_media_aluno: Tfrm_media_aluno
  Left = 0
  Top = 0
  Caption = 'frm_aluno_media'
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
    Height = 977
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
    object Label11: TLabel
      Left = 115
      Top = 443
      Width = 153
      Height = 22
      Caption = 'M'#233'dias das notas:'
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
        DataSource = dm.ds_matricula
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
        DataSource = dm.ds_matricula
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
        DataSource = dm.ds_matricula
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
        Width = 188
        Height = 22
        Caption = 'Vizualiza'#231#227'o De Notas'
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
        Enabled = False
        TabOrder = 0
        Text = 'Selecione'
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
        Enabled = False
        TabOrder = 0
        Text = 'Selecione'
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
    object DBGrid1: TDBGrid
      Left = 115
      Top = 579
      Width = 653
      Height = 129
      DataSource = dm.ds_notas_modulos
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel13: TPanel
      Left = 115
      Top = 726
      Width = 97
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 97
        Height = 15
        Align = alTop
        Caption = 'M'#201'DIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 34
      end
      object Panel14: TPanel
        Left = 0
        Top = 48
        Width = 97
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 0
        Top = 28
        Width = 89
        Height = 15
        BorderStyle = bsNone
        Enabled = False
        TabOrder = 1
      end
    end
    object Panel15: TPanel
      Left = 115
      Top = 511
      Width = 97
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 97
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
      object ComboBox1: TComboBox
        Left = 0
        Top = 28
        Width = 97
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        OnChange = ComboBox1Change
        Items.Strings = (
          'TODOS')
      end
    end
    object Panel16: TPanel
      Left = 115
      Top = 473
      Width = 653
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 12
    end
  end
  object ScrollBar1: TScrollBar
    Left = 867
    Top = 0
    Width = 17
    Height = 514
    Align = alRight
    Kind = sbVertical
    Max = 977
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
