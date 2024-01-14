object frm_lacamento_notas_quadro: Tfrm_lacamento_notas_quadro
  Left = 0
  Top = 0
  Caption = 'LAN'#199'AMENTO DE NOTAS'
  ClientHeight = 105
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 411
    Height = 105
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label17: TLabel
      Left = 24
      Top = 42
      Width = 147
      Height = 18
      Caption = 'Digite a nota do aluno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel7: TPanel
      Left = 188
      Top = 44
      Width = 49
      Height = 17
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Edit1: TEdit
        Left = 4
        Top = 1
        Width = 40
        Height = 15
        BorderStyle = bsNone
        MaxLength = 4
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Panel5: TPanel
        Left = 0
        Top = 16
        Width = 49
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 48
        ExplicitWidth = 221
      end
    end
    object pnl_salvar: TPanel
      Left = 287
      Top = 37
      Width = 91
      Height = 25
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
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Align = alClient
        Caption = 'SALVAR'
        Flat = True
        OnClick = btn_salvarClick
        ExplicitLeft = -8
        ExplicitTop = -8
      end
    end
  end
end
