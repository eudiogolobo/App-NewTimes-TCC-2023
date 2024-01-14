unit U_altturma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, u_dm, Vcl.ComCtrls;

type
  Tfrm_altturma = class(TForm)
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
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    nomeCadastro: TLabel;
    DataCad: TLabel;
    HoraCad: TLabel;
    NomeEdit: TLabel;
    DataEdit: TLabel;
    HoraEdit: TLabel;
    Panel23: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_altturma: Tfrm_altturma;


implementation

{$R *.dfm}
uses
u_altpesturma, u_inicio, U_principalpas;

procedure Tfrm_altturma.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Voc� perder� as altera��es j� feitas, deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////
  dm.tbcursos.close;
  dm.qcursos.close;
  dm.qturmas.Close;

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;
end;

procedure Tfrm_altturma.btn_salvarClick(Sender: TObject);
var
idcur:integer;
begin
 //// VERIFICA��O
if (edit1.Text='') or (cb1.ITEMINDEX=-1) or (cb2.itemindex=-1) or (cb3.ItemIndex=-1)    then
showmessage('Campo obrigat�rio em braco')
else
    begin
    if MessageDlg('Voc� deseja salvar as altera��o de dados dessa turma?',mtConfirmation,[mbyes, mbno],0)=mryes then
    begin
      with dm.qcursos do
      begin
        close;
        sql.Clear;
        sql.Add('select * from cursos where Nome=:nomecursopes');
        ParamByName('nomecursopes').asstring:= cb1.Text ;
        open;
        idcur:= dm.qcursosCursosId.value;


      end;


    with dm.tbturma do
    begin
      close;
      sql.Clear;
      sql.Add('update turmas set CursoCod  = :CursoCod , Turma = :Turma , Turno = :Turno , DataInicio = :DataInicio , DataFinal = :DataFinal , status = :status where id_turmas = :aquio');
      ParamByName('aquio').AsInteger:= dm.qturmasid_turmas.Value ;
      ParamByName('CursoCod').AsInteger:= idcur ;
      ParamByName('Turma').AsString:= edit1.Text ;
      ParamByName('Turno').AsString:= cb2.Text ;
      ParamByName('DataInicio').asdate:= dtp1.date ;
      ParamByName('DataFinal').asdate:= dtp2.date  ;
      ParamByName('status').AsString:= cb3.Text ;



      execsql;
    end;
      ///
      WITH dm.tbControleAcoes do
             begin
               close;
               sql.clear;
               sql.add('update controledeacoes set UsuarioCodAlt = :UsuarioCodAlt ,DataAlt = :DataAlt, HoraAlt= :HoraAlt where CodTabela= :CodTabela and id_tabela_ref = :idaa ');
               parambyname('UsuarioCodAlt').asinteger:= logado;
               parambyname('DataAlt').asdate:= date();
               parambyname('HoraAlt').astime:= time() ;
               parambyname('idaa').asinteger:= dm.qturmasid_turmas.Value;
               parambyname('CodTabela').asinteger:=3;
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
 end;
end;

procedure Tfrm_altturma.FormCreate(Sender: TObject);
begin
 /// careegando cb1 com cursos
    dm.tbcursos.open;
 begin
    dm.tbcursos.First;
    while not dm.tbcursos.Eof do
     begin
     cb1.Items.Add(dm.tbcursosnome.value);
     dm.tbcursos.Next;
     end;
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


 /// buscando inf
 with dm.qControleAcoes do
 begin
   close;
   sql.clear;
   sql.add('select * from controledeacoes where CodTabela = :CodTabela and id_tabela_ref = :idad ');
   parambyname('idad').asinteger:= dm.qturmasid_turmas.Value;
   parambyname('CodTabela').asinteger:=3;
   open;
 end;

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :idd');
   parambyname('idd').AsInteger:= dm.qControleAcoesUsuarioCodCad.value;
   open;
 end;

nomeCadastro.Caption:=  dm.qusuariosnome.Value;
datacad.Caption:=  datetostr(dm.qControleAcoesDataCad.value);
horacad.Caption:=  timetostr(dm.qControleAcoesHoraCad.value);

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :id');
   parambyname('id').AsInteger:= dm.qControleAcoesUsuarioCodAlt.value;
   open;

   if recordcount<>0 then
   begin
     nomeEdit.Caption:= dm.qusuariosnome.Value;
    dataedit.Caption:= datetostr(dm.qControleAcoesDataAlt.value);
    horaedit.Caption:= timetostr(dm.qControleAcoesHoraalt.value);
   end;
 end;


end;

procedure Tfrm_altturma.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_altturma.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_altturma.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_altturma.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_altturma.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
