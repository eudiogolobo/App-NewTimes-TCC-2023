object dm: Tdm
  OldCreateOrder = False
  Height = 684
  Width = 1077
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=escola'
      'User_Name=root'
      'MonitorBy=3306'
      'DriverID=MySQL')
    Connected = True
    Left = 24
    Top = 32
  end
  object qalunos: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ALUNOS'
      '')
    Left = 88
    Top = 312
    object qalunosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qalunosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qalunossexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qalunosestado_civil: TStringField
      FieldName = 'estado_civil'
      Origin = 'estado_civil'
      Required = True
      FixedChar = True
      Size = 13
    end
    object qalunosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 100
    end
    object qalunosdata_nasc: TDateField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
    object qalunoscor_raca: TStringField
      FieldName = 'cor_raca'
      Origin = 'cor_raca'
      Required = True
      FixedChar = True
      Size = 13
    end
    object qalunosnacionalidade: TStringField
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Required = True
      Size = 100
    end
    object qalunosnaturalidade: TStringField
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Required = True
      Size = 100
    end
    object qalunoscelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
    end
    object qalunostelresidencial: TStringField
      FieldName = 'telresidencial'
      Origin = 'telresidencial'
      Required = True
    end
  end
  object tbalunos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateTableName = 'alunos'
    UpdateOptions.KeyFields = 'id'
    TableName = 'alunos'
    Left = 24
    Top = 312
    object tbalunosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbalunosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbalunossexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object tbalunosestado_civil: TStringField
      FieldName = 'estado_civil'
      Origin = 'estado_civil'
      Required = True
      FixedChar = True
      Size = 13
    end
    object tbalunosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 100
    end
    object tbalunosdata_nasc: TDateField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
    object tbalunoscor_raca: TStringField
      FieldName = 'cor_raca'
      Origin = 'cor_raca'
      Required = True
      FixedChar = True
      Size = 13
    end
    object tbalunosnacionalidade: TStringField
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Required = True
      Size = 100
    end
    object tbalunosnaturalidade: TStringField
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Required = True
      Size = 100
    end
    object tbalunoscelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
    end
    object tbalunostelresidencial: TStringField
      FieldName = 'telresidencial'
      Origin = 'telresidencial'
      Required = True
    end
  end
  object tbcursos: TFDTable
    Active = True
    IndexFieldNames = 'CursosId'
    Connection = FDConnection1
    TableName = 'escola.cursos'
    Left = 372
    Top = 312
    object tbcursosCursosId: TFDAutoIncField
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ReadOnly = True
    end
    object tbcursosNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object tbcursosFormato: TStringField
      FieldName = 'Formato'
      Origin = 'Formato'
      Required = True
      FixedChar = True
      Size = 14
    end
    object tbcursosCargaHoraria: TStringField
      FieldName = 'CargaHoraria'
      Origin = 'CargaHoraria'
      Required = True
    end
    object tbcursosConteudo: TStringField
      FieldName = 'Conteudo'
      Origin = 'Conteudo'
      Required = True
      Size = 200
    end
    object tbcursosRequisitos: TStringField
      FieldName = 'Requisitos'
      Origin = 'Requisitos'
      Required = True
      Size = 200
    end
    object tbcursosModulos: TIntegerField
      FieldName = 'Modulos'
      Origin = 'Modulos'
      Required = True
    end
    object tbcursosMetodologia: TStringField
      FieldName = 'Metodologia'
      Origin = 'Metodologia'
      Required = True
      Size = 50
    end
    object tbcursosArea: TStringField
      FieldName = 'Area'
      Origin = 'Area'
      Required = True
      Size = 12
    end
    object tbcursosNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'Nivel'
      Required = True
      Size = 8
    end
    object tbcursosIdioma: TStringField
      FieldName = 'Idioma'
      Origin = 'Idioma'
      Required = True
      Size = 50
    end
    object tbcursosValorTotal: TSingleField
      FieldName = 'ValorTotal'
      Origin = 'ValorTotal'
      Required = True
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'E:\DIOGO\ProjetoTCC\ESCOLAV\lib\libmySQL.dll'
    Left = 72
    Top = 144
  end
  object dsalunos: TDataSource
    DataSet = tbalunos
    Left = 24
    Top = 360
  end
  object ds_alunosconslu: TDataSource
    DataSet = qconsulta
    Left = 96
    Top = 360
  end
  object ds_cursos: TDataSource
    DataSet = tbcursos
    Left = 372
    Top = 360
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 76
    Top = 632
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 12
    Top = 632
  end
  object qusuarios: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 72
    Top = 200
    object qusuariosid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qusuariosnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object qusuarioslogin: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Login'
      DisplayWidth = 37
      FieldName = 'login'
      Origin = 'login'
      Size = 50
    end
    object qusuariossenha: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'senha'
      Origin = 'senha'
      Visible = False
    end
    object qusuariosTipo: TStringField
      DisplayWidth = 56
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qusuariosProfessorCod: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      Visible = False
    end
  end
  object qcursos: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *from cursos')
    Left = 428
    Top = 360
    object qcursosCursosId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qcursosNome: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object qcursosFormato: TStringField
      DisplayWidth = 17
      FieldName = 'Formato'
      Origin = 'Formato'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qcursosCargaHoraria: TStringField
      DisplayWidth = 20
      FieldName = 'CargaHoraria'
      Origin = 'CargaHoraria'
      Required = True
    end
    object qcursosConteudo: TStringField
      DisplayWidth = 200
      FieldName = 'Conteudo'
      Origin = 'Conteudo'
      Required = True
      Visible = False
      Size = 200
    end
    object qcursosRequisitos: TStringField
      DisplayWidth = 200
      FieldName = 'Requisitos'
      Origin = 'Requisitos'
      Required = True
      Visible = False
      Size = 200
    end
    object qcursosModulos: TIntegerField
      DisplayWidth = 10
      FieldName = 'Modulos'
      Origin = 'Modulos'
      Required = True
    end
    object qcursosMetodologia: TStringField
      DisplayWidth = 50
      FieldName = 'Metodologia'
      Origin = 'Metodologia'
      Required = True
      Size = 50
    end
    object qcursosArea: TStringField
      DisplayWidth = 50
      FieldName = 'Area'
      Origin = 'Area'
      Required = True
      Size = 12
    end
    object qcursosNivel: TStringField
      DisplayWidth = 50
      FieldName = 'Nivel'
      Origin = 'Nivel'
      Required = True
      Size = 8
    end
    object qcursosIdioma: TStringField
      DisplayWidth = 50
      FieldName = 'Idioma'
      Origin = 'Idioma'
      Required = True
      Size = 50
    end
    object qcursosValorTotal: TSingleField
      DisplayWidth = 10
      FieldName = 'ValorTotal'
      Origin = 'ValorTotal'
      Required = True
    end
  end
  object dconcur: TDataSource
    DataSet = qcursos
    Left = 428
    Top = 312
  end
  object dsuser: TDataSource
    DataSet = tbuser
    Left = 80
    Top = 248
  end
  object tbuser: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'usuarios'
    TableName = 'usuarios'
    Left = 16
    Top = 200
    object tbuserid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbusernome: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 44
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbuserlogin: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 37
      FieldName = 'login'
      Origin = 'login'
      Size = 50
    end
    object tbusersenha: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'senha'
      Origin = 'senha'
    end
    object tbuserTipo: TStringField
      DisplayWidth = 9
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object tbuserProfessorCod: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
    end
  end
  object ds_usercon: TDataSource
    DataSet = qusuarios
    Left = 16
    Top = 248
  end
  object qpi: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select nome from alunos')
    Left = 584
    Top = 56
    object qpinome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
  end
  object dspi: TDataSource
    DataSet = qpi
    Left = 584
    Top = 112
  end
  object dsturma: TDataSource
    DataSet = tbturma
    Left = 364
    Top = 240
  end
  object qturmas: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a' +
        '.DataFinal, a.status, b.CursosId, b.Nome'
      'from turmas as a, cursos as b'
      'where a.CursoCod = b.CursosId')
    Left = 364
    Top = 192
    object qturmasid_turmas: TFDAutoIncField
      DisplayWidth = 8
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qturmasCursoCod: TIntegerField
      DisplayWidth = 10
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      Required = True
      Visible = False
    end
    object qturmasTurma: TStringField
      DisplayWidth = 21
      FieldName = 'Turma'
      Origin = 'Turma'
      Required = True
      Size = 10
    end
    object qturmasNome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Curso'
      DisplayWidth = 38
      FieldName = 'Nome'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qturmasTurno: TStringField
      DisplayWidth = 26
      FieldName = 'Turno'
      Origin = 'Turno'
      Required = True
      Size = 10
    end
    object qturmasDataInicio: TDateField
      DisplayLabel = 'Data De In'#237'cio'
      DisplayWidth = 17
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      Required = True
    end
    object qturmasDataFinal: TDateField
      DisplayLabel = 'Data De Conclus'#227'o'
      DisplayWidth = 19
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      Required = True
    end
    object qturmasstatus: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 13
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 7
    end
    object qturmasCursosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object tbturma: TFDTable
    Active = True
    IndexFieldNames = 'id_turmas'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'turmas'
    TableName = 'turmas'
    Left = 420
    Top = 192
    object tbturmaid_turmas: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbturmaCursoCod: TIntegerField
      DisplayWidth = 9
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      Required = True
    end
    object tbturmaTurma: TStringField
      DisplayWidth = 10
      FieldName = 'Turma'
      Origin = 'Turma'
      Required = True
      Size = 10
    end
    object tbturmaTurno: TStringField
      DisplayWidth = 15
      FieldName = 'Turno'
      Origin = 'Turno'
      Required = True
      Size = 10
    end
    object tbturmaDataInicio: TDateField
      DisplayWidth = 14
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      Required = True
    end
    object tbturmaDataFinal: TDateField
      DisplayWidth = 12
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      Required = True
    end
    object tbturmastatus: TStringField
      DisplayWidth = 14
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 7
    end
  end
  object ds_pturma: TDataSource
    DataSet = qturmas
    Left = 428
    Top = 248
  end
  object qpesquisa: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pesquisa')
    Left = 160
    Top = 24
    object qpesquisaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qpesquisanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
  end
  object tbavaliacao: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'avaliacao'
    TableName = 'avaliacao'
    Left = 360
    Top = 40
    object tbavaliacaoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbavaliacaoProfessorCod: TIntegerField
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      Required = True
    end
    object tbavaliacaoTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
    end
    object tbavaliacaoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Required = True
      FixedChar = True
      Size = 18
    end
    object tbavaliacaoModuloRef: TIntegerField
      FieldName = 'ModuloRef'
      Origin = 'ModuloRef'
      Required = True
    end
    object tbavaliacaoTotalAulas: TIntegerField
      FieldName = 'TotalAulas'
      Origin = 'TotalAulas'
      Required = True
    end
    object tbavaliacaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
    object tbavaliacaodata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object tbavaliacaohora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
    end
  end
  object qavaliacao: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.Nome, b.id_turmas,b.Turma, c.id,c.ProfessorCod,c.' +
        'TurmaCod, c.Tipo, c.ModuloRef, c.TotalAulas,c.Descricao, c.data,' +
        ' c.hora'
      'from professores as a, turmas as b, avaliacao as c'
      'where c.ProfessorCod = a.id and c.TurmaCod = b.id_turmas')
    Left = 432
    Top = 40
    object qavaliacaoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qavaliacaoNome: TStringField
      DisplayLabel = 'Professor(a)'
      DisplayWidth = 50
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object qavaliacaoid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qavaliacaoTurma: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qavaliacaoid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qavaliacaoProfessorCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qavaliacaoTurmaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qavaliacaoTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'Tipo'
      Origin = 'Tipo'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qavaliacaoModuloRef: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#243'dulo'
      DisplayWidth = 10
      FieldName = 'ModuloRef'
      Origin = 'ModuloRef'
      ProviderFlags = []
      ReadOnly = True
    end
    object qavaliacaoTotalAulas: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total De Aulas'
      DisplayWidth = 15
      FieldName = 'TotalAulas'
      Origin = 'TotalAulas'
      ProviderFlags = []
      ReadOnly = True
    end
    object qavaliacaoDescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qavaliacaodata: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = []
      ReadOnly = True
    end
    object qavaliacaohora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object ds_avaliacao: TDataSource
    DataSet = qavaliacao
    Left = 432
    Top = 88
  end
  object ds_tbavaliacao: TDataSource
    DataSet = tbavaliacao
    Left = 360
    Top = 96
  end
  object tbendereco: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'escola.endereco'
    Left = 28
    Top = 480
    object tbenderecoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbenderecoAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object tbenderecocep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
    end
    object tbenderecopais: TStringField
      FieldName = 'pais'
      Origin = 'pais'
      Required = True
      Size = 50
    end
    object tbenderecoestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Required = True
      Size = 50
    end
    object tbenderecomunicipio: TStringField
      FieldName = 'municipio'
      Origin = 'municipio'
      Required = True
      Size = 50
    end
    object tbenderecotp_log: TStringField
      FieldName = 'tp_log'
      Origin = 'tp_log'
      Required = True
      Size = 50
    end
    object tbenderecolog: TStringField
      FieldName = 'log'
      Origin = 'log'
      Required = True
      Size = 50
    end
    object tbendereconumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object tbenderecocomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Required = True
    end
    object tbenderecopt_ref: TStringField
      FieldName = 'pt_ref'
      Origin = 'pt_ref'
      Required = True
    end
    object tbenderecobairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
    end
    object tbenderecotp_mora: TStringField
      FieldName = 'tp_mora'
      Origin = 'tp_mora'
      Required = True
    end
    object tbenderecozona: TStringField
      FieldName = 'zona'
      Origin = 'zona'
      Required = True
      Size = 6
    end
  end
  object tbdocumentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'documentos'
    Left = 132
    Top = 480
    object tbdocumentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbdocumentosAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object tbdocumentoscpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
    object tbdocumentosrg: TIntegerField
      FieldName = 'rg'
      Origin = 'rg'
      Required = True
    end
    object tbdocumentosem: TStringField
      FieldName = 'em'
      Origin = 'em'
      Required = True
    end
    object tbdocumentosoe: TStringField
      FieldName = 'oe'
      Origin = 'oe'
      Required = True
    end
    object tbdocumentosdt_ex: TDateField
      FieldName = 'dt_ex'
      Origin = 'dt_ex'
      Required = True
    end
    object tbdocumentoscn: TIntegerField
      FieldName = 'cn'
      Origin = 'cn'
      Required = True
    end
    object tbdocumentoslivro: TIntegerField
      FieldName = 'livro'
      Origin = 'livro'
      Required = True
    end
    object tbdocumentosfolha: TIntegerField
      FieldName = 'folha'
      Origin = 'folha'
      Required = True
    end
    object tbdocumentosdt_ex2: TDateField
      FieldName = 'dt_ex2'
      Origin = 'dt_ex2'
      Required = True
    end
    object tbdocumentosnis: TIntegerField
      FieldName = 'nis'
      Origin = 'nis'
      Required = True
    end
    object tbdocumentosde: TIntegerField
      FieldName = 'de'
      Origin = 'de'
      Required = True
    end
    object tbdocumentostpdoc: TStringField
      FieldName = 'tpdoc'
      Origin = 'tpdoc'
      Required = True
      Size = 30
    end
  end
  object tbinfocomp: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'documentos'
    Left = 468
    Top = 480
    object tbinfocompid: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbinfocompAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Required = True
    end
    object tbinfocompcpf: TStringField
      FieldName = 'cpf'
      Required = True
    end
    object tbinfocomprg: TIntegerField
      FieldName = 'rg'
      Required = True
    end
    object tbinfocompem: TStringField
      FieldName = 'em'
      Required = True
    end
    object tbinfocompoe: TStringField
      FieldName = 'oe'
      Required = True
    end
    object tbinfocompdt_ex: TDateField
      FieldName = 'dt_ex'
      Required = True
    end
    object tbinfocompcn: TIntegerField
      FieldName = 'cn'
      Required = True
    end
    object tbinfocomplivro: TIntegerField
      FieldName = 'livro'
      Required = True
    end
    object tbinfocompfolha: TIntegerField
      FieldName = 'folha'
      Required = True
    end
    object tbinfocompdt_ex2: TDateField
      FieldName = 'dt_ex2'
      Required = True
    end
    object tbinfocompnis: TIntegerField
      FieldName = 'nis'
      Required = True
    end
    object tbinfocompde: TIntegerField
      FieldName = 'de'
      Required = True
    end
    object tbinfocomptpdoc: TStringField
      FieldName = 'tpdoc'
      Required = True
      Size = 30
    end
  end
  object tbresponsaveis: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'responsaveis'
    Left = 260
    Top = 480
    object tbresponsaveisid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbresponsaveisAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object tbresponsaveisf1: TStringField
      FieldName = 'f1'
      Origin = 'f1'
      Required = True
      Size = 50
    end
    object tbresponsaveisf1falecido: TStringField
      FieldName = 'f1falecido'
      Origin = 'f1falecido'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbresponsaveisf1id: TStringField
      FieldName = 'f1id'
      Origin = 'f1id'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbresponsaveisf1cpf: TStringField
      FieldName = 'f1cpf'
      Origin = 'f1cpf'
      Required = True
    end
    object tbresponsaveisf1nasc: TDateField
      FieldName = 'f1nasc'
      Origin = 'f1nasc'
      Required = True
    end
    object tbresponsaveisf1email: TStringField
      FieldName = 'f1email'
      Origin = 'f1email'
      Required = True
      Size = 50
    end
    object tbresponsaveisf1ddd: TStringField
      FieldName = 'f1ddd'
      Origin = 'f1ddd'
      Required = True
      Size = 4
    end
    object tbresponsaveisf1cell: TStringField
      FieldName = 'f1cell'
      Origin = 'f1cell'
      Required = True
    end
    object tbresponsaveisf2: TStringField
      FieldName = 'f2'
      Origin = 'f2'
      Required = True
      Size = 50
    end
    object tbresponsaveisf2falecido: TStringField
      FieldName = 'f2falecido'
      Origin = 'f2falecido'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbresponsaveisf2id: TStringField
      FieldName = 'f2id'
      Origin = 'f2id'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbresponsaveisf2cpf: TStringField
      FieldName = 'f2cpf'
      Origin = 'f2cpf'
      Required = True
    end
    object tbresponsaveisf2nasc: TDateField
      FieldName = 'f2nasc'
      Origin = 'f2nasc'
      Required = True
    end
    object tbresponsaveisf2email: TStringField
      FieldName = 'f2email'
      Origin = 'f2email'
      Required = True
      Size = 50
    end
    object tbresponsaveisf2ddd: TStringField
      FieldName = 'f2ddd'
      Origin = 'f2ddd'
      Required = True
      Size = 4
    end
    object tbresponsaveisf2cell: TStringField
      FieldName = 'f2cell'
      Origin = 'f2cell'
      Required = True
    end
    object tbresponsaveisresplegal: TStringField
      FieldName = 'resplegal'
      Origin = 'resplegal'
      Required = True
      Size = 50
    end
    object tbresponsaveislegalcpf: TStringField
      FieldName = 'legalcpf'
      Origin = 'legalcpf'
      Required = True
    end
    object tbresponsaveislegalemail: TStringField
      FieldName = 'legalemail'
      Origin = 'legalemail'
      Required = True
      Size = 50
    end
    object tbresponsaveislegalddd: TStringField
      FieldName = 'legalddd'
      Origin = 'legalddd'
      Required = True
      Size = 4
    end
    object tbresponsaveislegalcell: TStringField
      FieldName = 'legalcell'
      Origin = 'legalcell'
      Required = True
    end
    object tbresponsaveisparente: TStringField
      FieldName = 'parente'
      Origin = 'parente'
      Required = True
      Size = 50
    end
    object tbresponsaveisparenteddd: TStringField
      FieldName = 'parenteddd'
      Origin = 'parenteddd'
      Required = True
      Size = 4
    end
    object tbresponsaveisparentecell: TStringField
      FieldName = 'parentecell'
      Origin = 'parentecell'
      Required = True
    end
  end
  object tbsaude: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'saude'
    Left = 364
    Top = 480
    object tbsaudeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbsaudeAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object tbsaudeespecial: TStringField
      FieldName = 'especial'
      Origin = 'especial'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudetiposanguineo: TStringField
      FieldName = 'tiposanguineo'
      Origin = 'tiposanguineo'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tbsaudeplanosaude: TStringField
      FieldName = 'planosaude'
      Origin = 'planosaude'
      Required = True
    end
    object tbsaudefatorsanguineo: TStringField
      FieldName = 'fatorsanguineo'
      Origin = 'fatorsanguineo'
      Required = True
      FixedChar = True
      Size = 8
    end
    object tbsaudeintlactose: TStringField
      FieldName = 'intlactose'
      Origin = 'intlactose'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudeintgluten: TStringField
      FieldName = 'intgluten'
      Origin = 'intgluten'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudehipertencao: TStringField
      FieldName = 'hipertencao'
      Origin = 'hipertencao'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudediabetes: TStringField
      FieldName = 'diabetes'
      Origin = 'diabetes'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudealergiapcdinsetos: TStringField
      FieldName = 'alergiapcdinsetos'
      Origin = 'alergiapcdinsetos'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudealergiachocolate: TStringField
      FieldName = 'alergiachocolate'
      Origin = 'alergiachocolate'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudealergiaovo: TStringField
      FieldName = 'alergiaovo'
      Origin = 'alergiaovo'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudealergiapeloanimal: TStringField
      FieldName = 'alergiapeloanimal'
      Origin = 'alergiapeloanimal'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudealergiapoeira: TStringField
      FieldName = 'alergiapoeira'
      Origin = 'alergiapoeira'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsauderinite: TStringField
      FieldName = 'rinite'
      Origin = 'rinite'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudeoutros: TStringField
      FieldName = 'outros'
      Origin = 'outros'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbsaudeoutrasobs: TStringField
      FieldName = 'outrasobs'
      Origin = 'outrasobs'
      Required = True
      Size = 500
    end
    object tbsaudeusomedicamentos: TStringField
      FieldName = 'usomedicamentos'
      Origin = 'usomedicamentos'
      Required = True
      Size = 500
    end
    object tbsaudegpcovid: TStringField
      FieldName = 'gpcovid'
      Origin = 'gpcovid'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object tbanexo: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'escola.anexo_documentos'
    Left = 564
    Top = 488
    object tbanexoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbanexoAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object tbanexorg: TBlobField
      FieldName = 'rg'
      Origin = 'rg'
      Required = True
    end
    object tbanexocpf: TBlobField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
    object tbanexocertidaonasc: TBlobField
      FieldName = 'certidaonasc'
      Origin = 'certidaonasc'
      Required = True
    end
    object tbanexofotopessoal: TBlobField
      FieldName = 'fotopessoal'
      Origin = 'fotopessoal'
      Required = True
    end
    object tbanexocompresidencia: TBlobField
      FieldName = 'compresidencia'
      Origin = 'compresidencia'
      Required = True
    end
    object tbanexocrtvacina: TBlobField
      FieldName = 'crtvacina'
      Origin = 'crtvacina'
      Required = True
    end
  end
  object qconsulta: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select a.id,a.nome,a.data_nasc,a.sexo,b.AlunoCod,b.cpf,b.rg '
      'From alunos as a,documentos as b'
      'Where'
      'a.id = b.AlunoCod ;')
    Left = 144
    Top = 312
    object qconsultaid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qconsultanome: TStringField
      DisplayLabel = 'Nome Da Pessoa'
      DisplayWidth = 64
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qconsultadata_nasc: TDateField
      DisplayLabel = 'Data De Nascimento'
      DisplayWidth = 19
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
    object qconsultasexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 17
      FieldName = 'sexo'
      Origin = 'sexo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qconsultaAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qconsultacpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      DisplayWidth = 20
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object qconsultarg: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG'
      DisplayWidth = 17
      FieldName = 'rg'
      Origin = 'rg'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qendereco: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from endereco;')
    Left = 24
    Top = 536
    object qenderecoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qenderecoAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qenderecocep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
    end
    object qenderecopais: TStringField
      FieldName = 'pais'
      Origin = 'pais'
      Required = True
      Size = 50
    end
    object qenderecoestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Required = True
      Size = 50
    end
    object qenderecomunicipio: TStringField
      FieldName = 'municipio'
      Origin = 'municipio'
      Required = True
      Size = 50
    end
    object qenderecotp_log: TStringField
      FieldName = 'tp_log'
      Origin = 'tp_log'
      Required = True
      Size = 50
    end
    object qenderecolog: TStringField
      FieldName = 'log'
      Origin = 'log'
      Required = True
      Size = 50
    end
    object qendereconumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object qenderecocomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Required = True
    end
    object qenderecopt_ref: TStringField
      FieldName = 'pt_ref'
      Origin = 'pt_ref'
      Required = True
    end
    object qenderecobairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
    end
    object qenderecotp_mora: TStringField
      FieldName = 'tp_mora'
      Origin = 'tp_mora'
      Required = True
    end
    object qenderecozona: TStringField
      FieldName = 'zona'
      Origin = 'zona'
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object qanexo: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from anexo_documentos')
    Left = 560
    Top = 536
    object qanexoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qanexoAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qanexorg: TBlobField
      FieldName = 'rg'
      Origin = 'rg'
      Required = True
    end
    object qanexocpf: TBlobField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
    object qanexocertidaonasc: TBlobField
      FieldName = 'certidaonasc'
      Origin = 'certidaonasc'
      Required = True
    end
    object qanexofotopessoal: TBlobField
      FieldName = 'fotopessoal'
      Origin = 'fotopessoal'
      Required = True
    end
    object qanexocompresidencia: TBlobField
      FieldName = 'compresidencia'
      Origin = 'compresidencia'
      Required = True
    end
    object qanexocrtvacina: TBlobField
      FieldName = 'crtvacina'
      Origin = 'crtvacina'
      Required = True
    end
  end
  object qdocumentos: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from documentos')
    Left = 128
    Top = 536
    object qdocumentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qdocumentosAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qdocumentoscpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
    object qdocumentosrg: TIntegerField
      FieldName = 'rg'
      Origin = 'rg'
      Required = True
    end
    object qdocumentosem: TStringField
      FieldName = 'em'
      Origin = 'em'
      Required = True
    end
    object qdocumentosoe: TStringField
      FieldName = 'oe'
      Origin = 'oe'
      Required = True
    end
    object qdocumentosdt_ex: TDateField
      FieldName = 'dt_ex'
      Origin = 'dt_ex'
      Required = True
    end
    object qdocumentoscn: TIntegerField
      FieldName = 'cn'
      Origin = 'cn'
      Required = True
    end
    object qdocumentoslivro: TIntegerField
      FieldName = 'livro'
      Origin = 'livro'
      Required = True
    end
    object qdocumentosfolha: TIntegerField
      FieldName = 'folha'
      Origin = 'folha'
      Required = True
    end
    object qdocumentosdt_ex2: TDateField
      FieldName = 'dt_ex2'
      Origin = 'dt_ex2'
      Required = True
    end
    object qdocumentosnis: TIntegerField
      FieldName = 'nis'
      Origin = 'nis'
      Required = True
    end
    object qdocumentosde: TIntegerField
      FieldName = 'de'
      Origin = 'de'
      Required = True
    end
    object qdocumentostpdoc: TStringField
      FieldName = 'tpdoc'
      Origin = 'tpdoc'
      Required = True
      Size = 30
    end
  end
  object qresponsaveis: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from responsaveis')
    Left = 256
    Top = 536
    object qresponsaveisid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qresponsaveisAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qresponsaveisf1: TStringField
      FieldName = 'f1'
      Origin = 'f1'
      Required = True
      Size = 50
    end
    object qresponsaveisf1falecido: TStringField
      FieldName = 'f1falecido'
      Origin = 'f1falecido'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qresponsaveisf1id: TStringField
      FieldName = 'f1id'
      Origin = 'f1id'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qresponsaveisf1cpf: TStringField
      FieldName = 'f1cpf'
      Origin = 'f1cpf'
      Required = True
    end
    object qresponsaveisf1nasc: TDateField
      FieldName = 'f1nasc'
      Origin = 'f1nasc'
      Required = True
    end
    object qresponsaveisf1email: TStringField
      FieldName = 'f1email'
      Origin = 'f1email'
      Required = True
      Size = 50
    end
    object qresponsaveisf1ddd: TStringField
      FieldName = 'f1ddd'
      Origin = 'f1ddd'
      Required = True
      Size = 4
    end
    object qresponsaveisf1cell: TStringField
      FieldName = 'f1cell'
      Origin = 'f1cell'
      Required = True
    end
    object qresponsaveisf2: TStringField
      FieldName = 'f2'
      Origin = 'f2'
      Required = True
      Size = 50
    end
    object qresponsaveisf2falecido: TStringField
      FieldName = 'f2falecido'
      Origin = 'f2falecido'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qresponsaveisf2id: TStringField
      FieldName = 'f2id'
      Origin = 'f2id'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qresponsaveisf2cpf: TStringField
      FieldName = 'f2cpf'
      Origin = 'f2cpf'
      Required = True
    end
    object qresponsaveisf2nasc: TDateField
      FieldName = 'f2nasc'
      Origin = 'f2nasc'
      Required = True
    end
    object qresponsaveisf2email: TStringField
      FieldName = 'f2email'
      Origin = 'f2email'
      Required = True
      Size = 50
    end
    object qresponsaveisf2ddd: TStringField
      FieldName = 'f2ddd'
      Origin = 'f2ddd'
      Required = True
      Size = 4
    end
    object qresponsaveisf2cell: TStringField
      FieldName = 'f2cell'
      Origin = 'f2cell'
      Required = True
    end
    object qresponsaveisresplegal: TStringField
      FieldName = 'resplegal'
      Origin = 'resplegal'
      Required = True
      Size = 50
    end
    object qresponsaveislegalcpf: TStringField
      FieldName = 'legalcpf'
      Origin = 'legalcpf'
      Required = True
    end
    object qresponsaveislegalemail: TStringField
      FieldName = 'legalemail'
      Origin = 'legalemail'
      Required = True
      Size = 50
    end
    object qresponsaveislegalddd: TStringField
      FieldName = 'legalddd'
      Origin = 'legalddd'
      Required = True
      Size = 4
    end
    object qresponsaveislegalcell: TStringField
      FieldName = 'legalcell'
      Origin = 'legalcell'
      Required = True
    end
    object qresponsaveisparente: TStringField
      FieldName = 'parente'
      Origin = 'parente'
      Required = True
      Size = 50
    end
    object qresponsaveisparenteddd: TStringField
      FieldName = 'parenteddd'
      Origin = 'parenteddd'
      Required = True
      Size = 4
    end
    object qresponsaveisparentecell: TStringField
      FieldName = 'parentecell'
      Origin = 'parentecell'
      Required = True
    end
  end
  object qsaude: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from saude')
    Left = 368
    Top = 536
    object qsaudeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qsaudeAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qsaudeespecial: TStringField
      FieldName = 'especial'
      Origin = 'especial'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudetiposanguineo: TStringField
      FieldName = 'tiposanguineo'
      Origin = 'tiposanguineo'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qsaudeplanosaude: TStringField
      FieldName = 'planosaude'
      Origin = 'planosaude'
      Required = True
    end
    object qsaudefatorsanguineo: TStringField
      FieldName = 'fatorsanguineo'
      Origin = 'fatorsanguineo'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qsaudeintlactose: TStringField
      FieldName = 'intlactose'
      Origin = 'intlactose'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudeintgluten: TStringField
      FieldName = 'intgluten'
      Origin = 'intgluten'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudehipertencao: TStringField
      FieldName = 'hipertencao'
      Origin = 'hipertencao'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudediabetes: TStringField
      FieldName = 'diabetes'
      Origin = 'diabetes'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudealergiapcdinsetos: TStringField
      FieldName = 'alergiapcdinsetos'
      Origin = 'alergiapcdinsetos'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudealergiachocolate: TStringField
      FieldName = 'alergiachocolate'
      Origin = 'alergiachocolate'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudealergiaovo: TStringField
      FieldName = 'alergiaovo'
      Origin = 'alergiaovo'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudealergiapeloanimal: TStringField
      FieldName = 'alergiapeloanimal'
      Origin = 'alergiapeloanimal'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudealergiapoeira: TStringField
      FieldName = 'alergiapoeira'
      Origin = 'alergiapoeira'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsauderinite: TStringField
      FieldName = 'rinite'
      Origin = 'rinite'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudeoutros: TStringField
      FieldName = 'outros'
      Origin = 'outros'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qsaudeoutrasobs: TStringField
      FieldName = 'outrasobs'
      Origin = 'outrasobs'
      Required = True
      Size = 500
    end
    object qsaudeusomedicamentos: TStringField
      FieldName = 'usomedicamentos'
      Origin = 'usomedicamentos'
      Required = True
      Size = 500
    end
    object qsaudegpcovid: TStringField
      FieldName = 'gpcovid'
      Origin = 'gpcovid'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object qcomplemento: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM INFO_COMPLEMENTAR')
    Left = 472
    Top = 536
    object qcomplementoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qcomplementoAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qcomplementocns: TIntegerField
      FieldName = 'cns'
      Origin = 'cns'
      Required = True
    end
    object qcomplementobolsafml: TStringField
      FieldName = 'bolsafml'
      Origin = 'bolsafml'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qcomplementousoimg: TStringField
      FieldName = 'usoimg'
      Origin = 'usoimg'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qcomplementotempc: TStringField
      FieldName = 'tempc'
      Origin = 'tempc'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qcomplementoteminter: TStringField
      FieldName = 'teminter'
      Origin = 'teminter'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qcomplementopretencaoesc: TStringField
      FieldName = 'pretencaoesc'
      Origin = 'pretencaoesc'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object ds_matricula: TDataSource
    DataSet = qmatricula
    Left = 832
    Top = 80
  end
  object tbprofessor: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'professores'
    Left = 548
    Top = 320
    object tbprofessorid: TFDAutoIncField
      DisplayWidth = 4
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbprofessorNome: TStringField
      DisplayWidth = 25
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object tbprofessorEmail: TStringField
      DisplayWidth = 50
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 50
    end
    object tbprofessorCPF: TStringField
      DisplayWidth = 20
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '999.999.999-99;1;_'
    end
    object tbprofessorEndereco: TStringField
      DisplayWidth = 40
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Size = 40
    end
    object tbprofessorNumero: TIntegerField
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object tbprofessorComplemento: TStringField
      DisplayWidth = 50
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Required = True
      Size = 50
    end
    object tbprofessorCidade: TStringField
      DisplayWidth = 50
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Size = 50
    end
    object tbprofessorEstado: TStringField
      DisplayWidth = 50
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      Size = 50
    end
  end
  object qprofessor: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from professores')
    Left = 608
    Top = 320
    object qprofessorid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qprofessorNome: TStringField
      DisplayWidth = 35
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object qprofessorEmail: TStringField
      DisplayWidth = 26
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 50
    end
    object qprofessorCPF: TStringField
      DisplayWidth = 23
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '999.999.999-99;1;_'
    end
    object qprofessorEndereco: TStringField
      DisplayWidth = 40
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Visible = False
      Size = 40
    end
    object qprofessorNumero: TIntegerField
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
      Visible = False
    end
    object qprofessorComplemento: TStringField
      DisplayWidth = 50
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Required = True
      Visible = False
      Size = 50
    end
    object qprofessorCidade: TStringField
      DisplayWidth = 36
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Size = 50
    end
    object qprofessorEstado: TStringField
      DisplayWidth = 8
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      Visible = False
      Size = 50
    end
  end
  object ds_professor: TDataSource
    DataSet = tbprofessor
    Left = 540
    Top = 376
  end
  object ds_pesq_professor: TDataSource
    DataSet = qprofessor
    Left = 636
    Top = 376
  end
  object QTURMAS_PROF: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from turmas where status='#39'ATIVO'#39)
    Left = 289
    Top = 202
    object QTURMAS_PROFid_turmas: TFDAutoIncField
      DisplayWidth = 9
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object QTURMAS_PROFCursoCod: TIntegerField
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      Required = True
      Visible = False
    end
    object QTURMAS_PROFTurma: TStringField
      DisplayWidth = 14
      FieldName = 'Turma'
      Origin = 'Turma'
      Required = True
      Size = 10
    end
    object QTURMAS_PROFTurno: TStringField
      DisplayWidth = 24
      FieldName = 'Turno'
      Origin = 'Turno'
      Required = True
      FixedChar = True
      Size = 10
    end
    object QTURMAS_PROFDataInicio: TDateField
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      Required = True
      Visible = False
    end
    object QTURMAS_PROFDataFinal: TDateField
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      Required = True
      Visible = False
    end
    object QTURMAS_PROFstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Visible = False
      FixedChar = True
      Size = 7
    end
  end
  object DS_TURMA_PROF: TDataSource
    DataSet = QTURMAS_PROF
    Left = 284
    Top = 264
  end
  object tbturmaProfessor: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'escola.turma_professor'
    Left = 1004
    Top = 472
    object tbturmaProfessorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbturmaProfessorTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
    end
    object tbturmaProfessorProfessorCod: TIntegerField
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      Required = True
    end
  end
  object qturmaprofessor: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from turma_professor ')
    Left = 1017
    Top = 538
    object qturmaprofessorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qturmaprofessorTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
    end
    object qturmaprofessorProfessorCod: TIntegerField
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      Required = True
    end
  end
  object ds_turma_professor: TDataSource
    DataSet = qturmaprofessor
    Left = 900
    Top = 496
  end
  object tbmatricula: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'matricula'
    Left = 744
    Top = 24
    object tbmatriculaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbmatriculaAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object tbmatriculaTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
    end
    object tbmatriculaDataMatricula: TDateField
      FieldName = 'DataMatricula'
      Origin = 'DataMatricula'
      Required = True
    end
    object tbmatriculaSituacaoMatricula: TStringField
      FieldName = 'SituacaoMatricula'
      Origin = 'SituacaoMatricula'
      Required = True
      FixedChar = True
      Size = 7
    end
  end
  object qmatricula: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMa' +
        'tricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome,' +
        ' c.data_nasc,c.naturalidade, d.CursosId, d.Nome, d.Formato, e.Al' +
        'unoCod, e.cpf, f.AlunoCod, f.f1, f.f2'
      
        'from matricula as a, turmas as b,alunos as c, cursos as d,docume' +
        'ntos as e, responsaveis as f'
      
        'where c.id = a.AlunoCod and b.id_turmas= a.TurmaCod and b.CursoC' +
        'od = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id')
    Left = 832
    Top = 24
    object qmatriculanome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Do Aluno'
      DisplayWidth = 50
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qmatriculacpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object qmatriculaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qmatriculadata_nasc: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculaAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
      Visible = False
    end
    object qmatriculaDataMatricula: TDateField
      DisplayLabel = 'Data Da Matr'#237'cula'
      DisplayWidth = 14
      FieldName = 'DataMatricula'
      Origin = 'DataMatricula'
      Required = True
    end
    object qmatriculaTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
      Visible = False
    end
    object qmatriculaSituacaoMatricula: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 10
      FieldName = 'SituacaoMatricula'
      Origin = 'SituacaoMatricula'
      Required = True
      FixedChar = True
      Size = 7
    end
    object qmatriculaid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculaCursoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculaTurma: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qmatriculaTurno: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 13
      FieldName = 'Turno'
      Origin = 'Turno'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qmatriculaid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculanaturalidade: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 100
    end
    object qmatriculaCursosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculaNome_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Curso'
      DisplayWidth = 21
      FieldName = 'Nome_1'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qmatriculaFormato: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'Formato'
      Origin = 'Formato'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 14
    end
    object qmatriculaAlunoCod_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod_1'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculaAlunoCod_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod_2'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmatriculaf1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'f1'
      Origin = 'f1'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object qmatriculaf2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'f2'
      Origin = 'f2'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 50
    end
  end
  object qmatricula_cad: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from matricula')
    Left = 744
    Top = 80
    object qmatricula_cadid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qmatricula_cadAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qmatricula_cadTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
    end
    object qmatricula_cadDataMatricula: TDateField
      FieldName = 'DataMatricula'
      Origin = 'DataMatricula'
      Required = True
    end
    object qmatricula_cadSituacaoMatricula: TStringField
      FieldName = 'SituacaoMatricula'
      Origin = 'SituacaoMatricula'
      Required = True
      FixedChar = True
      Size = 7
    end
  end
  object qAtestadoFrequencia: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.nome, a.data_nasc,a.naturalidade, b.AlunoCod, b.f' +
        '1,b.f1id,b.f2,b.f2id, c.id, c.AlunoCod,c.TurmaCod'
      'from alunos as a, responsaveis as b, matricula as c'
      'where b.AlunoCod = a.id and c.AlunoCod = a.id')
    Left = 976
    Top = 144
    object qAtestadoFrequenciaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qAtestadoFrequencianome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qAtestadoFrequenciadata_nasc: TDateField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
    object qAtestadoFrequencianaturalidade: TStringField
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Required = True
      Size = 100
    end
    object qAtestadoFrequenciaAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qAtestadoFrequenciaf1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'f1'
      Origin = 'f1'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qAtestadoFrequenciaf1id: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'f1id'
      Origin = 'f1id'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qAtestadoFrequenciaf2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'f2'
      Origin = 'f2'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qAtestadoFrequenciaf2id: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'f2id'
      Origin = 'f2id'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qAtestadoFrequenciaid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qAtestadoFrequenciaAlunoCod_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod_1'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qAtestadoFrequenciaTurmaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_AtestadoFrequencia: TDataSource
    DataSet = qAtestadoFrequencia
    Left = 976
    Top = 208
  end
  object qCarteirinha: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.AlunoCod, a.TurmaCod,a.SituacaoMatricula, b.id, b' +
        '.nome,b.data_nasc, c.id_turmas,c.Turma,c.CursoCod, d.CursosId, d' +
        '.Nome, e.AlunoCod,e.cpf'
      
        'from matricula as a, alunos as b, turmas as c, cursos as d, docu' +
        'mentos as e'
      
        'where a.AlunoCod = b.id and a.TurmaCod = c.id_turmas and c.Curso' +
        'Cod = d.CursosId and e.AlunoCod = b.id')
    Left = 976
    Top = 96
    object qCarteirinhaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qCarteirinhaAlunoCod: TIntegerField
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      Required = True
    end
    object qCarteirinhaTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
    end
    object qCarteirinhaid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCarteirinhanome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qCarteirinhaid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCarteirinhaTurma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qCarteirinhaCursoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCarteirinhaCursosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCarteirinhaNome_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome_1'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qCarteirinhaSituacaoMatricula: TStringField
      FieldName = 'SituacaoMatricula'
      Origin = 'SituacaoMatricula'
      Required = True
      FixedChar = True
      Size = 7
    end
    object qCarteirinhaAlunoCod_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod_1'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCarteirinhacpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCarteirinhadata_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_Carteirinha: TDataSource
    DataSet = qCarteirinha
    Left = 656
    Top = 192
  end
  object qprofuser: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from professores')
    Left = 552
    Top = 272
    object qprofuserid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qprofuserNome: TStringField
      DisplayWidth = 39
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object qprofuserEmail: TStringField
      DisplayWidth = 32
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 50
    end
    object qprofuserCPF: TStringField
      DisplayWidth = 18
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
    end
    object qprofuserEndereco: TStringField
      DisplayWidth = 40
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Visible = False
      Size = 40
    end
    object qprofuserNumero: TIntegerField
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
      Visible = False
    end
    object qprofuserComplemento: TStringField
      DisplayWidth = 50
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Required = True
      Visible = False
      Size = 50
    end
    object qprofuserCidade: TStringField
      DisplayWidth = 50
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Visible = False
      Size = 50
    end
    object qprofuserEstado: TStringField
      DisplayWidth = 50
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      Visible = False
      Size = 50
    end
  end
  object ds_prof_user: TDataSource
    DataSet = qprofuser
    Left = 556
    Top = 216
  end
  object qpesq_turma_prof: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.TurmaCod, a.ProfessorCod, b.id_turmas,b.Turma, b.CursoC' +
        'od,b.Turno,b.status,b.DataInicio,b.DataFinal, c.id, d.CursosId, ' +
        'd.Nome'
      
        'from turma_professor as a, turmas as b, professores as c, Cursos' +
        ' as d'
      
        'where a.TurmaCod = b.id_turmas and a.ProfessorCod = c.id and d.C' +
        'ursosId = b.CursoCod '
      '')
    Left = 825
    Top = 602
    object qpesq_turma_profTurmaCod: TIntegerField
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      Required = True
      Visible = False
    end
    object qpesq_turma_profProfessorCod: TIntegerField
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      Required = True
      Visible = False
    end
    object qpesq_turma_profid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qpesq_turma_profTurma: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qpesq_turma_profNome: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'Nome'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qpesq_turma_profCursoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qpesq_turma_profTurno: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 19
      FieldName = 'Turno'
      Origin = 'Turno'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qpesq_turma_profstatus: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 17
      FieldName = 'status'
      Origin = 'status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object qpesq_turma_profDataInicio: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      ProviderFlags = []
      ReadOnly = True
    end
    object qpesq_turma_profDataFinal: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 21
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      ProviderFlags = []
      ReadOnly = True
    end
    object qpesq_turma_profid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qpesq_turma_profCursosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object ds_pq_turma_prof: TDataSource
    DataSet = qpesq_turma_prof
    Left = 932
    Top = 608
  end
  object tbnotas: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'escola.notas'
    Left = 256
    Top = 48
    object tbnotasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object tbnotasMatriculaCod: TIntegerField
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      Required = True
    end
    object tbnotasAvaliacaoCod: TIntegerField
      FieldName = 'AvaliacaoCod'
      Origin = 'AvaliacaoCod'
      Required = True
    end
    object tbnotasNota: TSingleField
      FieldName = 'Nota'
      Origin = 'Nota'
      Required = True
    end
  end
  object qnotas: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id,a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id, b.Alun' +
        'oCod, c.id, c.nome'
      'from notas as a, matricula as b, alunos as c'
      'where a.MatriculaCod = b.id and b.AlunoCod = c.id')
    Left = 256
    Top = 104
    object qnotasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qnotasMatriculaCod: TIntegerField
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      Required = True
      Visible = False
    end
    object qnotasnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Aluno'
      DisplayWidth = 88
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qnotasAvaliacaoCod: TIntegerField
      FieldName = 'AvaliacaoCod'
      Origin = 'AvaliacaoCod'
      Required = True
      Visible = False
    end
    object qnotasNota: TSingleField
      DisplayWidth = 12
      FieldName = 'Nota'
      Origin = 'Nota'
      Required = True
    end
    object qnotasid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasid_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_2'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object ds_notas: TDataSource
    DataSet = qnotas
    Left = 200
    Top = 104
  end
  object qCertificado: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.nome,b.id, b.AlunoCod,b.TurmaCod, c.id_turmas, c.' +
        'turma,c.DataInicio,c.DataFinal, c.CursoCod, d.CursosId, d.nome, ' +
        'd.CargaHoraria, d.conteudo '
      'from alunos as a, matricula as b, turmas as c, cursos as d'
      
        'where b.AlunoCod = a.id and b.AlunoCod = a.id and b.TurmaCod = c' +
        '.id_turmas and c.CursoCod = d.CursosId')
    Left = 952
    Top = 48
    object qCertificadoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qCertificadonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qCertificadoid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoTurmaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoturma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qCertificadoDataInicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoDataFinal: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoCursoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursoCod'
      Origin = 'CursoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoCursosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CursosId'
      Origin = 'CursosId'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadonome_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_1'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qCertificadoCargaHoraria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CargaHoraria'
      Origin = 'CargaHoraria'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCertificadoconteudo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'conteudo'
      Origin = 'Conteudo'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object ds_certificado: TDataSource
    DataSet = qCertificado
    Left = 1024
    Top = 48
  end
  object tbmensalidade: TFDTable
    Active = True
    IndexFieldNames = 'MensalidadeId'
    Connection = FDConnection1
    TableName = 'escola.mensalidade'
    Left = 984
    Top = 304
    object tbmensalidadeMensalidadeId: TFDAutoIncField
      FieldName = 'MensalidadeId'
      Origin = 'MensalidadeId'
      ReadOnly = True
    end
    object tbmensalidadeMatriculaCod: TIntegerField
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      Required = True
    end
    object tbmensalidadeValorMensalidade: TSingleField
      FieldName = 'ValorMensalidade'
      Origin = 'ValorMensalidade'
      Required = True
    end
    object tbmensalidadeFormaPagamento: TStringField
      FieldName = 'FormaPagamento'
      Origin = 'FormaPagamento'
      Required = True
      Size = 5
    end
    object tbmensalidadeDataVencimento: TDateField
      FieldName = 'DataVencimento'
      Origin = 'DataVencimento'
      Required = True
    end
    object tbmensalidadeValorPago: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'ValorPago'
      Origin = 'ValorPago'
    end
    object tbmensalidadeDataPagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPagamento'
      Origin = 'DataPagamento'
    end
    object tbmensalidadestatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object qmensalidade: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.MensalidadeId,a.MatriculaCod, a.ValorMensalidade, a.Dat' +
        'aVencimento, a.DataPagamento, a.status,a.FormaPagamento,a.n_parc' +
        'ela,a.valorpago, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.Alun' +
        'oCod,d.cpf'
      
        'from mensalidade as a, matricula as b, alunos as c, documentos a' +
        's d'
      
        'where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod' +
        ' = c.id')
    Left = 984
    Top = 360
    object qmensalidadenome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      DisplayWidth = 56
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qmensalidadeMatriculaCod: TIntegerField
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      Required = True
      Visible = False
    end
    object qmensalidadecpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      DisplayWidth = 20
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = []
      ReadOnly = True
    end
    object qmensalidadeValorMensalidade: TSingleField
      DisplayLabel = 'Valor'
      DisplayWidth = 11
      FieldName = 'ValorMensalidade'
      Origin = 'ValorMensalidade'
      Required = True
    end
    object qmensalidadestatus: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 18
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 12
    end
    object qmensalidadeDataVencimento: TDateField
      DisplayLabel = 'Data De Vencimento'
      DisplayWidth = 20
      FieldName = 'DataVencimento'
      Origin = 'DataVencimento'
      Required = True
    end
    object qmensalidadeid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmensalidadeAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmensalidadeid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmensalidadedata_nasc: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmensalidadeAlunoCod_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod_1'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmensalidadeMensalidadeId: TFDAutoIncField
      FieldName = 'MensalidadeId'
      Origin = 'MensalidadeId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qmensalidadeFormaPagamento: TStringField
      FieldName = 'FormaPagamento'
      Origin = 'FormaPagamento'
      Required = True
      Visible = False
      Size = 5
    end
    object qmensalidaden_parcela: TIntegerField
      DisplayLabel = 'Parcela N'#186
      DisplayWidth = 10
      FieldName = 'n_parcela'
      Origin = 'n_parcela'
      Required = True
    end
    object qmensalidadeDataPagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPagamento'
      Origin = 'DataPagamento'
      Visible = False
    end
    object qmensalidadevalorpago: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorpago'
      Origin = 'ValorPago'
      Visible = False
    end
  end
  object DSMENSALIDADE: TDataSource
    DataSet = qmensalidade
    Left = 904
    Top = 312
  end
  object qmedia_notas_modulo: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.Prof' +
        'essorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora' +
        ',c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma'
      
        'from notas as a, avaliacao as b, professores as c, matricula as ' +
        'd, alunos as e, turmas as f'
      
        'where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.Prof' +
        'essorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.' +
        'id  ')
    Left = 592
    Top = 584
    object qmedia_notas_modulonome_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Auno(a)'
      DisplayWidth = 48
      FieldName = 'nome_1'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object qmedia_notas_moduloNome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Professor(a)'
      DisplayWidth = 35
      FieldName = 'Nome'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qmedia_notas_moduloid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloMatriculaCod: TIntegerField
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      Required = True
      Visible = False
    end
    object qmedia_notas_moduloTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 32
      FieldName = 'Tipo'
      Origin = 'Tipo'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qmedia_notas_moduloAvaliacaoCod: TIntegerField
      FieldName = 'AvaliacaoCod'
      Origin = 'AvaliacaoCod'
      Required = True
      Visible = False
    end
    object qmedia_notas_moduloid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloProfessorCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloTurmaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloModuloRef: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#243'dulo'
      DisplayWidth = 8
      FieldName = 'ModuloRef'
      Origin = 'ModuloRef'
      ProviderFlags = []
      ReadOnly = True
    end
    object qmedia_notas_modulodescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Assunto'
      DisplayWidth = 45
      FieldName = 'descricao'
      Origin = 'Descricao'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 100
    end
    object qmedia_notas_modulodata: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = []
      ReadOnly = True
    end
    object qmedia_notas_moduloid_3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_3'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_modulohora: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hor'#225'rio'
      DisplayWidth = 8
      FieldName = 'hora'
      Origin = 'hora'
      ProviderFlags = []
      ReadOnly = True
    end
    object qmedia_notas_moduloid_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_2'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloid_4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_4'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qmedia_notas_moduloTurma: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'Turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 10
    end
    object qmedia_notas_moduloNota: TSingleField
      DisplayWidth = 6
      FieldName = 'Nota'
      Origin = 'Nota'
      Required = True
    end
  end
  object ds_notas_modulos: TDataSource
    DataSet = qmedia_notas_modulo
    Left = 596
    Top = 632
  end
  object tbControleAcoes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'controledeacoes'
    Left = 772
    Top = 480
    object tbControleAcoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbControleAcoesUsuarioCodCad: TIntegerField
      FieldName = 'UsuarioCodCad'
      Origin = 'UsuarioCodCad'
      Required = True
    end
    object tbControleAcoesDataCad: TDateField
      FieldName = 'DataCad'
      Origin = 'DataCad'
      Required = True
    end
    object tbControleAcoesHoraCad: TTimeField
      FieldName = 'HoraCad'
      Origin = 'HoraCad'
      Required = True
    end
    object tbControleAcoesUsuarioCodAlt: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UsuarioCodAlt'
      Origin = 'UsuarioCodAlt'
    end
    object tbControleAcoesDataAlt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataAlt'
      Origin = 'DataAlt'
    end
    object tbControleAcoesHoraAlt: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HoraAlt'
      Origin = 'HoraAlt'
    end
    object tbControleAcoesCodTabela: TIntegerField
      FieldName = 'CodTabela'
      Origin = 'CodTabela'
      Required = True
    end
    object tbControleAcoesid_tabela_ref: TIntegerField
      FieldName = 'id_tabela_ref'
      Origin = 'id_tabela_ref'
      Required = True
    end
  end
  object qControleAcoes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from controledeacoes')
    Left = 769
    Top = 530
    object qControleAcoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qControleAcoesUsuarioCodCad: TIntegerField
      FieldName = 'UsuarioCodCad'
      Origin = 'UsuarioCodCad'
      Required = True
    end
    object qControleAcoesDataCad: TDateField
      FieldName = 'DataCad'
      Origin = 'DataCad'
      Required = True
    end
    object qControleAcoesHoraCad: TTimeField
      FieldName = 'HoraCad'
      Origin = 'HoraCad'
      Required = True
    end
    object qControleAcoesUsuarioCodAlt: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UsuarioCodAlt'
      Origin = 'UsuarioCodAlt'
    end
    object qControleAcoesDataAlt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataAlt'
      Origin = 'DataAlt'
    end
    object qControleAcoesHoraAlt: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HoraAlt'
      Origin = 'HoraAlt'
    end
    object qControleAcoesCodTabela: TIntegerField
      FieldName = 'CodTabela'
      Origin = 'CodTabela'
      Required = True
    end
    object qControleAcoesid_tabela_ref: TIntegerField
      FieldName = 'id_tabela_ref'
      Origin = 'id_tabela_ref'
      Required = True
    end
  end
  object qnotasVermelhas: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.Prof' +
        'essorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora' +
        ',c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma'
      
        'from notas as a, avaliacao as b, professores as c, matricula as ' +
        'd, alunos as e, turmas as f'
      
        'where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.Prof' +
        'essorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.' +
        'id  ')
    Left = 696
    Top = 584
    object qnotasVermelhasNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object qnotasVermelhasnome_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DOS ALUNOS'
      DisplayWidth = 90
      FieldName = 'nome_1'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qnotasVermelhasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasMatriculaCod: TIntegerField
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      Required = True
      Visible = False
    end
    object qnotasVermelhasTurma: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TURMA'
      DisplayWidth = 14
      FieldName = 'Turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qnotasVermelhasAvaliacaoCod: TIntegerField
      FieldName = 'AvaliacaoCod'
      Origin = 'AvaliacaoCod'
      Required = True
      Visible = False
    end
    object qnotasVermelhasNota: TSingleField
      DisplayLabel = 'NOTA'
      DisplayWidth = 13
      FieldName = 'Nota'
      Origin = 'Nota'
      Required = True
    end
    object qnotasVermelhasid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasProfessorCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ProfessorCod'
      Origin = 'ProfessorCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasTurmaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = 'Tipo'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 18
    end
    object qnotasVermelhasModuloRef: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ModuloRef'
      Origin = 'ModuloRef'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'Descricao'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 100
    end
    object qnotasVermelhasdata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhashora: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasid_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_2'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasid_3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_3'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasid_4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_4'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qnotasVermelhasid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object ds_nota_vermelha: TDataSource
    DataSet = qnotasVermelhas
    Left = 700
    Top = 632
  end
  object qcontrato: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.id, a.nome, b.id, b.AlunoCod, b.TurmaCod, c.mensalidade' +
        'id, c.MatriculaCod, c.ValorMensalidade, c.DataVencimento, c.n_pa' +
        'rcela, d.id_turmas, d.DataInicio, d.DataFinal, d.turma'
      'from alunos as a, matricula as b, mensalidade as c, turmas as d'
      
        'where a.id = b.AlunoCod and  b.id = c.MatriculaCod and d.id_turm' +
        'as = b.TurmaCod and c.n_parcela = 1'
      ''
      '')
    Left = 768
    Top = 424
    object qcontratoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qcontratonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qcontratoid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoAlunoCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AlunoCod'
      Origin = 'AlunoCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoTurmaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TurmaCod'
      Origin = 'TurmaCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoMatriculaCod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MatriculaCod'
      Origin = 'MatriculaCod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoValorMensalidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'ValorMensalidade'
      Origin = 'ValorMensalidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoDataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataVencimento'
      Origin = 'DataVencimento'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontraton_parcela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'n_parcela'
      Origin = 'n_parcela'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoid_turmas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_turmas'
      Origin = 'id_turmas'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoDataInicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoDataFinal: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      ProviderFlags = []
      ReadOnly = True
    end
    object qcontratoturma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'turma'
      Origin = 'Turma'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qcontratomensalidadeid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mensalidadeid'
      Origin = 'MensalidadeId'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_contrato: TDataSource
    DataSet = qcontrato
    Left = 768
    Top = 368
  end
end
