unit U_pesq_professor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pesquisa_professor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txt_buscar: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    lb_total: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesquisa_professor: Tfrm_pesquisa_professor;
  AltDelProfessor, CodAltDelProfessor:integer;



implementation

{$R *.dfm}
uses
u_inicio,u_dm,U_alt_professor, u_principalpas,U_del_professor;

procedure Tfrm_pesquisa_professor.DBGrid1CellClick(Column: TColumn);
begin
if AltDelProfessor=1 then
  begin
  CodAltDelProfessor:= dm.qprofessorid.value;

  frm_alt_professor := Tfrm_alt_professor.Create(Self);
  frm_alt_professor.Parent:= frm_prncipal.panel2;
  frm_alt_professor.Align:= alClient;
  frm_alt_professor.BorderStyle:= bsNone;
  frm_alt_professor.WindowState :=wsMaximized;
  frm_alt_professor.Position :=poMainFormCenter;
  frm_alt_professor.Show;
  end;

  if AltDelProfessor=2 then
  begin

  CodAltDelProfessor:= dm.qprofessorid.value;

  frm_del_professor := Tfrm_del_professor.Create(Self);

  frm_del_professor.Parent:= frm_prncipal.panel2;
  frm_del_professor.Align:= alClient;
  frm_del_professor.BorderStyle:= bsNone;
  frm_del_professor.WindowState :=wsMaximized;
  frm_del_professor.Position :=poMainFormCenter;
  frm_del_professor.Show;
  end;



end;

procedure Tfrm_pesquisa_professor.DBGrid1MouseMove(Sender: TObject;
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

procedure Tfrm_pesquisa_professor.FormCreate(Sender: TObject);
begin
   with dm.qprofessor do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores');
    open;
    lb_total.Caption:=inttostr(dm.qprofessor.RecordCount);
    if recordcount=0 then
  end;
end;

procedure Tfrm_pesquisa_professor.FormMouseMove(Sender: TObject;
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
end;

procedure Tfrm_pesquisa_professor.Panel1MouseMove(Sender: TObject;
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

procedure Tfrm_pesquisa_professor.SpeedButton1Click(Sender: TObject);

  begin
    with dm.qprofessor do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores where nome like ''%'+txt_buscar.Text+'%''');
    open;
    lb_total.Caption:=inttostr(dm.qprofessor.RecordCount);
  end;

end;

end.
