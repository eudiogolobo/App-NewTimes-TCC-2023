object frm_busca_img_rg: Tfrm_busca_img_rg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frm_busca_img_rg'
  ClientHeight = 621
  ClientWidth = 794
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
    Width = 794
    Height = 621
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label14: TLabel
      Left = 99
      Top = 111
      Width = 168
      Height = 22
      Caption = 'Informa'#231#245'es Gerais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 99
      Top = 171
      Width = 297
      Height = 17
      Caption = 'DOCUMENTO (ARQUIVO '#218'NICO, EM JPEG)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 101
      Top = 201
      Width = 400
      Height = 250
      ParentShowHint = False
      ShowHint = False
      Stretch = True
    end
    object Panel34: TPanel
      Left = 99
      Top = 46
      Width = 510
      Height = 51
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 0
      object Label16: TLabel
        Left = 13
        Top = 12
        Width = 74
        Height = 22
        Caption = 'Imagens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel36: TPanel
      Left = 0
      Top = 141
      Width = 800
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'esda Turma:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
    end
    object Panel31: TPanel
      Left = 99
      Top = 468
      Width = 126
      Height = 24
      BevelKind = bkFlat
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = clWhite
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 122
        Height = 20
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Escolher arquivo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitTop = 16
        ExplicitWidth = 97
        ExplicitHeight = 30
      end
    end
    object Panel2: TPanel
      Left = 99
      Top = 527
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
      TabOrder = 3
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 0
        Width = 97
        Height = 30
        Cursor = crHandPoint
        Align = alClient
        Caption = 'CONFIRMAR'
        Flat = True
        OnClick = SpeedButton2Click
        ExplicitTop = -7
      end
    end
    object Panel3: TPanel
      Left = -16
      Top = 513
      Width = 800
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'esda Turma:'
      Color = clSilver
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object Panel32: TPanel
      Left = 222
      Top = 527
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
      TabOrder = 5
      object SpeedButton3: TSpeedButton
        Left = 1
        Top = 1
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Align = alClient
        Caption = 'CANCELAR'
        Flat = True
        OnClick = SpeedButton3Click
        ExplicitTop = -7
      end
    end
  end
end