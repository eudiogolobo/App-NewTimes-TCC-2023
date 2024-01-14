unit U_caduser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, data.DB;

type
  Tfrm_caduser = class(TForm)
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
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    ScrollBar1: TScrollBar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
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
  frm_caduser: Tfrm_caduser;


implementation

{$R *.dfm}
uses
U_dm,U_altuser,U_INICIO,  U_pqdeluser,U_deluserpas, U_principalpas;

procedure Tfrm_caduser.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Voc� deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
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

procedure Tfrm_caduser.btn_salvarClick(Sender: TObject);
begin

if (edit1.Text='') or (edit2.Text='') or (edit3.Text='') or (edit4.Text='') OR (cb1.ItemIndex=-1)  then
    begin
    showmessage('Campo obtigat�rio em branco!') ;
    end
    else
  BEGIN
  IF (EDIT4.Text=EDIT3.Text) THEN
     begin
      if cb1.ItemIndex=1 then
      begin
        with dm.tbuser do
         begin
           close;
           sql.clear;
           sql.Add('insert into usuarios (nome,login,senha,Tipo,ProfessorCod) values (:nome,:login,:senha,:Tipo,:ProfessorCod)');
           parambyname('nome').AsString:= edit1.Text;
           parambyname('login').AsString:= edit2.Text;
           parambyname('senha').AsString:= edit4.Text;
           parambyname('Tipo').AsString:= cb1.text;
           parambyname('ProfessorCod').AsInteger:= dm.qprofuserid.value;
           execsql;
         end;

         dm.tbuser.open;
         dm.tbuser.last;

        /// inserindo em acoes

      WITH dm.tbControleAcoes do
       begin
         close;
         sql.clear;
         sql.add('insert into controledeacoes (UsuarioCodCad ,DataCad,HoraCad,CodTabela,id_tabela_ref) values (:UsuarioCodCad ,:DataCad,:HoraCad,:CodTabela,:id_tabela_ref)');
         parambyname('UsuarioCodCad').asinteger:= logado;
         parambyname('DataCad').asdate:= date();
         parambyname('HoraCad').astime:= time() ;
         parambyname('CodTabela').asinteger:= 5;
         parambyname('id_tabela_ref').asinteger:= dm.tbuserid.Value;
         execsql;
       end;

       frm_inicio := Tfrm_inicio.Create(self);
       frm_inicio.Parent:= frm_prncipal.panel2;
       frm_inicio.Align:= alClient;
       frm_inicio.BorderStyle:= bsNone;
       frm_inicio.WindowState :=wsMaximized;
       frm_inicio.show;
        showmessage('Cadastro salvo com sucesso');

      end;
      if cb1.ItemIndex=0 then
      begin
        with dm.tbuser do
         begin
          close;
           sql.clear;
           sql.Add('insert into usuarios (nome,login,senha,Tipo,ProfessorCod) values (:nome,:login,:senha,:Tipo,:ProfessorCod)');
           parambyname('nome').AsString:= edit1.Text;
           parambyname('login').AsString:= edit2.Text;
           parambyname('senha').AsString:= edit4.Text;
           parambyname('Tipo').AsString:= cb1.text;
           parambyname('ProfessorCod').AsInteger:= -1;
           execsql;
         end;

         dm.tbuser.open;
         dm.tbuser.last;


         /// inserindo em acoes

      WITH dm.tbControleAcoes do
       begin
         close;
         sql.clear;
         sql.add('insert into controledeacoes (UsuarioCodCad ,DataCad,HoraCad,CodTabela,id_tabela_ref) values (:UsuarioCodCad ,:DataCad,:HoraCad,:CodTabela,:id_tabela_ref)');
         parambyname('UsuarioCodCad').asinteger:= logado;
         parambyname('DataCad').asdate:= date();
         parambyname('HoraCad').astime:= time() ;
         parambyname('CodTabela').asinteger:= 5;
         parambyname('id_tabela_ref').asinteger:= dm.tbuserid.Value;
         execsql;
       end;

       frm_inicio := Tfrm_inicio.Create(self);
       frm_inicio.Parent:= frm_prncipal.panel2;
       frm_inicio.Align:= alClient;
       frm_inicio.BorderStyle:= bsNone;
       frm_inicio.WindowState :=wsMaximized;
       frm_inicio.show;
        showmessage('Cadastro salvo com sucesso');

      end;
   end
   else
   showmessage('As senhas n�o coincidem.')
   end;
end;

procedure Tfrm_caduser.CB1Change(Sender: TObject);
begin
if cb1.ItemIndex=0 then
 begin
  dm.qprofessor.CLOSE;
 txt_buscar.CLEAR;
 dbEdit1.CLEAR;
 dbEdit5.CLEAR;
 dbEdit3.CLEAR;

  panel5.Visible:=false;

  pnl_salvar.top:=480;
  pnl_cancelar.top:=480;
   scrollbar1.position:= 22;

  panel1.Height:= 575;
  scrollbar1.Max:= 575;
 end;

 if cb1.ItemIndex=1 then
 begin
  panel5.Visible:=true;

  pnl_salvar.top:=732;
  pnl_cancelar.top:=732;

  panel1.Height:= 832;
  scrollbar1.Max:= 832;

 end;

end;

procedure Tfrm_caduser.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_caduser.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_caduser.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_caduser.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_caduser.ScrollBar1Change(Sender: TObject);
begin
Panel1.Top:= -scrollbar1.position;
end;

procedure Tfrm_caduser.SpeedButton1Click(Sender: TObject);
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
procedure Tfrm_caduser.SpeedButton2Click(Sender: TObject);
begin
codigoprof:=1;
application.CreateForm(Tfrm_pqdeluser, frm_pqdeluser);
frm_pqdeluser.showmodal;
end;

end.
