object frm_turma_documento: Tfrm_turma_documento
  Left = 0
  Top = 0
  Caption = 'RELA'#199#195'O DA TURMA'
  ClientHeight = 728
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tr: TRLReport
    Left = 5
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dm.ds_matricula
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 94
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 113
        Top = 47
        Width = 60
        Height = 16
        Caption = 'NEWTIMES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLImage1: TRLImage
        Left = 24
        Top = 16
        Width = 70
        Height = 63
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
          0064080600000070E29554000000097048597300000EC400000EC401952B0E1B
          0000003A74455874436F6D6D656E740078723A643A4441466D34595871497638
          3A382C6A3A3136393239333134333132313431313137382C743A323331313034
          3135F9986249000004DF69545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C783A786D706D65746120786D6C6E733A783D2761646F62653A6E73
          3A6D6574612F273E0A20202020202020203C7264663A52444620786D6C6E733A
          7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32
          322D7264662D73796E7461782D6E7323273E0A0A20202020202020203C726466
          3A4465736372697074696F6E207264663A61626F75743D27270A202020202020
          2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72672F64632F65
          6C656D656E74732F312E312F273E0A20202020202020203C64633A7469746C65
          3E0A20202020202020203C7264663A416C743E0A20202020202020203C726466
          3A6C6920786D6C3A6C616E673D27782D64656661756C74273E44657369676E20
          73656D206E6F6D65202D20313C2F7264663A6C693E0A20202020202020203C2F
          7264663A416C743E0A20202020202020203C2F64633A7469746C653E0A202020
          20202020203C2F7264663A4465736372697074696F6E3E0A0A20202020202020
          203C7264663A4465736372697074696F6E207264663A61626F75743D27270A20
          20202020202020786D6C6E733A4174747269623D27687474703A2F2F6E732E61
          74747269627574696F6E2E636F6D2F6164732F312E302F273E0A202020202020
          20203C4174747269623A4164733E0A20202020202020203C7264663A5365713E
          0A20202020202020203C7264663A6C69207264663A7061727365547970653D27
          5265736F75726365273E0A20202020202020203C4174747269623A4372656174
          65643E323032332D31312D30343C2F4174747269623A437265617465643E0A20
          202020202020203C4174747269623A45787449643E31623131663665332D3631
          35312D343537302D626335302D3666353233336436633831613C2F4174747269
          623A45787449643E0A20202020202020203C4174747269623A466249643E3532
          353236353931343137393538303C2F4174747269623A466249643E0A20202020
          202020203C4174747269623A546F756368547970653E323C2F4174747269623A
          546F756368547970653E0A20202020202020203C2F7264663A6C693E0A202020
          20202020203C2F7264663A5365713E0A20202020202020203C2F417474726962
          3A4164733E0A20202020202020203C2F7264663A4465736372697074696F6E3E
          0A0A20202020202020203C7264663A4465736372697074696F6E207264663A61
          626F75743D27270A2020202020202020786D6C6E733A7064663D27687474703A
          2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A202020202020
          20203C7064663A417574686F723E44696F676F204C6F626F3C2F7064663A4175
          74686F723E0A20202020202020203C2F7264663A4465736372697074696F6E3E
          0A0A20202020202020203C7264663A4465736372697074696F6E207264663A61
          626F75743D27270A2020202020202020786D6C6E733A786D703D27687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F273E0A202020202020
          20203C786D703A43726561746F72546F6F6C3E43616E76613C2F786D703A4372
          6561746F72546F6F6C3E0A20202020202020203C2F7264663A44657363726970
          74696F6E3E0A20202020202020203C2F7264663A5244463E0A20202020202020
          203C2F783A786D706D6574613ED874DBAD00000AC64944415478DAED9C05A854
          4F1BC6C7EEC0EEEE041511B1BBBBBB0BECEEC2C4020B5B6CB1BBBB1354503050
          0CB03B31BEEFFB0DAC5CEFFFEEDE7977CFBAB3FFEF3C20E2F5CC3933F3CCBCF3
          BC3137C67FFE07E5C21AC47009B10B2E2196C125C432B88458069710CBE01262
          195C422C834B88657009B10C2E2196C125C432B88458069710CBE01262195C42
          2C834B88657009B10C2E2196C125C432FC6B08F9F0E1834A9830A18A152B56A8
          BB1210FE15843C7DFA54D5AC595355A952454D993245C58E1D3BD45DF21B614D
          085D7FFFFEBD6AD8B0A13A76EC98FED9902143D4E4C993C376A78435215FBF7E
          551D3B76541B366CF8E3E7C3870F5713274E0C4B52C29610BA3D74E8503563C6
          0C15D510468D1AA5C68D1B1776A4842D21F3E7CF577DFBF6553F7FFEF4FA0C84
          8C1E3D5AC58C1933D4DD35465812B265CB16D5BA756BF5EDDBB7689FC5748D18
          31226C48092B42E8EAB973E754AD5AB5D4BB77EFCC061823863EE8274C98A0E2
          C68D1BEA2144DFDF7022E4F6EDDBAA52A54AEAC99327E2B603060C5053A74E55
          71E2C409F5307C226C0879F5EA95AA58B1A2BA71E386DFEF183C78B09A346992
          D5A48405219F3F7F5675EBD655478F1E0DF85DC3860DD3E6CB5652AC27E4C78F
          1FAA5DBB766AFDFAF58EBD73E4C8915A81D9E8D15B4D085DE3409E356B96FAF5
          EB97A3EF1E33668C96C4B691623521F81AFDFBF757DFBF7F0FCAFBC78F1FAF77
          8B4DCEA3B584ECD8B143B569D3467DFCF831A8DF61A7E0A7C48B172FD443D6B0
          92900B172EE8E8ED9B376F8CDB64CD9A55152A5448EDD9B347FCBDDEBD7BEB10
          8C0D7E8A7584DCBB774FCBDB478F1E19B749962C993A78F0A026040180272F45
          BF7EFDD4B469D3424E8A5584BC7CF952E734AE5DBB66DC06F98A026BDCB8B1FE
          F7A74F9FB4A9DBBE7DBBF8FB36388FD610C244366DDA54EDDBB74FD40E53C344
          1222F180738758D7CE9D3BC5FD08B5F3680521F81A5DBB76552B57AE14B5EBD2
          A58B5AB06041949307292D5AB4F0EB4CC1792428190A496C0521E42E58951294
          2F5F5E4F76A24489BC3E439EBD59B3666AFFFEFDE23EA1BC90C57F9B144D082B
          943F11B7BD293804FD69E7C1C2850B559F3E7DF4F74D912B572E75FAF4699536
          6DDA689F25C5DBA4491375E8D02171DF701CC78E1D2BF2531887AF1C8D37B0CB
          49116842EEDEBDAB3A75EAA453A212B07AD8DA952B57167700B0C29B376FAECF
          0F53A44C99521D3F7E5C2B2A53404AA3468DD491234744FDCB9C39B3BA7EFDBA
          4A9E3CB9D1F3ECC80E1D3A881422489D3AB5DAB46993AE9AF96DB2981CB63781
          3C0952A448A1154DD9B26545ED40F7EEDDD5E2C58B8D9F8F1F3FBEDABA75ABF6
          51A4207FD2A041034DA60920E1C48913AA48912246CF134D68DBB6ADDAB871A3
          A85F499224D141D312254AE87FFF7186A04A3808BF7CF9227A29AB96B6A54B97
          16B57BFBF6AD5656870F1F8EF659CC2207788F1E3D44DF88FCBD7AF5EAA953A7
          4EF97C0E33BC7BF76E55B56A55A3F71267E31CA40449021618929D85F27B9C91
          0F75567BCB962DC5E62B55AA546AD7AE5DAA54A952A276E439B0F1D1ADDC8103
          076A1F21D04316EF1FE791098F0A10BF64C912D5B97367A3F7317D3CCF6E9780
          71E08822D9FFF87E542A4B92B38E086C21032D59B2A4A81D0E218EDDC99327A3
          FC7F5635A53E09122410BDD71B1817E6392A3F057525517C7BF7EED5E79364AE
          209DC80051EC7FFC9F37D9CB8720856D2E419A3469F479E4B189A678F1E2852E
          783B73E6CC1F3F2F5CB8B0DE3D9C554E8209641144F45318EF9A356B8CDF71F5
          EA5555AD5A35BDCB2540C844AE25F3C0A71FC26103FBA605051E204721B458B1
          62A2768F1F3FD68A8DDC39C89831A3DE353972E410BDC7149865C64774005182
          0A33F5D01F3E7CA8F3FBC4DE242857AE9C96E0DE6266D13A861CB8AC24A4A304
          E9D2A5D30E59D1A24545EDEEDFBFAF0FD3E7CF9FEB330907D014A822CCA5C4B4
          2160301FD3A74FD7414A13B04089B95DBE7C5934B67CF9F2E9058669F706234F
          FDC08103DAE64A49499F3EBD6E8BD991E0CE9D3BEAE6CD9BAA7EFDFAC66DA8ED
          E5AC21F7BE62C58AA0E53750549856699C0C537EFEFC79953D7B769FCF19874E
          D8D6D83E9C1F093264C8A043E3050B160CCA0401C8C3D451050F88F62E5BB6CC
          F1503A53852A9A33678EA81DE11D7686890917C5B25050486269168FB300BB99
          3F7F7E472708E015D7A8514393121148DBA54B973A1AB59D3B77AE0EF34880BC
          C595A85DBBB6D1F3E2E0225BB555AB56A27007C89429933E8FF2E6CDEBD80461
          CB235E45880C2A1C3D218940C1B8394B2531376253F3E6CD533D7BF6346EE357
          B477DBB66D3A4C2025254B962C7AA7E4C99327E0092254C15584B56BD7FA7C8E
          DD43B825101FE6D2A54BDA244ACC35BE06D5F952EFDDEFF03BCE2366411AFB22
          F7CD4E21621B083C57114CCA83D829F497508514C85B4242D2F255ACC8AA55AB
          C4152D01E5438809A1E3F1B4254069408ABFFE05B69C508AA43C08F585F992A8
          2F764499326574C457820A152A68C9EF8FD20B384185174D2C4AEAADE6CC9953
          4B62FE9600614100546A2E01329A68ACC944312D983B14A204050A14D0D106D3
          907D64389231C4A3276AFBFAF56BE336F828EC1206600A4215D5AB5717EFC888
          604713618D4E124B53030067F8ECD9B3D1FA1ABEE0580A97C9C57934A9A54A9A
          34A95EA9AC4053E0C1133722991628D8D1EBD6ADF32A893988A968944C0DBE06
          9182E2C58B07D4374773EA9820CC89AF80245290B46DB76EDD8CDF4B180579CB
          EA730A38B9AB57AFFE07292C141C4B89BCE5E04616231E0285E3450E78F4388F
          DE02922472281E30BD62868A6BDFBEBDDABC79B393DDD4A09F28214F8E858A49
          E4ADF47CF2E44F02A92DF0202855271CBCACB2C8A4906F5EB4689128A441A862
          F6ECD94E77F137F0A7887D3D78F0402B2A4FF8C5141442B0C09C200304AD0C88
          2DCC603D0149A42005D49C1F26A05B2470A89192980F7FC0E2B972E58ABA75EB
          96A81D3B97989993D5F341ADCB8214BC69D2BBC863949509E812268A014BF2FB
          A81B14983400EA0F4811B0C09CCA627A10F442396ECD264E9C581482C7967340
          4A6434BA9FEC1F9940FC8D6092C25890FA2C34A76145E56244206FC9C461D34D
          C1A18C8CC517024870FC8D6090423C0E799B2D5BB6A08CDF1A42E806F2B64E9D
          3AE24C1CD9BE418306FD71B022C1F1379CBCF0C32EE4BDD2220E09AC2184D5CC
          E12ACDC471D966E6CC99513A794870768D3F6196C8E0FD042889890513561082
          8A22AFCD9D420948FAE0C8F92AB84682E3044AA3D2914118850AFD60C30A4228
          18A31E4A72D396E209722BBE0A063C400DA1D8A4D5331E5070CD5DC4BFF1FB52
          424A089FA60E8A95272934234F8F8CCE9D3BB7711B5205946C4A941BE00E0A3B
          F76F5D750B2921CF9E3DD3072449205350AA43CD97B48E18A08E8889995E2625
          9849B6D19749741A2137594C2E9947937C0AAB74F9F2E5BAC2D05F907F471247
          57918949A4708E42F2BF89901302303F141044674EF87518D8F240E346F829A8
          2F6FA4E063E0F80592D7F017561002588D4C92377342B89E0A0EA7CA7AF02750
          5F910F7A4402BB565A9BEC14AC2104902E659222AF5CB284E4C3B9DCE224F053
          C8DF7802A0C4A5F0F823DED7F8DBB08A1010399F42711DE683F4683040FD302A
          8FEA7B8A277AF5EA15D2F15B4708C099E3E046DD787E43433071F1E2456D32F9
          F5B2A1869584006C3C26CA1F791BCEB09690FF57B88458069710CBE01262195C
          422C834B88657009B10C2E2196C125C432B88458069710CBE01262195C422C83
          4B88657009B10C2E2196C125C432B88458069710CBE0126219FE0B61A9422FFB
          184D560000000049454E44AE426082}
        Stretch = True
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 587
        Top = 25
        Width = 35
        Height = 16
        Caption = 'Data:'
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 587
        Top = 54
        Width = 35
        Height = 16
        Caption = 'Hora:'
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 623
        Top = 25
        Width = 39
        Height = 16
        Text = ''
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 623
        Top = 54
        Width = 39
        Height = 16
        Info = itHour
        Text = ''
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 113
        Top = 25
        Width = 199
        Height = 15
        Caption = 'ESTADO DE SANTA CATARINA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 132
      Width = 718
      Height = 181
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object Label1: TLabel
        Left = 318
        Top = 86
        Width = 54
        Height = 19
        Caption = 'Turma:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 138
        Width = 38
        Height = 16
        Caption = 'Curso:'
      end
      object Label3: TLabel
        Left = 278
        Top = 138
        Width = 36
        Height = 16
        Caption = 'Turno:'
      end
      object Label4: TLabel
        Left = 480
        Top = 138
        Width = 70
        Height = 16
        Caption = 'Modalidade:'
      end
      object Label10: TLabel
        Left = 206
        Top = 36
        Width = 305
        Height = 22
        Caption = 'RELAT'#211'RIO DE ALUNOS/ TURMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 373
        Top = 86
        Width = 48
        Height = 18
        DataField = 'Turma'
        DataSource = dm.ds_matricula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 80
        Top = 138
        Width = 38
        Height = 16
        DataField = 'Nome_1'
        DataSource = dm.ds_matricula
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 316
        Top = 138
        Width = 36
        Height = 16
        DataField = 'Turno'
        DataSource = dm.ds_matricula
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 554
        Top = 138
        Width = 52
        Height = 16
        DataField = 'Formato'
        DataSource = dm.ds_matricula
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 313
      Width = 718
      Height = 24
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object Label5: TLabel
        Left = 101
        Top = 5
        Width = 37
        Height = 16
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 408
        Top = 5
        Width = 83
        Height = 16
        Caption = 'Data de Nasc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 509
        Top = 5
        Width = 56
        Height = 16
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 5
        Width = 59
        Height = 16
        Caption = 'Matr'#237'cula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 583
        Top = 5
        Width = 112
        Height = 16
        Caption = 'Data da Matr'#237'cula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel4: TRLPanel
        Left = 397
        Top = 0
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel1: TRLPanel
        Left = 93
        Top = -26
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel2: TRLPanel
        Left = 501
        Top = -26
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel3: TRLPanel
        Left = 575
        Top = -26
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 337
      Width = 718
      Height = 26
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLPanel5: TRLPanel
        Left = 93
        Top = -24
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel6: TRLPanel
        Left = 397
        Top = -24
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel7: TRLPanel
        Left = 501
        Top = -24
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel8: TRLPanel
        Left = 575
        Top = -24
        Width = 1
        Height = 50
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 24
        Top = 5
        Width = 14
        Height = 16
        DataField = 'id'
        DataSource = dm.ds_matricula
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 101
        Top = 5
        Width = 95
        Height = 16
        DataField = 'nome'
        DataSource = dm.ds_matricula
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 408
        Top = 5
        Width = 64
        Height = 16
        DataField = 'data_nasc'
        DataSource = dm.ds_matricula
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 509
        Top = 5
        Width = 132
        Height = 16
        DataField = 'SituacaoMatricula'
        DataSource = dm.ds_matricula
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 583
        Top = 3
        Width = 108
        Height = 16
        DataField = 'DataMatricula'
        DataSource = dm.ds_matricula
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 363
      Width = 718
      Height = 26
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object Label11: TLabel
        Left = 24
        Top = 5
        Width = 125
        Height = 16
        Caption = 'TOTAL DE ALUNOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 160
        Top = 5
        Width = 28
        Height = 16
        Caption = '1000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
