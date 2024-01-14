unit U_notas_modulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_media_aluno = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Label4: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    DBEdit3: TDBEdit;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    DBEdit5: TDBEdit;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    cb1: TComboBox;
    Panel6: TPanel;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Panel8: TPanel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Panel17: TPanel;
    DBGrid1: TDBGrid;
    Panel13: TPanel;
    Label9: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    ScrollBar1: TScrollBar;
    Label11: TLabel;
    Panel16: TPanel;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_media_aluno: Tfrm_media_aluno;

implementation

{$R *.dfm}
uses
u_dm,U_principalpas;

procedure Tfrm_media_aluno.ComboBox1Change(Sender: TObject);
var
MediaTotal:array of double;
i,y:integer;
notaMedia,total:double;
begin
total:=0;
edit1.Clear;
if combobox1.ItemIndex=0 then
  begin

    SetLength (MediaTotal, 1);
   for i:=1 to combobox1.items.Count -1 do
    begin
     notaMedia:=0;
      with dm.qmedia_notas_modulo do
       begin
         close;
         sql.clear;
         sql.add('select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
         sql.add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
         sql.add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and b.ModuloRef = :modulo and a.MatriculaCod = :idmat ');
         parambyname('modulo').asstring:= inttostr(i);
         parambyname('idmat').asinteger:= dm.qmatriculaid.value;
         open;


         if recordcount>0 then
         begin
         dm.qmedia_notas_modulo.first;
         while not dm.qmedia_notas_modulo.eof do
           begin
             notaMedia:= notaMedia+dm.qmedia_notas_modulonota.value;
             dm.qmedia_notas_modulo.next;
           end;

           notaMedia:=notaMedia/recordcount;

          if  i=1  then
          begin
          MediaTotal[0]:=(notaMedia);

          end;
          if  i>=2  then
          begin
          SetLength (MediaTotal, Length(MediaTotal)+1);
          MediaTotal[i-1]:=(notaMedia);


          end;




         end;

       end;

      with dm.qmedia_notas_modulo do
       begin
         close;
         sql.clear;
         sql.add('select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
         sql.add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
         sql.add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and a.MatriculaCod = :idmat ');

         parambyname('idmat').asinteger:= dm.qmatriculaid.value;
         open;

       end;
    end;

    for y:=0 to  length(MediaTotal) do
    begin
     TOTAL:=total+MediaTotal[y];
    end;

    total:= total/length(MediaTotal);
    edit1.Text:=(formatfloat('#,,0.00', total));



  end
  else
    begin
    with dm.qmedia_notas_modulo do
     begin
       close;
       sql.clear;
       sql.add('select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
       sql.add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
       sql.add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and b.ModuloRef = :modulo and a.MatriculaCod = :idmat ');
       parambyname('modulo').asstring:= combobox1.Text;
       parambyname('idmat').asinteger:= dm.qmatriculaid.value;
       open;


       if recordcount>0 then
       begin
       dm.qmedia_notas_modulo.first;
       while not dm.qmedia_notas_modulo.eof do
         begin
           notaMedia:= notaMedia+dm.qmedia_notas_modulonota.value;
           dm.qmedia_notas_modulo.next;
         end;

        notaMedia:=notaMedia/recordcount;
        edit1.Text:=(formatfloat('#,,0.00', notaMedia));
       end;
     end;

     end;



end;

procedure Tfrm_media_aluno.FormCreate(Sender: TObject);
var
i:integer;
begin
dm.qmedia_notas_modulo.close;
dm.qturmas.Close;
dm.tbcursos.Open();
 dm.tbcursos.First;

 while not dm.tbcursos.Eof do
 begin
 cb1.Items.Add(dm.tbcursosnome.Value);
 dm.tbcursos.Next;
 end;

 dm.tbcursos.Close;

 with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.id_turmas = :id');
   parambyname('id').AsInteger:= dm.qmatriculaTurmaCod.value;
   open;
 end;

  with dm.qcursos do
 begin
   close;
   sql.Clear;
   sql.add('select * from cursos where CursosId = :idcur');
   parambyname('idcur').AsInteger:= dm.qturmascursocod.value;
   open;
 end;

 cb1.ItemIndex:= cb1.items.IndexOf(dm.qcursosNome.Value);

 /////

 with dm.qturmas do
begin
  close;
  sql.Clear;
  sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
  sql.Add('from turmas as a, cursos as b');
  sql.Add('where a.CursoCod = b.CursosId and a.CursoCod = :CursoCod');
  parambyname('CursoCod').asinteger:=dm.qcursosCursosId.value;
  open;
end;

 dm.qturmas.First;
 while not dm.qturmas.Eof do
 begin
   combobox2.Items.Add(dm.qturmasturma.Value);
   dm.qturmas.next;
 end;
 dm.qturmas.Close;

 ///
 with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.id_turmas = :id');
   parambyname('id').AsInteger:= dm.qmatriculaTurmaCod.value;
   open;
 end;

 combobox2.ItemIndex:= combobox2.items.IndexOf(dm.qturmasTurma.Value);

 ////
  for i:=1 to dm.qcursosModulos.Value do
  begin
    combobox1.Items.Add(inttostr(i));
  end;


end;

procedure Tfrm_media_aluno.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
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

procedure Tfrm_media_aluno.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_media_aluno.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_media_aluno.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_media_aluno.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
