unit U_cad_professor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls,Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage;

type
  Tfrm_cad_professor = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    Panel4: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    DBEdit4: TDBEdit;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    DBEdit5: TDBEdit;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    DBEdit6: TDBEdit;
    Panel15: TPanel;
    Label8: TLabel;
    Panel16: TPanel;
    DBEdit7: TDBEdit;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Panel6: TPanel;
    DBEdit2: TDBEdit;
    Panel17: TPanel;
    Label9: TLabel;
    Panel18: TPanel;
    DBEdit8: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    DBEdit3: TDBEdit;
    ScrollBar1: TScrollBar;
    Label10: TLabel;
    Panel23: TPanel;
    Panel21: TPanel;
    Label12: TLabel;
    ListBox1: TListBox;
    Panel19: TPanel;
    Label11: TLabel;
    ListBox2: TListBox;
    Panel20: TPanel;
    Image1: TImage;
    Panel22: TPanel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBar2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_professor: Tfrm_cad_professor;

implementation

{$R *.dfm}

uses
u_dm, u_inicio, u_principalpas;

procedure Tfrm_cad_professor.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Voc� perder� tudo, deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////

  dm.tbprofessor.Cancel;
  dm.tbprofessor.close;
    frm_inicio := Tfrm_inicio.Create(self);
      frm_inicio.Parent:= frm_prncipal.panel2;
      frm_inicio.Align:= alClient;
      frm_inicio.BorderStyle:= bsNone;
      frm_inicio.WindowState :=wsMaximized;
      frm_inicio.show;

  end;
end;

procedure Tfrm_cad_professor.btn_salvarClick(Sender: TObject);
var
i:integer;
begin
if (dbedit1.text<>'')  and (dbedit3.text<>'') and (dbedit5.text<>'') then
 begin
  if dm.tbprofessor.State in [dsinsert]  then
   begin
     dm.tbprofessor.Post;

   end;

     dm.tbprofessor.last;

    for i := 1 to listbox2.items.Count -1 do
   begin
     with dm.qturmas do
     begin
       close;
       sql.clear;
       sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
       sql.Add('from turmas as a, cursos as b');
       sql.Add('where a.CursoCod = b.CursosId and a.turma= :turmasid');
       parambyname('turmasid').asinteger:= strtoint(listbox2.items[i]) ;
       open;

     end;

     with dm.tbturmaprofessor do
     begin
       close;
       sql.clear;
       sql.add('insert into turma_professor (TurmaCod, ProfessorCod) values (:TurmaCod,:ProfessorCod) ');
       parambyname('TurmaCod').asinteger:= dm.qturmasid_turmas.Value;
       parambyname('ProfessorCod').asinteger:= dm.tbprofessorid.Value;
       execsql;

     end;
   end;

   /// inserindo em acoes

      WITH dm.tbControleAcoes do
     begin
       close;
       sql.clear;
       sql.add('insert into controledeacoes (UsuarioCodCad ,DataCad,HoraCad,CodTabela,id_tabela_ref) values (:UsuarioCodCad ,:DataCad,:HoraCad,:CodTabela,:id_tabela_ref)');
       parambyname('UsuarioCodCad').asinteger:= logado;
       parambyname('DataCad').asdate:= date();
       parambyname('HoraCad').astime:= time() ;
       parambyname('CodTabela').asinteger:= 4;
       parambyname('id_tabela_ref').asinteger:= dm.tbprofessorid.Value;
       execsql;
     end;


   dm.tbprofessor.close;
   frm_inicio := Tfrm_inicio.Create(self);
   frm_inicio.Parent:= frm_prncipal.panel2;
   frm_inicio.Align:= alClient;
   frm_inicio.BorderStyle:= bsNone;
   frm_inicio.WindowState :=wsMaximized;
   frm_inicio.show;
   showmessage('Cadastro salvo com sucesso');

   end
    else
   showmessage('Campo obrigat�rio em branco')
end;

procedure Tfrm_cad_professor.Button1Click(Sender: TObject);
var
i:integer;
begin

end;

procedure Tfrm_cad_professor.FormCreate(Sender: TObject);
begin
dm.tbprofessor.close();
dm.tbprofessor.open();
dm.tbprofessor.Append;

 with dm.QTURMAS_PROF do
 begin
   close;
   sql.clear;
   sql.add('select * from turmas where status= :status');
   parambyname('status').asstring:='ATIVO';
   open;

 end;

 dm.QTURMAS_PROF.First;
 while not dm.QTURMAS_PROF.eof do
 begin
 listbox1.items.Add(dm.QTURMAS_PROFTurma.Text);
 dm.QTURMAS_PROF.Next;
 end;

end;

procedure Tfrm_cad_professor.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_cad_professor.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cad_professor.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_cad_professor.Image1Click(Sender: TObject);
var
i:integer;
begin
 if listbox1.ItemIndex>0 then
 begin
  i:= listbox1.itemindex;
  listbox2.items.add(listbox1.Items[i]);
  ListBox1.Items.Delete( ListBox1.ItemIndex );
 end;


end;

procedure Tfrm_cad_professor.Image2Click(Sender: TObject);
var
i:integer;
begin
if listbox2.ItemIndex>0 then
  begin
  i:= listbox2.itemindex;
  listbox1.items.add(listbox2.Items[i]);
  ListBox2.Items.Delete( ListBox2.ItemIndex );
  end;


end;

procedure Tfrm_cad_professor.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_cad_professor.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_cad_professor.ScrollBar2Change(Sender: TObject);
begin
panel20.Top:= -scrollbar1.position;
end;

end.
