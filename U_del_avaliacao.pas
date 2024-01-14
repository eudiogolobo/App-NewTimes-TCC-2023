unit U_del_avaliacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrm_del_avaliacao = class(TForm)
    Panel2: TPanel;
    Label12: TLabel;
    Label4: TLabel;
    Panel35: TPanel;
    Label2: TLabel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    Panel20: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox3: TComboBox;
    Panel7: TPanel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Panel9: TPanel;
    Label15: TLabel;
    Panel11: TPanel;
    ComboBox1: TComboBox;
    Panel12: TPanel;
    Label17: TLabel;
    ComboBox5: TComboBox;
    Panel3: TPanel;
    Label6: TLabel;
    Memo1: TMemo;
    Panel4: TPanel;
    Label5: TLabel;
    Panel5: TPanel;
    Edit1: TEdit;
    Panel6: TPanel;
    Label7: TLabel;
    Panel10: TPanel;
    cb2: TComboBox;
    Panel8: TPanel;
    Label8: TLabel;
    Panel13: TPanel;
    dtp2: TDateTimePicker;
    Panel14: TPanel;
    Label9: TLabel;
    cb1: TComboBox;
    Panel15: TPanel;
    Label10: TLabel;
    Panel16: TPanel;
    dtp1: TDateTimePicker;
    Panel17: TPanel;
    Panel18: TPanel;
    Label11: TLabel;
    cb3: TComboBox;
    ScrollBar1: TScrollBar;
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_del_avaliacao: Tfrm_del_avaliacao;

implementation

{$R *.dfm}
uses
u_dm, u_principalpas,u_inicio,U_principal_professor;

procedure Tfrm_del_avaliacao.btn_cancelarClick(Sender: TObject);

begin
    with dm.tbnotas do
   begin
     close;
     sql.Clear;
     sql.Add('delete from notas where AvaliacaoCod = :idava ');
     parambyname('idava').AsInteger:= dm.qavaliacaoid_1.Value;
     ExecSQL;

   end;

  with dm.tbavaliacao do
   begin
     close;
     sql.Clear;
     sql.Add('delete from avaliacao where id = :idav ');
     parambyname('idav').AsInteger:= dm.qavaliacaoid_1.Value;
     ExecSQL;

   end;
         if professor=true then
   begin
    frm_principal_professor := Tfrm_principal_professor.Create(self);
    frm_principal_professor.Parent:= frm_prncipal.panel2;
    frm_principal_professor.Align:= alClient;
    frm_principal_professor.BorderStyle:= bsNone;
    frm_principal_professor.WindowState :=wsMaximized;
    frm_principal_professor.show;

   end
   else
   begin
     frm_inicio := Tfrm_inicio.Create(self);
    frm_inicio.Parent:= frm_prncipal.panel2;
    frm_inicio.Align:= alClient;
    frm_inicio.BorderStyle:= bsNone;
    frm_inicio.WindowState :=wsMaximized;
    frm_inicio.show;
   end;

        showmessage('Avaliação excluída com sucesso');

end;

procedure Tfrm_del_avaliacao.btn_salvarClick(Sender: TObject);
begin
       if professor=true then
   begin
    frm_principal_professor := Tfrm_principal_professor.Create(self);
    frm_principal_professor.Parent:= frm_prncipal.panel2;
    frm_principal_professor.Align:= alClient;
    frm_principal_professor.BorderStyle:= bsNone;
    frm_principal_professor.WindowState :=wsMaximized;
    frm_principal_professor.show;

   end
   else
   begin
     frm_inicio := Tfrm_inicio.Create(self);
    frm_inicio.Parent:= frm_prncipal.panel2;
    frm_inicio.Align:= alClient;
    frm_inicio.BorderStyle:= bsNone;
    frm_inicio.WindowState :=wsMaximized;
    frm_inicio.show;
   end;

end;

procedure Tfrm_del_avaliacao.FormCreate(Sender: TObject);
var
i:integer;
begin
maskedit1.Text:=FormatDateTime ('dd/mm/yyyy',now);

dm.tbcursos.Open();
 dm.tbcursos.First;

 while not dm.tbcursos.Eof do
 begin
 cb1.Items.Add(dm.tbcursosnome.Value);
 dm.tbcursos.Next;
 end;

 dm.tbcursos.Close;
 //
   with dm.qturmas do
 begin
    close;
    sql.Clear;
    sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
    sql.Add('from turmas as a, cursos as b');
    sql.Add('where a.CursoCod = b.CursosId and a.id_turmas= :codigozin');
    parambyname('codigozin').aSinteger:= dm.qavaliacaoTurmaCod.Value;
    open;
 end;

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

  /// carregando cb de modulos

  for i:=0 to dm.qcursosModulos.Value do
  begin
    combobox3.Items.Add(inttostr(i));
  end;



combobox5.itemindex:=combobox5.Items.IndexOf(inttostr(dm.qavaliacaoTotalAulas.Value));
combobox3.itemindex:=combobox3.Items.IndexOf(inttostr(dm.qavaliacaoModuloRef.Value));
combobox1.itemindex:=combobox1.Items.IndexOf(dm.qavaliacaoTipo.Value);
memo1.Text:= dm.qavaliacaoDescricao.text;
end;


procedure Tfrm_del_avaliacao.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_del_avaliacao.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_del_avaliacao.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_del_avaliacao.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_del_avaliacao.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
