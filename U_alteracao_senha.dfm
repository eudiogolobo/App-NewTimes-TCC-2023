object frm_alteracao_senha: Tfrm_alteracao_senha
  Left = 0
  Top = 0
  Caption = 'frm_alteracao_senha'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 514
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label2: TLabel
      Left = 115
      Top = 54
      Width = 169
      Height = 22
      Caption = 'Altera'#231#227'o De Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel7: TPanel
      Left = 111
      Top = 136
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
        Caption = 'NOVA SENHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 66
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
      object Edit1: TEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BorderStyle = bsNone
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 111
      Top = 216
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'DIGITE SUA SENHA ATUAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 128
      end
      object Edit3: TEdit
        Left = 0
        Top = 28
        Width = 217
        Height = 21
        BorderStyle = bsNone
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 48
        Width = 221
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 540
      Top = 136
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CONFIRME A NOVA SENHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 130
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
        TabOrder = 1
      end
    end
    object Panel21: TPanel
      Left = 111
      Top = 85
      Width = 650
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 3
    end
    object pnl_salvar: TPanel
      Left = 111
      Top = 425
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
      TabOrder = 4
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
    object pnl_cancelar: TPanel
      Left = 246
      Top = 425
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
      TabOrder = 5
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
  end
end
