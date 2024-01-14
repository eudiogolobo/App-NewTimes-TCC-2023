unit U_alt_professor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  Tfrm_alt_professor = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Label10: TLabel;
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
    ScrollBar1: TScrollBar;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    nomeCadastro: TLabel;
    DataCad: TLabel;
    HoraCad: TLabel;
    NomeEdit: TLabel;
    DataEdit: TLabel;
    HoraEdit: TLabel;
    Panel24: TPanel;
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  frm_alt_professor: Tfrm_alt_professor;

implementation

{$R *.dfm}

uses
u_dm, u_pesq_professor, u_inicio, u_principalpas;

procedure Tfrm_alt_professor.btn_cancelarClick(Sender: TObject);
begin
 if MessageDlg('Voc� perder� as altera��es j� feitas, deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////
  dm.tbprofessor.Close;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;
end;

procedure Tfrm_alt_professor.btn_salvarClick(Sender: TObject);
var
i:integer;
begin
 if MessageDlg('Voc� deseja salvar as altera��o de dados desse professor?',mtConfirmation,[mbyes, mbno],0)=mryes then
 begin
            begin
            dm.qprofessor.Edit;
            dm.qprofessor.post;
            end;

     with dm.tbturmaprofessor do
     begin
       close;
       sql.clear;
       sql.add('delete from turma_professor where ProfessorCod= :ProfessorCod ');
       parambyname('ProfessorCod').asinteger:= CodAltDelProfessor;
       execsql;

     end;



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
       parambyname('ProfessorCod').asinteger:= CodAltDelProfessor;
       execsql;

     end;
   end;

    /// atualiza edicao tabela acoes
              WITH dm.tbControleAcoes do
             begin
               close;
               sql.clear;
               sql.add('update controledeacoes set UsuarioCodAlt = :UsuarioCodAlt ,DataAlt = :DataAlt, HoraAlt= :HoraAlt where CodTabela= :CodTabela and id_tabela_ref = :idaa ');
               parambyname('UsuarioCodAlt').asinteger:= logado;
               parambyname('DataAlt').asdate:= date();
               parambyname('HoraAlt').astime:= time() ;
               parambyname('idaa').asinteger:= dm.qprofessorid.Value;
               parambyname('CodTabela').asinteger:=4;
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

   end;

end;

procedure Tfrm_alt_professor.FormCreate(Sender: TObject);
var
i:integer;
begin
    with dm.qturmaprofessor do
     begin
       close;
       sql.clear;
       sql.add('select * from turma_professor where ProfessorCod= :ProfessorCod');
       parambyname('ProfessorCod').asinteger:= CodAltDelProfessor;
       open;
     end;

     dm.qturmaprofessor.First;

     while not dm.qturmaprofessor.eof do
     begin

       with dm.qturmas do
       begin
         close;
         sql.clear;
         sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
         sql.Add('from turmas as a, cursos as b');
         sql.Add('where a.CursoCod = b.CursosId and  a.id_turmas = :IdTurmas');
         parambyname('IdTurmas').asinteger:= dm.qturmaprofessorTurmaCod.Value;
         open;
       end;

     listbox2.items.Add(dm.qturmasTurma.Text);

     dm.qturmaprofessor.Next;
     end;

     /////////////////////////
     ///
      with dm.qturmas do
     begin
       close;
       sql.clear;
       sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
       sql.Add('from turmas as a, cursos as b');
       sql.Add('where a.CursoCod = b.CursosId and a.status= :status');
       parambyname('status').asstring:='ATIVO';
       open;

     end;


     dm.qturmas.First;
     while not dm.qturmas.eof do
     begin
      if ListBox2.Items.IndexOf(dm.qturmasTurma.value)<=0 then
      begin
      ListBox1.Items.Add(dm.qturmasTurma.value)
      end;

       dm.qturmas.Next;
     end;


     /// buscando inf
 with dm.qControleAcoes do
 begin
   close;
   sql.clear;
   sql.add('select * from controledeacoes where CodTabela = :CodTabela and id_tabela_ref = :idad ');
   parambyname('idad').asinteger:= dm.qprofessorid.Value;
   parambyname('CodTabela').asinteger:=4;
   open;
 end;

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :idd');
   parambyname('idd').AsInteger:= dm.qControleAcoesUsuarioCodCad.value;
   open;
 end;

nomeCadastro.Caption:=  dm.qusuariosnome.Value;
datacad.Caption:=  datetostr(dm.qControleAcoesDataCad.value);
horacad.Caption:=  timetostr(dm.qControleAcoesHoraCad.value);

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :id');
   parambyname('id').AsInteger:= dm.qControleAcoesUsuarioCodAlt.value;
   open;

   if recordcount<>0 then
   begin
     nomeEdit.Caption:= dm.qusuariosnome.Value;
    dataedit.Caption:= datetostr(dm.qControleAcoesDataAlt.value);
    horaedit.Caption:= timetostr(dm.qControleAcoesHoraalt.value);
   end;
 end;



end;

procedure Tfrm_alt_professor.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_alt_professor.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_alt_professor.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_alt_professor.Image1Click(Sender: TObject);

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


procedure Tfrm_alt_professor.Image2Click(Sender: TObject);
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

procedure Tfrm_alt_professor.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_alt_professor.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
