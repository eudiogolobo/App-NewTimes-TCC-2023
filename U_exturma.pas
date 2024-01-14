unit U_exturma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_exturma = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    cb2: TComboBox;
    Panel4: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    dtp2: TDateTimePicker;
    Panel11: TPanel;
    Label6: TLabel;
    cb1: TComboBox;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    dtp1: TDateTimePicker;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    cb3: TComboBox;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    ScrollBar1: TScrollBar;
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  frm_exturma: Tfrm_exturma;

implementation

{$R *.dfm}
uses
u_dm, u_inicio, u_principalpas;

procedure Tfrm_exturma.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Deseja mesmo exclu�r essa turma?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////

       //excluindo matricula

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

  with dm.tbturma do
    begin
      close;
      sql.Clear;
      sql.Add('delete from turmas where id_turmas = :aquio ');
      ParamByName('aquio').AsInteger:= dm.qturmasid_turmas.Value ;
      execsql;
    end;


  dm.tbcursos.close;
  dm.qcursos.close;
  dm.qturmas.Close;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  showmessage('Turma exclu�da com sucesso!');
  end;


end;

procedure Tfrm_exturma.btn_salvarClick(Sender: TObject);
begin
  dm.tbcursos.close;
  dm.qcursos.close;
  dm.qturmas.Close;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
end;

procedure Tfrm_exturma.FormCreate(Sender: TObject);
begin
/// careegando cb1 com cursos
    dm.tbcursos.open;
 begin
    dm.tbcursos.First;
    while not dm.tbcursos.Eof do
     begin
     cb1.Items.Add(dm.tbcursosnome.value);
     dm.tbcursos.Next;
     end;
 end;
 // pegando cod do nome do curso
   with dm.qcursos do
 begin
    close;
    sql.Clear;
    sql.Add('select * from cursos where CursosId= :codigozin');
    parambyname('codigozin').aSinteger:= dm.qturmasCursoCod.value;
    open;
 end;

edit1.Text:= dm.qturmasTurma.Text;

 dtp1.Date:=  dm.qturmasDataInicio.value;

 dtp2.Date:=  dm.qturmasDataFinal.value;

 cb1.ItemIndex:= cb1.Items.IndexOf(dm.qcursosNome.Text);

 cb2.ItemIndex:= cb2.Items.IndexOf(dm.qturmasTurno.Text);

 cb3.ItemIndex:= cb3.Items.IndexOf(dm.qturmasStatus.Text);
end;

procedure Tfrm_exturma.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_exturma.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_exturma.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_exturma.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_exturma.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
