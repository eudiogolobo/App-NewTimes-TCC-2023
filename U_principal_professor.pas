unit U_principal_professor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  Tfrm_principal_professor = class(TForm)
    Label17: TLabel;
    Panel2: TPanel;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Shape3: TShape;
    SpeedButton3: TSpeedButton;
    Panel14: TPanel;
    Shape4: TShape;
    SpeedButton6: TSpeedButton;
    Panel15: TPanel;
    Shape6: TShape;
    SpeedButton7: TSpeedButton;
    Panel16: TPanel;
    Shape7: TShape;
    SpeedButton8: TSpeedButton;
    Panel7: TPanel;
    Shape8: TShape;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    Image2: TImage;
    Label3: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    Shape2: TShape;
    Image3: TImage;
    Label7: TLabel;
    Label8: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal_professor: Tfrm_principal_professor;

implementation

{$R *.dfm}
uses
u_principalpas, U_financeiro,U_pesq_turma_prof,U_pesq_avaliacao,U_pesqaluser,U_pesq_matricula, u_pesq_professor, U_cad_professor, U_altpesturma, U_Matricula,u_alteracao_senha,U_cadAluno02,U_pqal,U_pqCurso,u_altturma,U_exaluno,U_altCadAluno, U_exturma,u_altcur, U_excurso,U_pesquisaAluno, U_cad_avaliacao,U_caduser,U_lancamento_notas, U_login, U_pesquisaCurso, U_pesquisaUsu, U_imcaluno, u_dm, u_cadastrocurso, u_inicio, u_cadturma, U_turma_relacao;

procedure Tfrm_principal_professor.FormCreate(Sender: TObject);
var
totalAlunos:integer;
begin
LABEL1.Caption:='Ol�, '+dm.qusuariosnome.Text+'!';

 with dm.qpesq_turma_prof do
    begin
    close;
    sql.clear;
    sql.Add('select a.TurmaCod, a.ProfessorCod, b.id_turmas,b.Turma, b.CursoCod,b.Turno,b.status,b.DataInicio,b.DataFinal, c.id, d.CursosId, d.Nome');
    sql.Add('from turma_professor as a, turmas as b, professores as c, Cursos as d');
    sql.Add('where a.TurmaCod = b.id_turmas and a.ProfessorCod = c.id and d.CursosId = b.CursoCod and c.id = :idpro ');
    parambyname('idpro').asinteger:= LOGADOPRO;
    open;
    label5.Caption:=inttostr(dm.qpesq_turma_prof.RecordCount);
  end;

  with dm.qavaliacao do
    begin
    close;
    sql.clear;
    sql.Add('select a.id, a.Nome, b.id_turmas,b.Turma, c.id,c.ProfessorCod,c.TurmaCod, c.Tipo, c.ModuloRef, c.TotalAulas,c.Descricao, c.data, c.hora');
    sql.Add('from professores as a, turmas as b, avaliacao as c');
    sql.Add('where c.ProfessorCod = a.id and c.TurmaCod = b.id_turmas and a.id = :idpro');

    parambyname('idpro').AsInteger:= LOGADOPRO;

    open;
    label8.Caption:=inttostr(dm.qavaliacao.RecordCount);
  end;


 with dm.qpesq_turma_prof do
    begin
    close;
    sql.clear;
    sql.Add('select a.TurmaCod, a.ProfessorCod, b.id_turmas,b.Turma, b.CursoCod,b.Turno,b.status,b.DataInicio,b.DataFinal, c.id, d.CursosId, d.Nome');
    sql.Add('from turma_professor as a, turmas as b, professores as c, Cursos as d');
    sql.Add('where a.TurmaCod = b.id_turmas and a.ProfessorCod = c.id and d.CursosId = b.CursoCod and c.id = :idpro ');
    parambyname('idpro').asinteger:= LOGADOPRO;
    open;
  end;
  totalAlunos:=0;

  dm.qpesq_turma_prof.First;
  while not dm.qpesq_turma_prof.eof do
  begin
      with dm.qmatricula do
      begin
      close;
      sql.clear;
      sql.Add(' select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId, d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2');
      sql.Add('from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
      sql.Add('where c.id = a.AlunoCod and b.id_turmas= a.TurmaCod and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and a.TurmaCod = :turma');
      parambyname('turma').asinteger:= dm.qpesq_turma_profTurmaCod.Value;
      open;

      totalAlunos:= totalAlunos + recordcount;
    end;


    dm.qpesq_turma_prof.next;
  end;

   label6.Caption:=inttostr(totalAlunos);


end;

procedure Tfrm_principal_professor.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
frm_prncipal.resultado.visible:= false;
frm_prncipal.origem.visible:= true;
end;

procedure Tfrm_principal_professor.SpeedButton3Click(Sender: TObject);
begin
AltDelTurma:=4;

frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

frm_pqaltturma.Parent:= frm_prncipal.panel2;
frm_pqaltturma.Align:= alClient;
frm_pqaltturma.BorderStyle:= bsNone;
frm_pqaltturma.WindowState :=wsMaximized;
frm_pqaltturma.Position :=poMainFormCenter;
frm_pqaltturma.Show;

  frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
end;

procedure Tfrm_principal_professor.SpeedButton6Click(Sender: TObject);
begin
CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;

   frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
end;

procedure Tfrm_principal_professor.SpeedButton7Click(Sender: TObject);
begin
CadAltDelAvaliacao:=1;
frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
frm_pesq_turma_professor.Align:= alClient;
frm_pesq_turma_professor.BorderStyle:= bsNone;
frm_pesq_turma_professor.WindowState :=wsMaximized;
frm_pesq_turma_professor.Position :=poMainFormCenter;
frm_pesq_turma_professor.Show;

 frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
end;

procedure Tfrm_principal_professor.SpeedButton8Click(Sender: TObject);
begin
  CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
frm_pesq_turma_professor.Align:= alClient;
frm_pesq_turma_professor.BorderStyle:= bsNone;
frm_pesq_turma_professor.WindowState :=wsMaximized;
frm_pesq_turma_professor.Position :=poMainFormCenter;
frm_pesq_turma_professor.Show;

 frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
end;

end.
