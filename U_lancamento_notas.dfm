object frm_lacamento_notas: Tfrm_lacamento_notas
  Left = 0
  Top = 0
  Caption = 'frm_lacamento_notas'
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
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 961
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label17: TLabel
      Left = 117
      Top = 155
      Width = 185
      Height = 19
      Caption = 'Informa'#231#245'es da avalia'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 117
      Top = 278
      Width = 111
      Height = 13
      Caption = 'N'#186' deAlunos na Turma:'
    end
    object lb_total: TLabel
      Left = 232
      Top = 279
      Width = 6
      Height = 13
      Caption = '0'
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
    object Panel1: TPanel
      Left = 117
      Top = 185
      Width = 650
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'esda Turma:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 117
      Top = 298
      Width = 650
      Height = 583
      DataSource = dm.ds_notas
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnMouseMove = DBGrid1MouseMove
    end
    object Panel3: TPanel
      Left = 276
      Top = 204
      Width = 104
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 104
        Height = 17
        Align = alTop
        Caption = 'TURMA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 47
      end
      object Edit1: TEdit
        Left = 0
        Top = 23
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object Panel4: TPanel
      Left = 117
      Top = 204
      Width = 135
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 135
        Height = 17
        Align = alTop
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 30
      end
      object cb2: TComboBox
        Left = 0
        Top = 23
        Width = 129
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'SELECIONE'
        Items.Strings = (
          'PROVA OBJETIVA'
          'PROVA DISSERTATIVA'
          'TRABALHO EM GRUPO'
          'DEBATE'
          'SEMIN'#193'RIO'
          'AUTOAVALIA'#199#195'O')
      end
    end
    object pnl_excluir: TPanel
      Left = 632
      Top = 155
      Width = 135
      Height = 26
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      object btn_excluir: TSpeedButton
        Left = 0
        Top = 0
        Width = 135
        Height = 26
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Ver mais informa'#231#245'es +'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = btn_excluirClick
        ExplicitWidth = 120
        ExplicitHeight = 30
      end
    end
    object Panel6: TPanel
      Left = 386
      Top = 204
      Width = 87
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 87
        Height = 17
        Align = alTop
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 33
      end
      object MaskEdit1: TMaskEdit
        Left = 0
        Top = 23
        Width = 81
        Height = 21
        Enabled = False
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
    end
    object Panel35: TPanel
      Left = 115
      Top = 54
      Width = 653
      Height = 72
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 7
      object Label1: TLabel
        Left = 13
        Top = 28
        Width = 188
        Height = 22
        Caption = 'Lan'#231'amento De Notas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
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
    Max = 961
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
