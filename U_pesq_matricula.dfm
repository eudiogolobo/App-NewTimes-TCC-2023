object frm_pq_matricula: Tfrm_pq_matricula
  Left = 0
  Top = 0
  Caption = 'frm_pq_matricula'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 145
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    object Label1: TLabel
      Left = 28
      Top = 52
      Width = 221
      Height = 16
      Caption = 'Pesquisar pelo nome ou CPF do aluno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 118
      Width = 142
      Height = 13
      Caption = 'N'#186' de Registros Encontrados:'
    end
    object lb_total: TLabel
      Left = 179
      Top = 118
      Width = 6
      Height = 13
      Caption = '0'
    end
    object txt_buscar: TEdit
      Left = 28
      Top = 71
      Width = 309
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 373
      Top = 69
      Width = 85
      Height = 25
      BevelOuter = bvNone
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Pesquisar'
        Flat = True
        OnClick = SpeedButton1Click
        ExplicitWidth = 73
        ExplicitHeight = 20
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 145
    Width = 884
    Height = 369
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dm.ds_matricula
    FixedColor = clCream
    GradientEndColor = clMedGray
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnMouseMove = DBGrid1MouseMove
  end
end