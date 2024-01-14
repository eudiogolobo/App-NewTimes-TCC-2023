unit U_meu_perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_meu_perfil = class(TForm)
    Panel1: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel4: TPanel;
    Label5: TLabel;
    CB1: TComboBox;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    Edit2: TEdit;
    Label2: TLabel;
    Panel21: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_meu_perfil: Tfrm_meu_perfil;

implementation

{$R *.dfm}
uses
u_dm, u_principalpas,u_inicio;

procedure Tfrm_meu_perfil.FormCreate(Sender: TObject);
begin
 with dm.qusuarios do
    begin
    close;
    sql.clear;
    sql.Add('select * from usuarios where id= :idus');
    parambyname('idus').asinteger:=LOGADO;
    open;
  end;

 edit1.Text:= dm.qusuariosnome.text;
 edit2.Text:= dm.qusuarioslogin.text;


 cb1.itemindex:= cb1.Items.IndexOf(dm.qusuariosTipo.value);

end;

procedure Tfrm_meu_perfil.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_meu_perfil.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
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

end.
