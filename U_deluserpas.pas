unit U_deluserpas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_deluser = class(TForm)
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
    procedure iaClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_deluser: Tfrm_deluser;

implementation

{$R *.dfm}
uses
u_dm, U_pqdeluser, U_INICIO,U_PRINCIPALPAS;

procedure Tfrm_deluser.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Voc� deseja mesmo exclu�r esse usu�rio?',mtConfirmation,[mbyes, mbno],0)=mryes then
begin
        with dm.tbcontroleacoes do
    begin
    close;
    sql.clear;
    sql.Add('delete from controledeacoes where UsuarioCodCad = :idex');
    parambyname('idex').AsInteger:= logado;
    execsql;
  end;

   with dm.tbuser do
    begin
    close;
    sql.clear;
    sql.Add('delete from usuarios where id = :idex');
    parambyname('idex').AsInteger:= dm.qusuariosid.value;
    execsql;
  end;
  frm_inicio := Tfrm_inicio.Create(self);
      frm_inicio.Parent:= frm_prncipal.panel2;
      frm_inicio.Align:= alClient;
      frm_inicio.BorderStyle:= bsNone;
      frm_inicio.WindowState :=wsMaximized;
      frm_inicio.show;
      showmessage('Usu�rio exclu�do com sucesso');
end;

end;

procedure Tfrm_deluser.btn_salvarClick(Sender: TObject);

begin
  //////////////////////////////////////////

    frm_inicio := Tfrm_inicio.Create(self);
      frm_inicio.Parent:= frm_prncipal.panel2;
      frm_inicio.Align:= alClient;
      frm_inicio.BorderStyle:= bsNone;
      frm_inicio.WindowState :=wsMaximized;
      frm_inicio.show;


end;

procedure Tfrm_deluser.FormCreate(Sender: TObject);
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

    pnl_salvar.top:=732;
    pnl_cancelar.top:=732;

    panel1.Height:= 832;
    scrollbar1.Max:= 832;
 end;

end;

procedure Tfrm_deluser.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_deluser.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_deluser.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_deluser.iaClick(Sender: TObject);
begin
if dm.tbuser.Locate('id', edit1.text,[]) then
 begin
 if MessageDlg('Voc� dejesa mesmo deletar o usu�rio?',mtConfirmation,[mbyes, mbno],0)=mryes then
    begin
    dm.tbuser.delete;
    showmessage('Deletado com Sucesso!');
    dm.FDTransaction1.StartTransaction;
    dm.FDTransaction1.CommitRetaining;
    end
   else
   begin
     dm.tbuser.Cancel;
     dm.tbuser.CLOSE;
   end;
 end;

end;

procedure Tfrm_deluser.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_deluser.ScrollBar1Change(Sender: TObject);
begin
Panel1.Top:= -scrollbar1.position;
end;

procedure Tfrm_deluser.SpeedButton1Click(Sender: TObject);
begin
if dm.tbuser.Locate('id', edit1.text,[]) then
 begin
 if MessageDlg('Voc� confirma a exclus�o desse usu�rio?',mtConfirmation,[mbyes, mbno],0)=mryes then
    begin
    dm.tbuser.delete;
   showmessage('Exclu�do com Sucesso!');
    dm.FDTransaction1.StartTransaction;
 dm.FDTransaction1.CommitRetaining;
    end;
 end
 else
 begin
   dm.tbuser.Cancel;
   dm.tbuser.CLOSE;
 end;
end;

procedure Tfrm_deluser.SpeedButton2Click(Sender: TObject);
begin
if edit1.Text<>'' then
 begin
  dm.tbuser.Open();
  if dm.tbuser.Locate('id', edit1.text,[]) then
   begin
   if MessageDlg('Voc� confirma o usu�rio?',mtConfirmation,[mbyes, mbno],0)=mryes then
    begin
      dm.tbuser.Edit;

      end
    else
    begin
    dm.tbuser.Cancel;
    dm.tbuser.close;
    end;

   end;
  end

  else
   showmessage('Nenhum ID escrito!');

end;

procedure Tfrm_deluser.SpeedButton4Click(Sender: TObject);
begin
application.CreateForm(Tfrm_pqdeluser,  frm_pqdeluser);
 frm_pqdeluser.ShowModal;
end;

end.
