unit U_pesq_turma_prof;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pesq_turma_professor = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    txt_buscar: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    lb_total: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesq_turma_professor: Tfrm_pesq_turma_professor;
  


implementation

{$R *.dfm}
uses
u_dm,U_altpesturma,U_pesq_matricula, u_principalpas,U_cad_avaliacao,u_pesq_avaliacao;

procedure Tfrm_pesq_turma_professor.DBGrid1CellClick(Column: TColumn);
begin

  if CadAltDelAvaliacao=1 then
  begin
  frm_cad_avaliacao := Tfrm_cad_avaliacao.Create(self);
  frm_cad_avaliacao.Parent:= frm_prncipal.panel2;
  frm_cad_avaliacao.Align:= alClient;
  frm_cad_avaliacao.BorderStyle:= bsNone;
  frm_cad_avaliacao.WindowState :=wsMaximized;
  frm_cad_avaliacao.show;
  end;

  if (CadAltDelAvaliacao<>1) and (CadAltDelAvaliacao<>10) then

   begin

  frm_pesq_avaliacao := Tfrm_pesq_avaliacao.Create(Self);
  frm_pesq_avaliacao.Parent:= frm_prncipal.panel2;
  frm_pesq_avaliacao.Align:= alClient;
  frm_pesq_avaliacao.BorderStyle:= bsNone;
  frm_pesq_avaliacao.WindowState :=wsMaximized;
  frm_pesq_avaliacao.Position :=poMainFormCenter;
  frm_pesq_avaliacao.Show;
  end;

   if CadAltDelAvaliacao=10 then
  begin
  AltDelMatricula:=4;
  IDTURMAS1:=dm.qpesq_turma_profid_turmas.value;
  frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

  frm_pq_matricula.Parent:= frm_prncipal.panel2;
  frm_pq_matricula.Align:= alClient;
  frm_pq_matricula.BorderStyle:= bsNone;
  frm_pq_matricula.WindowState :=wsMaximized;
  frm_pq_matricula.Position :=poMainFormCenter;
  frm_pq_matricula.Show;
  end





end;

procedure Tfrm_pesq_turma_professor.DBGrid1MouseMove(Sender: TObject;
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

procedure Tfrm_pesq_turma_professor.FormCreate(Sender: TObject);
begin
with dm.qpesq_turma_prof do
    begin
    close;
    sql.clear;
    sql.Add('select a.TurmaCod, a.ProfessorCod, b.id_turmas,b.Turma, b.CursoCod,b.Turno,b.status,b.DataInicio,b.DataFinal, c.id, d.CursosId, d.Nome');
    sql.Add('from turma_professor as a, turmas as b, professores as c, Cursos as d');
    sql.Add('where a.TurmaCod = b.id_turmas and a.ProfessorCod = c.id and d.CursosId = b.CursoCod and c.id = :idpro ');
    parambyname('idpro').asinteger:= LOGADOPRO;
    open;
    lb_total.Caption:=inttostr(dm.qpesq_turma_prof.RecordCount);
  end;
end;

procedure Tfrm_pesq_turma_professor.FormMouseMove(Sender: TObject;
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
end;

procedure Tfrm_pesq_turma_professor.Panel1MouseMove(Sender: TObject;
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

procedure Tfrm_pesq_turma_professor.SpeedButton1Click(Sender: TObject);
begin
with dm.qpesq_turma_prof do
    begin
    close;
    sql.clear;
    sql.Add('select a.TurmaCod, a.ProfessorCod, b.id_turmas,b.Turma, b.CursoCod,b.Turno,b.status,b.DataInicio,b.DataFinal, c.id, d.CursosId, d.Nome');
    sql.Add('from turma_professor as a, turmas as b, professores as c, Cursos as d');
    sql.Add('where a.TurmaCod = b.id_turmas and a.ProfessorCod = c.id and d.CursosId = b.CursoCod and c.id = :idpro and b.turma like ''%'+txt_buscar.text+'%'' ');
    parambyname('idpro').asinteger:= LOGADOPRO;
    open;
    lb_total.Caption:=inttostr(dm.qpesq_turma_prof.RecordCount);
  end;
end;

end.
