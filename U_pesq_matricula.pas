unit U_pesq_matricula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pq_matricula = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txt_buscar: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    lb_total: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  frm_pq_matricula: Tfrm_pq_matricula;
  CodMatricula, AltDelMatricula:integer;
  y,z:integer;

implementation

{$R *.dfm}
uses
u_dm,U_notas_modulos,U_imcaluno, u_turma_relacao, U_alt_matricula,u_principalpas, U_del_matricula, U_ALTPESTURMA;


procedure Tfrm_pq_matricula.DBGrid1CellClick(Column: TColumn);
begin
if AltDelMatricula=1 then
 begin
  CodMatricula:=dm.qmatriculaid.value;


  frm_alt_matricula := Tfrm_alt_matricula.Create(Self);

  frm_alt_matricula.Parent:= frm_prncipal.panel2;
  frm_alt_matricula.Align:= alClient;
  frm_alt_matricula.BorderStyle:= bsNone;
  frm_alt_matricula.WindowState :=wsMaximized;
  frm_alt_matricula.Position :=poMainFormCenter;
  frm_alt_matricula.Show;


 end;

 if AltDelMatricula=2 then
 begin
  CodMatricula:=dm.qmatriculaid.value;

  frm_del_matricula := Tfrm_del_matricula.Create(Self);

  frm_del_matricula.Parent:= frm_prncipal.panel2;
  frm_del_matricula.Align:= alClient;
  frm_del_matricula.BorderStyle:= bsNone;
  frm_del_matricula.WindowState :=wsMaximized;
  frm_del_matricula.Position :=poMainFormCenter;
  frm_del_matricula.Show;


 end;

  if AltDelMatricula=3 then
 begin
  CodMatricula:=dm.qmatriculaid.value;

   y := dm.qmatriculaCursoCod.value;
   z:= dm.qmatriculaAlunoCod.value;

   frm_imaluno := Tfrm_imaluno.Create(self);
  frm_imaluno.Parent:= frm_prncipal.panel2;
  frm_imaluno.Align:= alClient;
  frm_imaluno.BorderStyle:= bsNone;
  frm_imaluno.WindowState :=wsMaximized;
  frm_imaluno.show;

 end;

   if AltDelMatricula=4 then
 begin
  CodMatricula:=dm.qmatriculaid.value;

   y := dm.qmatriculaCursoCod.value;
   z:= dm.qmatriculaAlunoCod.value;

   frm_media_aluno := Tfrm_media_aluno.Create(self);
  frm_media_aluno.Parent:= frm_prncipal.panel2;
  frm_media_aluno.Align:= alClient;
  frm_media_aluno.BorderStyle:= bsNone;
  frm_media_aluno.WindowState :=wsMaximized;
  frm_media_aluno.show;

 end;

end;

procedure Tfrm_pq_matricula.DBGrid1MouseMove(Sender: TObject;
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

procedure Tfrm_pq_matricula.FormCreate(Sender: TObject);
begin
  if AltDelMatricula=4 then
 begin
   with dm.qmatricula do
   begin
    close;
    sql.Clear;
    sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId,');
    sql.add(' d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2 from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
    sql.add('where a.AlunoCod = c.id and a.TurmaCod = b.id_turmas and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and c.nome like ''%'+txt_buscar.Text+'%'' AND b.id_turmas = :idturmas');
    PARAMBYNAME('idturmas').AsInteger:= IDTURMAS1;
    open;

    lb_total.Caption:= inttostr(recordcount) ;
   end;
 end
 else
 begin

  with dm.qmatricula do
   begin
    close;
    sql.Clear;
    sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId,');
    sql.add(' d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2 from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
    sql.add('where a.AlunoCod = c.id and a.TurmaCod = b.id_turmas and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and c.nome like ''%'+txt_buscar.Text+'%'' ');
    open;

    lb_total.Caption:= inttostr(recordcount) ;
   end;
 end;
end;

procedure Tfrm_pq_matricula.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
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

procedure Tfrm_pq_matricula.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
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

procedure Tfrm_pq_matricula.SpeedButton1Click(Sender: TObject);
var
cpf:string;
i:integer;
begin
if AltDelMatricula=4 then
 begin
  with dm.qmatricula do
   begin
    close;
    sql.Clear;
    sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId,');
    sql.add(' d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2 from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
    sql.add('where a.AlunoCod = c.id and a.TurmaCod = b.id_turmas and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and a.TurmaCod= :turminha and c.nome like ''%'+txt_buscar.Text+'%'' ');
    parambyname('turminha').AsInteger:= dm.qturmasid_turmas.Value;
    open;

    lb_total.Caption:= inttostr(recordcount) ;

     if recordcount=0 then
       begin
       cpf:='';

       for i:=1 to length(txt_buscar.Text) do
         begin
            if (i<>4) and (i<>7) and(i<>10)  then
            begin
            cpf:= cpf+txt_buscar.text[i];
            end;

            if i=4 then
            begin
               cpf:= cpf+'.'+txt_buscar.text[i];
            end;
            if i=7 then
            begin
               cpf:= cpf+'.'+txt_buscar.text[i];
            end;
            if i=10 then
            begin
               cpf:= cpf+'-'+txt_buscar.text[i];
            end;

         end;


        with dm.qmatricula do
         begin
          close;
          sql.Clear;
          sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId,');
          sql.add(' d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2 from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
          sql.add('where a.AlunoCod = c.id and a.TurmaCod = b.id_turmas and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and a.TurmaCod= :turminha and e.cpf = :cpf ');
          parambyname('turminha').AsInteger:= dm.qturmasid_turmas.Value;
          parambyname('cpf').asstring:= cpf;
          open;

          lb_total.Caption:= inttostr(recordcount) ;
          end;

       end;
   end;
 end
 else
  begin
  with dm.qmatricula do
   begin
    close;
    sql.Clear;
    sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId,');
    sql.add(' d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2 from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
    sql.add('where a.AlunoCod = c.id and a.TurmaCod = b.id_turmas and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and c.nome like ''%'+txt_buscar.Text+'%'' ');
    open;

    lb_total.Caption:= inttostr(recordcount) ;

    if recordcount=0 then
       begin
       cpf:='';

       for i:=1 to length(txt_buscar.Text) do
         begin
            if (i<>4) and (i<>7) and(i<>10)  then
            begin
            cpf:= cpf+txt_buscar.text[i];
            end;

            if i=4 then
            begin
               cpf:= cpf+'.'+txt_buscar.text[i];
            end;
            if i=7 then
            begin
               cpf:= cpf+'.'+txt_buscar.text[i];
            end;
            if i=10 then
            begin
               cpf:= cpf+'-'+txt_buscar.text[i];
            end;

         end;


        with dm.qmatricula do
         begin
          close;
          sql.Clear;
          sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId,');
          sql.add(' d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2 from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
          sql.add('where a.AlunoCod = c.id and a.TurmaCod = b.id_turmas and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id and e.cpf = :cpf ');
          parambyname('cpf').asstring:= cpf;
          open;

          lb_total.Caption:= inttostr(recordcount) ;
          end;

       end;
   end;
  end;
end;


end.
