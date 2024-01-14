unit U_lancamento_notas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, u_dm, Vcl.Mask;

type
  Tfrm_lacamento_notas = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel33: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label4: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    pnl_excluir: TPanel;
    btn_excluir: TSpeedButton;
    Label3: TLabel;
    lb_total: TLabel;
    cb2: TComboBox;
    Edit1: TEdit;
    Panel6: TPanel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    ScrollBar1: TScrollBar;
    Panel35: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_excluirClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lacamento_notas: Tfrm_lacamento_notas;
  idaluno:string;

implementation

{$R *.dfm}
uses
U_visao_geral_notas,U_lancamento_notas_quadro, U_cad_avaliacao,U_principalpas;

procedure Tfrm_lacamento_notas.btn_excluirClick(Sender: TObject);
begin


  frm_visao_geral_notas := Tfrm_visao_geral_notas.Create(Self);

  frm_visao_geral_notas.Parent:= frm_prncipal.panel2;
  frm_visao_geral_notas.Align:= alClient;
  frm_visao_geral_notas.BorderStyle:= bsNone;
  frm_visao_geral_notas.WindowState :=wsMaximized;
  frm_visao_geral_notas.Position :=poMainFormCenter;
  frm_visao_geral_notas.Show;


end;

procedure Tfrm_lacamento_notas.DBGrid1CellClick(Column: TColumn);
begin
application.CreateForm(Tfrm_lacamento_notas_quadro, frm_lacamento_notas_quadro);
frm_lacamento_notas_quadro.ShowModal;

end;

procedure Tfrm_lacamento_notas.DBGrid1MouseMove(Sender: TObject;
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

procedure Tfrm_lacamento_notas.FormCreate(Sender: TObject);
  begin
    with dm.qnotas do
           begin
           close;
            sql.clear;
            sql.Add('select a.id,a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id, b.AlunoCod, c.id, c.nome');
            sql.Add('from notas as a, matricula as b, alunos as c');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and a.AvaliacaoCod = :avcod ');
            parambyname('avcod').asinteger:= dm.qavaliacaoid_1.Value;
            open;
            lb_total.Caption:=inttostr(dm.qnotas.RecordCount);
           end;

        cb2.ItemIndex:=cb2.Items.IndexOf(dm.qavaliacaotipo.Value);
        edit1.Text:=  (dm.qavaliacaoturma.Value);
        maskedit1.Text:=    datetostr(dm.qavaliacaodata.Value);

end;

procedure Tfrm_lacamento_notas.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_lacamento_notas.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_lacamento_notas.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_lacamento_notas.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
