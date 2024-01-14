unit U_cadturma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls,u_dm, Data.DB, Vcl.ComCtrls;

type
  Tfrm_cadturma = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    cb1: TComboBox;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ScrollBar1: TScrollBar;
    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
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
  frm_cadturma: Tfrm_cadturma;

implementation

{$R *.dfm}

uses
u_altturma,u_inicio, u_principalpas, U_exturma;

procedure Tfrm_cadturma.btn_alterarClick(Sender: TObject);
begin

frm_altturma := Tfrm_altturma.Create(Self);

frm_altturma.Parent:= frm_prncipal.panel2;
frm_altturma.Align:= alClient;
frm_altturma.BorderStyle:= bsNone;
frm_altturma.WindowState :=wsMaximized;
frm_altturma.Position :=poMainFormCenter;
frm_altturma.Show;
end;

procedure Tfrm_cadturma.btn_cancelarClick(Sender: TObject);
begin

if MessageDlg('Voc� perder� tudo j� feito, deseja mesmo continuar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////
  dm.tbcursos.close;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;

end;

procedure Tfrm_cadturma.btn_excluirClick(Sender: TObject);
begin
frm_exturma:= Tfrm_exturma.Create(Self);

frm_exturma.Parent:= frm_prncipal.panel2;
frm_exturma.Align:= alClient;
frm_exturma.BorderStyle:= bsNone;
frm_exturma.WindowState :=wsMaximized;
frm_exturma.Position :=poMainFormCenter;
frm_exturma.Show;
end;

procedure Tfrm_cadturma.btn_incluirClick(Sender: TObject);
begin
dm.tbturma.open();
dm.tbturma.Append;
 edit1.SetFocus;
end;

procedure Tfrm_cadturma.btn_salvarClick(Sender: TObject);
var
COD:integer;
begin
   //// VERIFICA��O
if (edit1.Text='') or (COMBOBOX2.ITEMINDEX=-1) or (combobox1.itemindex=-1) or (cb1.ItemIndex=-1)    then
showmessage('Campo obrigat�rio em braco')
else
    begin
      with dm.qcursos do
      begin
        close;
        sql.Clear;
        sql.Add('select * from cursos where Nome=:nome');
        ParamByName('nome').asstring:= cb1.Text ;
        open;
        COD:= dm.qcursosCursosId.value;


      end;
      end;

    with dm.tbturma do
    begin
      close;
      sql.Clear;
      sql.Add('insert into turmas (CursoCod, Turma, Turno, DataInicio, DataFinal,status)VALUES(:CursoCod, :Turma, :Turno, :DataInicio, :DataFinal,:status)');
      ParamByName('CursoCod').AsInteger:= COD ;
      ParamByName('Turma').AsString:= edit1.Text ;
      ParamByName('Turno').AsString:= COMBOBOX2.Text ;
      ParamByName('DataInicio').asdate:= dtp1.date ;
      ParamByName('DataFinal').asdate:= dtp2.date  ;
      ParamByName('status').AsString:= COMBOBOX1.Text ;
      execsql;
    end;

    /// inserindo em acoes
      dm.tbturma.open;
     dm.tbturma.Last;


      WITH dm.tbControleAcoes do
     begin
       close;
       sql.clear;
       sql.add('insert into controledeacoes (UsuarioCodCad ,DataCad,HoraCad,CodTabela,id_tabela_ref) values (:UsuarioCodCad ,:DataCad,:HoraCad,:CodTabela,:id_tabela_ref)');
       parambyname('UsuarioCodCad').asinteger:= logado;
       parambyname('DataCad').asdate:= date();
       parambyname('HoraCad').astime:= time() ;
       parambyname('CodTabela').asinteger:= 3;
       parambyname('id_tabela_ref').asinteger:= dm.tbturmaid_turmas.Value;
       execsql;
     end;


      dm.tbcursos.close;
      dm.qcursos.close;
      dm.qturmas.Close;

      frm_inicio := Tfrm_inicio.Create(self);
      frm_inicio.Parent:= frm_prncipal.panel2;
      frm_inicio.Align:= alClient;
      frm_inicio.BorderStyle:= bsNone;
      frm_inicio.WindowState :=wsMaximized;
      frm_inicio.show;
      showmessage('Cadastro salvo com sucesso');
  end;

procedure Tfrm_cadturma.FormCreate(Sender: TObject);
begin

DM.tbcursos.Close;
dm.tbcursos.open;



  begin
    dm.tbcursos.First;
    while not dm.tbcursos.Eof do
     begin
     cb1.Items.Add(dm.tbcursosNome.Value);
     dm.tbcursos.Next;
     end;
  end;

end;

procedure Tfrm_cadturma.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_cadturma.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cadturma.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_cadturma.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_cadturma.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
