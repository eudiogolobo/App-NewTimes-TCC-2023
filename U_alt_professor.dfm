object frm_alt_professor: Tfrm_alt_professor
  Left = 0
  Top = 0
  Caption = 'frm_alt_professor'
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
    Width = 882
    Height = 1266
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel2MouseMove
    object Label17: TLabel
      Left = 115
      Top = 155
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
    object Label10: TLabel
      Left = 115
      Top = 522
      Width = 152
      Height = 22
      Caption = 'Turma/ Professor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 115
      Top = 1112
      Width = 79
      Height = 13
      Caption = 'Cadastrado por:'
    end
    object Label16: TLabel
      Left = 115
      Top = 1160
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label18: TLabel
      Left = 115
      Top = 1204
      Width = 27
      Height = 13
      Caption = 'Hora:'
    end
    object Label19: TLabel
      Left = 477
      Top = 1112
      Width = 59
      Height = 13
      Caption = 'Editado por:'
    end
    object Label20: TLabel
      Left = 477
      Top = 1160
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label21: TLabel
      Left = 477
      Top = 1204
      Width = 27
      Height = 13
      Caption = 'Hora:'
    end
    object nomeCadastro: TLabel
      Left = 199
      Top = 1112
      Width = 70
      Height = 13
      Caption = 'nomeCadastro'
    end
    object DataCad: TLabel
      Left = 148
      Top = 1160
      Width = 37
      Height = 13
      Caption = 'Label22'
    end
    object HoraCad: TLabel
      Left = 148
      Top = 1204
      Width = 37
      Height = 13
      Caption = 'Label22'
    end
    object NomeEdit: TLabel
      Left = 542
      Top = 1112
      Width = 39
      Height = 13
      Caption = 'Nenhum'
    end
    object DataEdit: TLabel
      Left = 510
      Top = 1160
      Width = 39
      Height = 13
      Caption = 'Nenhum'
    end
    object HoraEdit: TLabel
      Left = 510
      Top = 1204
      Width = 39
      Height = 13
      Caption = 'Nenhum'
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
        Caption = 'NOME DO PROFESSOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 109
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
      object DBEdit1: TDBEdit
        Left = 0
        Top = 27
        Width = 215
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Nome'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object pnl_salvar: TPanel
      Left = 115
      Top = 994
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
        Caption = 'SALVAR'
        Flat = True
        OnClick = btn_salvarClick
        ExplicitWidth = 96
      end
    end
    object pnl_cancelar: TPanel
      Left = 250
      Top = 994
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
    object Panel4: TPanel
      Left = 115
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'N'#218'MERO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 45
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
      object DBEdit4: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Numero'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
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
      TabOrder = 4
      object Label6: TLabel
        Left = 0
        Top = 0
        Width = 221
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
      object DBEdit5: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Email'
        DataSource = dm.ds_pesq_professor
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
      TabOrder = 5
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'ENDERE'#199'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 56
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
      object DBEdit6: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Endereco'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel15: TPanel
      Left = 544
      Top = 366
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'COMPLEMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 76
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
      object DBEdit7: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Complemento'
        DataSource = dm.ds_pesq_professor
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
      TabOrder = 7
      object Label2: TLabel
        Left = 13
        Top = 28
        Width = 199
        Height = 22
        Caption = 'Altera'#231#227'o De Professor'
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
      TabOrder = 8
    end
    object Panel5: TPanel
      Left = 115
      Top = 443
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'CIDADE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 40
      end
      object Panel6: TPanel
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
      object DBEdit2: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cidade'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel17: TPanel
      Left = 544
      Top = 443
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 221
        Height = 15
        Align = alTop
        Caption = 'ESTADO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 41
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
      object DBEdit8: TDBEdit
        Left = 0
        Top = 27
        Width = 217
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Estado'
        DataSource = dm.ds_pesq_professor
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 111
      Top = 294
      Width = 221
      Height = 49
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object Label1: TLabel
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
      object DBEdit3: TDBEdit
        Left = 0
        Top = 27
        Width = 213
        Height = 21
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CPF'
        DataSource = dm.ds_pesq_professor
        MaxLength = 14
        TabOrder = 1
      end
    end
    object Panel23: TPanel
      Left = 115
      Top = 552
      Width = 650
      Height = 1
      BevelOuter = bvNone
      Caption = 'Informa'#231#245'es do curso:'
      Color = clSilver
      ParentBackground = False
      TabOrder = 12
    end
    object Panel21: TPanel
      Left = 115
      Top = 592
      Width = 278
      Height = 316
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      object Label12: TLabel
        Left = 0
        Top = 0
        Width = 274
        Height = 15
        Align = alTop
        Caption = 'TURMAS ATIVAS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 80
      end
      object ListBox1: TListBox
        Left = 0
        Top = 15
        Width = 274
        Height = 297
        Align = alClient
        ItemHeight = 13
        Items.Strings = (
          '')
        TabOrder = 0
      end
    end
    object Panel19: TPanel
      Left = 487
      Top = 592
      Width = 278
      Height = 316
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 14
      object Label11: TLabel
        Left = 0
        Top = 0
        Width = 274
        Height = 15
        Align = alTop
        Caption = 'TURMAS DO PROFESSOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 121
      end
      object ListBox2: TListBox
        Left = 0
        Top = 15
        Width = 274
        Height = 297
        Align = alClient
        ItemHeight = 13
        Items.Strings = (
          '')
        TabOrder = 0
      end
    end
    object Panel20: TPanel
      Left = 425
      Top = 634
      Width = 33
      Height = 33
      BevelOuter = bvNone
      TabOrder = 15
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 33
        Height = 33
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
          00400806000000AA6971DE000000097048597300000B1300000B1301009A9C18
          000001E04944415478DAED9ACD2B445118C6CFFC0FECFD373EA6446285241121
          0BC55296130B16229452526287D8101B7664658185C6C267A1185FE3793BF796
          053BE73C677ACF53BF9A66A6E97D7E73EBDE73EECD18E5C9B00760270A600FC0
          4E14C01E809D28803D003B51007B0076A200F600ECB8105005E6401174810D76
          49DF022E4045F2FA03F4816976519F028ABFBC9703C37F7CA642806415B48017
          76699600C901A80537ECE22C0192339005A7ECF22C01927B5007F6B50A901440
          1B58D62A20FDEE2818D12A20CD2CE831F6BA41A500C91668044F5A05488E8D3D
          43E4B50A3049F96C2243A500C90368003B5A0548DE400758D42A20FD2DA7A7C9
          D005A459009DE05DAB00C9B6B10BA9825601927130A859C02D28D72CE00E9469
          16300106B40AD805D5E055A38015D0FADFE54B45C0A4B187BD93232B6401B237
          D00B665C140F5DC03368029B2ECB872AE0CAD8E5F091EBF2210A3849CA5FFA28
          1F9A00B9D6972DB1475FE54312300FBA8D83D55EE802546F8BCBB2B61D2CB1CA
          3305C8ADB17AB0C72CCF12700E6A8CD29BA387C6EEEA5CB38B3304AC8166A3F4
          0189313004BED8857D08F8F990D427E80753ECA23E05541AFB989CFCDB72C777
          9D5DD2B780924A14C01E809D28803D003B51007B0076A200F600EC4401EC01D8
          512FE01BC2497441674D91500000000049454E44AE426082}
        Proportional = True
        OnClick = Image1Click
        ExplicitLeft = 8
        ExplicitTop = 16
      end
    end
    object Panel22: TPanel
      Left = 425
      Top = 679
      Width = 33
      Height = 33
      BevelOuter = bvNone
      TabOrder = 16
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 33
        Height = 33
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
          00400806000000AA6971DE000000097048597300000B1300000B1301009A9C18
          000001E94944415478DAED9A4D2B05611886DFC3F1AD94101B0B1FB1B0934891
          521648494AB2502C744A16646B4B8962418A8458C957287FC60F90FFE07E9A99
          3AEB9379EF67CEF3DE75D599CD749F6B31EF3C4F9373C6936317602708601760
          2708601760270860176027086017602708601760270B0266C059DC750D7C5912
          500027A032BEFE065D1604548003B09376678D026AC03558F2D1599B8066F00C
          C67C75D624A01BBC833E9F9DB5081801AFA0D577670D0216C02DA86374660BD8
          02472E7AEA533AB304C8B92EE77B81DD9921A0113C80590D9D7D0BE8006F6050
          4B679F02065C74CC756AEAEC4BC02478044DDA3AFB10B00A2E4095C6CE690A90
          7BEFC5A8ED9C96806A70095652B8B77A01B5E0134CA470EF4C0890179CCD94FE
          7C2604FCBA68AC352BE007B458167008B62D0B909596CCF653560548F2E0146C
          581590A49479BFAC044816C18D8BDE0FD475F6350C8D8217F73FA7432605487A
          C007E8D5D4D9F742A4DD4527C49096CE8C955803B807731A3A3397A2C7AEB499
          A12C042431BB162FCE3CB803F5560548865DF4706CB32A40221F3EC8D6B8DFAA
          0089EC119EC0B85501129926AFC0B2550149AF7DB06B55401219A765ACCEC7D7
          663E922ACE34388F7FAF3B639FC9A59E20805D809D20805D809D20805D809D20
          805D809D20805D801DF302FE002DBE2C414F27F8960000000049454E44AE4260
          82}
        Proportional = True
        OnClick = Image2Click
        ExplicitLeft = 8
        ExplicitTop = 16
      end
    end
    object Panel24: TPanel
      Left = 440
      Top = 1112
      Width = 1
      Height = 105
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 17
    end
  end
  object ScrollBar1: TScrollBar
    Left = 867
    Top = 0
    Width = 17
    Height = 514
    Align = alRight
    Kind = sbVertical
    Max = 1266
    PageSize = 553
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
end
