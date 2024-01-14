unit U_pesquisaCurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfrm_pesquisacurso = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txt_buscar: TEdit;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    lb_total: TLabel;
    cb1: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesquisacurso: Tfrm_pesquisacurso;


implementation

{$R *.dfm}
uses
U_dm,U_principalpas, U_cadastrocurso;

procedure Tfrm_pesquisacurso.DBGrid1MouseMove(Sender: TObject;
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

procedure Tfrm_pesquisacurso.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_pesquisacurso.Panel1MouseMove(Sender: TObject;
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

procedure Tfrm_pesquisacurso.SpeedButton1Click(Sender: TObject);
begin
if cb1.ItemIndex=0 then
  begin
    with dm.qcursos do
    begin
    close;
    sql.clear;
    sql.Add('select * from cursos where nome like ''%'+txt_buscar.Text+'%''');
    open;
    fetchall;
    lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
  end;
 end
 else
 begin
    with dm.qcursos do
    begin
    close;
    sql.clear;
    sql.Add('select * from cursos where nome like ''%'+txt_buscar.Text+'%'' and formato = :frmt');
    parambyname('frmt').asstring:= cb1.Text;
    open;

    fetchall;
    lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
  end;
 end;


end;

procedure Tfrm_pesquisacurso.SpeedButton2Click(Sender: TObject);
begin
application.CreateForm(Tfrm_cadcurso,frm_cadcurso);
frm_cadcurso.ShowModal;
frm_pesquisacurso.close;

end;

end.
