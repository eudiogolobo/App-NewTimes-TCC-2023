object frm_cadAluno03: Tfrm_cadAluno03
  Left = 0
  Top = 0
  Caption = 'frm_cadAluno03'
  ClientHeight = 661
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 4
    Top = -128
    Width = 872
    Height = 853
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label17: TLabel
      Left = 115
      Top = 155
      Width = 262
      Height = 22
      Caption = 'Informa'#231#245'es dos Documentos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel33: TPanel
      Left = -3
      Top = 46
      Width = 798
      Height = 0
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 0
    end
    object pnl_salvar: TPanel
      Left = 115
      Top = 760
      Width = 97
      Height = 30
      BevelOuter = bvNone
      Color = 16744448
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
        Caption = 'PR'#211'XIMO'
        Flat = True
        OnClick = btn_salvarClick
        ExplicitLeft = 100
        ExplicitHeight = 33
      end
    end
    object pnl_incluir: TPanel
      Left = 242
      Top = 760
      Width = 97
      Height = 30
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object btn_incluir: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Caption = 'ANTERIOR'
        Flat = True
        OnClick = btn_incluirClick
        ExplicitLeft = 100
        ExplicitTop = 0
        ExplicitWidth = 97
        ExplicitHeight = 33
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
      object Label1: TLabel
        Left = 13
        Top = 28
        Width = 159
        Height = 22
        Caption = 'Cadastro De Aluno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel6: TPanel
        Left = 464
        Top = 29
        Width = 153
        Height = 20
        BevelOuter = bvNone
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label14: TLabel
          Left = 12
          Top = 3
          Width = 129
          Height = 14
          Caption = 'Etapa 3/7- DOCUMENTOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object Panel1: TPanel
      Left = 115
      Top = 185
      Width = 650
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'esda Turma:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 4
    end
    object Panel19: TPanel
      Left = 544
      Top = 212
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'RG:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 17
      end
      object Panel20: TPanel
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
      object Edit4: TEdit
        Left = 0
        Top = 21
        Width = 183
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object Panel21: TPanel
      Left = 544
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label11: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = #211'RG'#195'O EMISSOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 84
      end
      object cb2: TComboBox
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        TabOrder = 0
        Text = 'cb2'
      end
    end
    object Panel23: TPanel
      Left = 544
      Top = 377
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
      object Label12: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CERTID'#195'O DE NASCIMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 134
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
      object Edit2: TEdit
        Left = 0
        Top = 21
        Width = 187
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object Panel25: TPanel
      Left = 544
      Top = 464
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 8
      object Label13: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'FOLHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 36
      end
      object Panel26: TPanel
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
      object Edit3: TEdit
        Left = 0
        Top = 21
        Width = 187
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object Panel3: TPanel
      Left = 547
      Top = 547
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'N'#218'MERO DE IDENTIFICA'#199#195'O SOCIAL (NIS/NIT):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 218
      end
      object Panel4: TPanel
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
      object Edit5: TEdit
        Left = 0
        Top = 21
        Width = 220
        Height = 23
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object Panel5: TPanel
      Left = 547
      Top = 627
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'TIPO DE DOCUMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 104
      end
      object cb3: TComboBox
        Left = 0
        Top = 28
        Width = 220
        Height = 21
        TabOrder = 0
        Text = 'cb3'
      end
    end
    object Panel7: TPanel
      Left = 115
      Top = 212
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object Label4: TLabel
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
      object Edit7: TEdit
        Left = 0
        Top = 21
        Width = 183
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
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
      TabOrder = 12
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'ESTADO ONDE FOI EMITIDO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 132
      end
      object cb1: TComboBox
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        TabOrder = 0
        Text = 'cb1'
      end
    end
    object Panel11: TPanel
      Left = 115
      Top = 377
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'DATA DA EXPEDI'#199#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 105
      end
      object dtp1: TDateTimePicker
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Date = 45210.000000000000000000
        Time = 0.896415173614514100
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 115
      Top = 464
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 14
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'LIVRO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 32
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
      object Edit10: TEdit
        Left = 0
        Top = 21
        Width = 187
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object Panel15: TPanel
      Left = 118
      Top = 547
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 15
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'DATA DE EXPEDI'#199#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 104
      end
      object dtp2: TDateTimePicker
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        Date = 45210.000000000000000000
        Time = 0.896415173614514100
        TabOrder = 0
      end
    end
    object Panel17: TPanel
      Left = 118
      Top = 627
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 16
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'DOCUMENTO ESTRANGEIRO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 135
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
      object Edit12: TEdit
        Left = 0
        Top = 21
        Width = 220
        Height = 23
        BorderStyle = bsNone
        Color = clWhite
        TabOrder = 1
        Text = 'Edit1'
      end
    end
  end
  object ScrollBar1: TScrollBar
    Left = 867
    Top = 0
    Width = 17
    Height = 661
    HelpContext = 1
    Align = alRight
    Kind = sbVertical
    Max = 863
    PageSize = 700
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
