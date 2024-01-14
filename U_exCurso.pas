unit U_exCurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_excurso = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    DBEdit4: TDBEdit;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    DBEdit6: TDBEdit;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel17: TPanel;
    Label9: TLabel;
    Panel18: TPanel;
    DBEdit8: TDBEdit;
    Panel19: TPanel;
    Label10: TLabel;
    Panel21: TPanel;
    Label11: TLabel;
    Panel22: TPanel;
    DBEdit10: TDBEdit;
    ScrollBar1: TScrollBar;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    Panel23: TPanel;
    Label12: TLabel;
    Panel24: TPanel;
    DBEdit11: TDBEdit;
    Panel11: TPanel;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Panel12: TPanel;
    Label8: TLabel;
    DBComboBox2: TDBComboBox;
    Panel5: TPanel;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    DBMemo1: TDBMemo;
    procedure SpeedButton2Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_excurso: Tfrm_excurso;

implementation

{$R *.dfm}
uses
U_dm,u_pqcurso, U_pqexcur,u_inicio,u_principalpas;

procedure Tfrm_excurso.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_excurso.SpeedButton2Click(Sender: TObject);
begin
application.CreateForm(Tfrm_pqex,  frm_pqex);
 frm_pqex.ShowModal;
end;

procedure Tfrm_excurso.btn_cancelarClick(Sender: TObject);
begin
 if MessageDlg('Voc� deseja mesmo deletar esse curso?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////

    //excluindo matricula

         with dm.qturmas do
           begin
           close;
            sql.clear;
            sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome');
             sql.Add('from turmas as a, cursos as b');
              sql.Add('where a.CursoCod = b.CursosId and a.CursoCod = :idcur ');


            parambyname('idcur').AsInteger:= dm.qcursosCursosId.Value;

            open;
           end;

    dm.qturmas.First;

     while not dm.qturmas.Eof do
     begin


                WITH dm.tbmatricula do
             begin
               close;
               sql.clear;
               sql.add('select * from matricula where TurmaCod = :id');
               parambyname('id').asinteger:= dm.qturmasid_turmas.Value;
               open;
             end;

             dm.tbmatricula.First;

             while not dm.tbmatricula.Eof do
             begin

                   WITH dm.tbmensalidade do
                 begin
                   close;
                   sql.clear;
                   sql.add('delete from mensalidade where MatriculaCod = :id');
                   parambyname('id').asinteger:= dm.tbmatriculaid.value;
                   execsql;
                 end;

                  WITH dm.tbnotas do
                 begin
                   close;
                   sql.clear;
                   sql.add('delete from notas where MatriculaCod = :id');
                   parambyname('id').asinteger:= dm.tbmatriculaid.value;
                   execsql;
                 end;

                dm.tbmatricula.next;
             end;


             WITH dm.tbmatricula do
             begin
               close;
               sql.clear;
               sql.add('delete from matricula where TurmaCod = :id');
               parambyname('id').asinteger:= dm.qturmasid_turmas.Value;
               execsql;
             end;

             //

              WITH dm.tbavaliacao do
             begin
               close;
               sql.clear;
               sql.add('select * from avaliacao where TurmaCod = :id');
               parambyname('id').asinteger:= dm.qturmasid_turmas.Value;
               open;
             end;

             dm.tbavaliacao.First;

             while not dm.tbavaliacao.Eof do
             begin

                    with dm.tbnotas do
                   begin
                     close;
                     sql.Clear;
                     sql.Add('delete from notas where AvaliacaoCod = :idava ');
                     parambyname('idava').AsInteger:= dm.tbavaliacaoid.Value;
                     ExecSQL;

                   end;



                dm.tbavaliacao.next;
             end;


          with dm.tbavaliacao do
           begin
             close;
             sql.Clear;
             sql.Add('delete from avaliacao where TurmaCod = :idav ');
             parambyname('idav').AsInteger:= dm.qturmasid_turmas.Value;
             ExecSQL;

           end;

             //

               WITH dm.tbturmaProfessor do
             begin
             close;
             sql.Clear;
             sql.Add('delete from turma_professor where TurmaCod = :idav ');
             parambyname('idav').AsInteger:= dm.qturmasid_turmas.Value;
             ExecSQL;
             end;


            dm.qturmas.next;
     end;

       with dm.tbturma do
            begin
              close;
              sql.Clear;
              sql.Add('delete from turmas where CursoCod = :idcur ');
              parambyname('idcur').AsInteger:= dm.qcursosCursosId.Value;
              execsql;
            end;




  dm.qcursos.Edit;
  dm.qcursos.delete;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  showmessage('Curso exclu�do com sucesso!');
  end;



end;

procedure Tfrm_excurso.btn_salvarClick(Sender: TObject);
begin

  //////////////////////////////////////////

     dm.qcursos.CLOSE;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;


procedure Tfrm_excurso.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_excurso.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_excurso.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_excurso.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
frm_prncipal.resultado.visible:= false;
frm_prncipal.origem.visible:= true;
end;

end.
