object frm_altuser: Tfrm_altuser
  Left = 0
  Top = 0
  Caption = 'EDITAR USU'#193'RIO'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 738
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    object Label17: TLabel
      Left = 115
      Top = 155
      Width = 205
      Height = 22
      Caption = 'Informa'#231#245'es do usu'#225'rio:'
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
        Caption = 'NOME:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 31
      end
      object Panel2: TPanel
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
        Top = 27
        Width = 217
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
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
        Caption = 'SENHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 36
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
      object Edit4: TEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
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
        Caption = 'TIPO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 24
      end
      object CB1: TComboBox
        Left = 0
        Top = 25
        Width = 217
        Height = 21
        TabOrder = 0
        Text = 'Selecione'
        OnChange = CB1Change
        Items.Strings = (
          'ADM'
          'PROFESSOR')
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
      TabOrder = 3
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'LOGIN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 33
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
      object Edit2: TEdit
        Left = 2
        Top = 27
        Width = 217
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
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
      TabOrder = 4
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CONFIRME SUA SENHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 113
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
      object Edit3: TEdit
        Left = 2
        Top = 27
        Width = 217
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
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
      TabOrder = 5
      object Label2: TLabel
        Left = 13
        Top = 28
        Width = 179
        Height = 22
        Caption = 'Altera'#231#227'o De Usu'#225'rio'
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
      TabOrder = 6
    end
    object Panel5: TPanel
      Left = 90
      Top = 418
      Width = 705
      Height = 240
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
      Visible = False
      object Label11: TLabel
        Left = 25
        Top = 105
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
      object Label9: TLabel
        Left = 25
        Top = 37
        Width = 165
        Height = 16
        Caption = 'Digite o c'#243'digo do professor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel6: TPanel
        Left = 25
        Top = 162
        Width = 221
        Height = 49
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label4: TLabel
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
        object DBEdit1: TDBEdit
          Left = 0
          Top = 27
          Width = 213
          Height = 21
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'Nome'
          Enabled = False
          TabOrder = 1
        end
      end
      object Panel15: TPanel
        Left = 302
        Top = 162
        Width = 193
        Height = 49
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label8: TLabel
          Left = 0
          Top = 0
          Width = 193
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
        object Panel16: TPanel
          Left = 0
          Top = 48
          Width = 193
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
          Enabled = False
          TabOrder = 1
        end
      end
      object Panel19: TPanel
        Left = 569
        Top = 162
        Width = 106
        Height = 49
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label10: TLabel
          Left = 0
          Top = 0
          Width = 106
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
        object Panel20: TPanel
          Left = 0
          Top = 48
          Width = 106
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
          Enabled = False
          TabOrder = 1
        end
      end
      object Panel22: TPanel
        Left = 25
        Top = 133
        Width = 650
        Height = 1
        BevelOuter = bvNone
        Caption = 'Informa'#231#245'es do curso:'
        Color = clSilver
        ParentBackground = False
        TabOrder = 3
      end
      object txt_buscar: TEdit
        Left = 25
        Top = 59
        Width = 214
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object Panel17: TPanel
        Left = 289
        Top = 59
        Width = 85
        Height = 23
        BevelOuter = bvNone
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 85
          Height = 23
          Cursor = crHandPoint
          Align = alClient
          Caption = 'PESQUISAR'
          Flat = True
          OnClick = SpeedButton1Click
          ExplicitWidth = 73
          ExplicitHeight = 20
        end
      end
      object Panel18: TPanel
        Left = 244
        Top = 59
        Width = 25
        Height = 23
        BevelOuter = bvNone
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        object SpeedButton2: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 23
          Cursor = crHandPoint
          Align = alClient
          Caption = '...'
          Flat = True
          OnClick = SpeedButton2Click
          ExplicitWidth = 73
          ExplicitHeight = 20
        end
      end
    end
    object Panel21: TPanel
      Left = 0
      Top = 477
      Width = 874
      Height = 218
      BevelOuter = bvNone
      TabOrder = 8
      object Label15: TLabel
        Left = 115
        Top = 95
        Width = 79
        Height = 13
        Caption = 'Cadastrado por:'
      end
      object Label16: TLabel
        Left = 115
        Top = 141
        Width = 27
        Height = 13
        Caption = 'Data:'
      end
      object Label18: TLabel
        Left = 115
        Top = 186
        Width = 27
        Height = 13
        Caption = 'Hora:'
      end
      object Label19: TLabel
        Left = 483
        Top = 95
        Width = 59
        Height = 13
        Caption = 'Editado por:'
      end
      object Label20: TLabel
        Left = 483
        Top = 143
        Width = 27
        Height = 13
        Caption = 'Data:'
      end
      object Label21: TLabel
        Left = 483
        Top = 187
        Width = 27
        Height = 13
        Caption = 'Hora:'
      end
      object nomeCadastro: TLabel
        Left = 199
        Top = 95
        Width = 70
        Height = 13
        Caption = 'nomeCadastro'
      end
      object DataCad: TLabel
        Left = 148
        Top = 143
        Width = 37
        Height = 13
        Caption = 'Label22'
      end
      object HoraCad: TLabel
        Left = 148
        Top = 187
        Width = 37
        Height = 13
        Caption = 'Label22'
      end
      object NomeEdit: TLabel
        Left = 548
        Top = 95
        Width = 39
        Height = 13
        Caption = 'Nenhum'
      end
      object DataEdit: TLabel
        Left = 516
        Top = 143
        Width = 39
        Height = 13
        Caption = 'Nenhum'
      end
      object HoraEdit: TLabel
        Left = 516
        Top = 187
        Width = 39
        Height = 13
        Caption = 'Nenhum'
      end
      object Panel23: TPanel
        Left = 446
        Top = 95
        Width = 1
        Height = 105
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object pnl_cancelar: TPanel
        Left = 252
        Top = 7
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
        TabOrder = 1
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
      object pnl_salvar: TPanel
        Left = 115
        Top = 7
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
        TabOrder = 2
        object btn_salvar: TSpeedButton
          Left = 0
          Top = 0
          Width = 97
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'SALVAR'
          Flat = True
          OnClick = btn_salvarClick
          ExplicitLeft = 100
          ExplicitHeight = 33
        end
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
    Max = 738
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
