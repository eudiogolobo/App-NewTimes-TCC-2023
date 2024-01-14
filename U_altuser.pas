unit U_altuser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfrm_altuser = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    Edit4: TEdit;
    Panel4: TPanel;
    Label5: TLabel;
    CB1: TComboBox;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    Edit2: TEdit;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    Edit3: TEdit;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label11: TLabel;
    Label9: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    DBEdit1: TDBEdit;
    Panel15: TPanel;
    Label8: TLabel;
    Panel16: TPanel;
    DBEdit5: TDBEdit;
    Panel19: TPanel;
    Label10: TLabel;
    Panel20: TPanel;
    DBEdit3: TDBEdit;
    Panel22: TPanel;
    txt_buscar: TEdit;
    Panel17: TPanel;
    SpeedButton1: TSpeedButton;
    Panel18: TPanel;
    SpeedButton2: TSpeedButton;
    ScrollBar1: TScrollBar;
    Panel21: TPanel;
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
    Panel23: TPanel;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure CB1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_altuser: Tfrm_altuser;

implementation

{$R *.dfm}
uses
u_dm,u_inicio,u_principalpas ,U_pesqaluser,u_pqdeluser;

procedure Tfrm_altuser.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Voc� perder� as altera��es j� feitas, deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////

    frm_inicio := Tfrm_inicio.Create(self);
      frm_inicio.Parent:= frm_prncipal.panel2;
      frm_inicio.Align:= alClient;
      frm_inicio.BorderStyle:= bsNone;
      frm_inicio.WindowState :=wsMaximized;
      frm_inicio.show;

  end;
end;

procedure Tfrm_altuser.btn_salvarClick(Sender: TObject);
  BEGIN
  IF (EDIT4.Text=EDIT3.Text) THEN
     begin
      if cb1.ItemIndex=1 then
      begin
         if (edit1.Text='') or (edit2.Text='') or (edit3.Text='') or (edit4.Text='') OR (cb1.ItemIndex=-1) OR (dbedit1.Text='')  then
          begin
          showmessage('Campo obtigat�rio em branco!') ;
          end
          else
          begin
            with dm.tbuser do
             begin
               close;
               sql.clear;
               sql.Add('update usuarios set nome= :nome,login= :login,senha= :senha,Tipo= :Tipo,ProfessorCod= :ProfessorCod where id= :id');
               parambyname('nome').AsString:= edit1.Text;
               parambyname('login').AsString:= edit2.Text;
               parambyname('senha').AsString:= edit4.Text;
               parambyname('Tipo').AsString:= cb1.text;
               parambyname('ProfessorCod').AsInteger:= dm.qprofuserid.value;
               parambyname('id').AsInteger:= user;
               execsql;
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
               parambyname('idaa').asinteger:= user;
               parambyname('CodTabela').asinteger:=5;
               execsql;
             end;


           frm_inicio := Tfrm_inicio.Create(self);
           frm_inicio.Parent:= frm_prncipal.panel2;
           frm_inicio.Align:= alClient;
           frm_inicio.BorderStyle:= bsNone;
           frm_inicio.WindowState :=wsMaximized;
           frm_inicio.show;

           showmessage('Cadastro atualizado com sucesso');
           end;

      end;


      if cb1.ItemIndex=0 then
      begin

        with dm.tbuser do
         begin
           close;
           sql.clear;
           sql.Add('update usuarios set nome= :nome,login= :login,senha= :senha,Tipo= :Tipo,ProfessorCod= :ProfessorCod where id= :id');
           parambyname('nome').AsString:= edit1.Text;
           parambyname('login').AsString:= edit2.Text;
           parambyname('senha').AsString:= edit4.Text;
           parambyname('Tipo').AsString:= cb1.text;
           parambyname('ProfessorCod').AsInteger:= -1;
           parambyname('id').AsInteger:= user;
           execsql;
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
               parambyname('idaa').asinteger:= user;
               parambyname('CodTabela').asinteger:=5;
               execsql;
             end;

       frm_inicio := Tfrm_inicio.Create(self);
       frm_inicio.Parent:= frm_prncipal.panel2;
       frm_inicio.Align:= alClient;
       frm_inicio.BorderStyle:= bsNone;
       frm_inicio.WindowState :=wsMaximized;
       frm_inicio.show;
       showmessage('Cadastro atualizado com sucesso');


     end;
    end
   else
   showmessage('As senhas n�o coincidem.')

 end;



procedure Tfrm_altuser.CB1Change(Sender: TObject);
begin
if cb1.ItemIndex=0 then
 begin

  panel5.Visible:=false;


    panel21.Top:=477;

    panel1.Height:= 738;
    scrollbar1.Max:= 738;

   scrollbar1.position:= 170;


 end;

 if cb1.ItemIndex=1 then
 begin
   with dm.qprofuser do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores where id = :id ');
    parambyname('id').AsInteger:=dm.qusuariosProfessorCod.Value;
    open;
    end;
    dbedit1.Text:= dm.qprofusernome.Text;
    dbedit5.Text:= dm.qprofuseremail.Text;
    dbedit3.Text:= dm.qprofusercpf.Text;


  panel5.Visible:=true;


    panel21.Top:=687;

    panel1.Height:= 951;
    scrollbar1.Max:= 951;
 end;

end;

procedure Tfrm_altuser.FormCreate(Sender: TObject);
begin
 edit1.Text:= dm.qusuariosnome.text;
 edit2.Text:= dm.qusuarioslogin.text;
 edit4.Text:= dm.qusuariossenha.text;
 edit3.Text:= dm.qusuariossenha.text;
 cb1.itemindex:= cb1.Items.IndexOf(dm.qusuariosTipo.value);

 if dm.qusuariosTipo.value='PROFESSOR' then
 begin
 with dm.qprofuser do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores where id = :id ');
    parambyname('id').AsInteger:=dm.qusuariosProfessorCod.Value;
    open;
    end;
    dbedit1.Text:= dm.qprofusernome.Text;
    dbedit5.Text:= dm.qprofuseremail.Text;
    dbedit3.Text:= dm.qprofusercpf.Text;
    panel5.Visible:=true;


   panel21.Top:=687;

    panel1.Height:= 951;
    scrollbar1.Max:= 951;
 end;

 /// buscando inf
 with dm.qControleAcoes do
 begin
   close;
   sql.clear;
   sql.add('select * from controledeacoes where CodTabela = :CodTabela and id_tabela_ref = :idad ');
   parambyname('idad').asinteger:= dm.qusuariosid.Value;
   parambyname('CodTabela').asinteger:=5;
   open;
 end;

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :idd');
   parambyname('idd').AsInteger:= dm.qControleAcoesUsuarioCodCad.value;
   open;
    if recordcount<>0 then
   begin
    nomeCadastro.Caption:=  dm.qusuariosnome.Value;
      datacad.Caption:=  datetostr(dm.qControleAcoesDataCad.value);
      horacad.Caption:=  timetostr(dm.qControleAcoesHoraCad.value);

   end;


 end;



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

procedure Tfrm_altuser.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_altuser.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_altuser.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_altuser.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_altuser.ScrollBar1Change(Sender: TObject);
begin
Panel1.Top:= -scrollbar1.position;
end;

procedure Tfrm_altuser.SpeedButton1Click(Sender: TObject);
begin
with dm.qprofuser do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores where id = '+txt_buscar.Text+' ');
    open;
    if recordcount<>0 then
    begin

      dbEdit1.Text:= dm.qprofuserNome.text;
      dbEdit5.Text:= dm.qprofuserEmail.text;
      dbEdit3.Text:= dm.qprofuserCPF.text;
    end
    else
    begin
      showmessage('Nenhum professor com esse ID encontrado.')
    end;
 end;
end;

procedure Tfrm_altuser.SpeedButton2Click(Sender: TObject);
begin
codigoprof:=2;
application.CreateForm(Tfrm_pqdeluser, frm_pqdeluser);
frm_pqdeluser.showmodal;
end;

end.
