unit U_del_professor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_del_professor = class(TForm)
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
  frm_del_professor: Tfrm_del_professor;

implementation

{$R *.dfm}
USES
u_dm, u_inicio, u_principalpas,u_pesq_professor;

procedure Tfrm_del_professor.btn_cancelarClick(Sender: TObject);
begin
 if MessageDlg('Voc� deseja mesmo deletar esse professor?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////
  with dm.tbturmaprofessor do
     begin
       close;
       sql.clear;
       sql.add('delete from turma_professor where ProfessorCod= :ProfessorCod ');
       parambyname('ProfessorCod').asinteger:= CodAltDelProfessor;
       execsql;

     end;

  dm.qprofessor.Edit;
  dm.qprofessor.delete;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  showmessage('Cadastro exclu�do com sucesso');
  end;
end;

procedure Tfrm_del_professor.btn_salvarClick(Sender: TObject);
begin


  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
end;

procedure Tfrm_del_professor.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_del_professor.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_del_professor.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_del_professor.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_del_professor.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
