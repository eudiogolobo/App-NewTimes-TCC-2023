unit U_turma_relacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  Tfrm_turma_relacao = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    cb2: TComboBox;
    Panel4: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    dtp2: TDateTimePicker;
    Panel11: TPanel;
    Label6: TLabel;
    cb1: TComboBox;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    dtp1: TDateTimePicker;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    cb3: TComboBox;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    ScrollBar1: TScrollBar;
    procedure SpeedButton4Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_turma_relacao: Tfrm_turma_relacao;
  captura:integer;

implementation

{$R *.dfm}
uses
u_im_turma,U_principalpas, u_dm,U_pes_turma_relacao, u_altpesturma, U_INICIO;

procedure Tfrm_turma_relacao.btn_cancelarClick(Sender: TObject);
begin
frm_inicio := Tfrm_inicio.Create(self);
   frm_inicio.Parent:= frm_prncipal.panel2;
   frm_inicio.Align:= alClient;
   frm_inicio.BorderStyle:= bsNone;
   frm_inicio.WindowState :=wsMaximized;
   frm_inicio.show;
end;

procedure Tfrm_turma_relacao.btn_salvarClick(Sender: TObject);
begin
    frm_turma_documento.label12.caption:= inttostr(dm.qmatricula.RecordCount);
    frm_turma_documento.tr.Preview();


end;

procedure Tfrm_turma_relacao.FormCreate(Sender: TObject);
begin
dm.tbcursos.Open();
 dm.tbcursos.First;

 while not dm.tbcursos.Eof do
 begin
 cb1.Items.Add(dm.tbcursosnome.Value);
 dm.tbcursos.Next;
 end;

 dm.tbcursos.Close;
 // pegando cod do nome do curso
   with dm.qcursos do
 begin
    close;
    sql.Clear;
    sql.Add('select * from cursos where CursosId= :codigozin');
    parambyname('codigozin').aSinteger:= dm.qturmasCursoCod.value;
    open;
 end;

edit1.Text:= dm.qturmasTurma.Text;

 dtp1.Date:=  dm.qturmasDataInicio.value;

 dtp2.Date:=  dm.qturmasDataFinal.value;

 cb1.ItemIndex:= cb1.Items.IndexOf(dm.qcursosNome.Text);

 cb2.ItemIndex:= cb2.Items.IndexOf(dm.qturmasTurno.Text);

 cb3.ItemIndex:= cb3.Items.IndexOf(dm.qturmasStatus.Text);

 ///

 with dm.QMATRICULA do
    begin
      close;
      sql.Clear;
      sql.Add('select a.id,a.AlunoCod,a.DataMatricula, a.TurmaCod, a.SituacaoMatricula, b.id_turmas, b.CursoCod, b.Turma, b.Turno,c.id, c.nome, c.data_nasc,c.naturalidade, d.CursosId, d.Nome, d.Formato, e.AlunoCod, e.cpf, f.AlunoCod, f.f1, f.f2');
      sql.Add('from matricula as a, turmas as b,alunos as c, cursos as d,documentos as e, responsaveis as f');
      sql.Add('where c.id = a.AlunoCod and b.id_turmas= a.TurmaCod and b.CursoCod = d.CursosId and e.AlunoCod = c.id and f.AlunoCod = c.id AND a.TurmaCod = :codturmas  ');
      parambyname('codturmas').AsInteger:= CodAltDelTurma;
      open;
    end;

end;

procedure Tfrm_turma_relacao.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_turma_relacao.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_turma_relacao.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_turma_relacao.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_turma_relacao.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_turma_relacao.SpeedButton4Click(Sender: TObject);
begin
application.CreateForm(Tfrm_pesqimpturma,  frm_pesqimpturma);
 frm_pesqimpturma.ShowModal;
end;

end.
