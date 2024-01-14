unit U_altCur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_altCurso = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    DBEdit4: TDBEdit;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel17: TPanel;
    Label9: TLabel;
    Panel18: TPanel;
    DBEdit8: TDBEdit;
    Panel19: TPanel;
    Label10: TLabel;
    Panel21: TPanel;
    Label11: TLabel;
    Panel22: TPanel;
    DBEdit10: TDBEdit;
    ScrollBar1: TScrollBar;
    DBEdit6: TDBEdit;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
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
    Panel25: TPanel;
    Panel11: TPanel;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Panel12: TPanel;
    Label8: TLabel;
    DBComboBox2: TDBComboBox;
    Panel5: TPanel;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    Panel23: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Panel24: TPanel;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_altCurso: Tfrm_altCurso;


implementation

{$R *.dfm}
uses
U_dm, U_pqCurso,U_principalpas,u_inicio;



procedure Tfrm_altCurso.btn_cancelarClick(Sender: TObject);
begin
 if MessageDlg('Você perderá as alterações já feitas, deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////
  dm.qcursos.close();

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;
end;

procedure Tfrm_altCurso.btn_salvarClick(Sender: TObject);
begin
        if MessageDlg('Você deseja salvar as alteração de dados desse curso?',mtConfirmation,[mbyes, mbno],0)=mryes then
            begin
            if (dbedit1.text<>'')  and (dbedit3.text<>'') and (dbedit4.text<>'') and (dbcombobox1.ItemIndex<>-1) and (dbedit6.text<>'') and (dbcombobox2.ItemIndex<>-1) and (dbedit8.text<>'') and (dbmemo1.text<>'') and (dbedit10.text<>'') and  (dbcombobox3.ItemIndex<>-1) then
            begin

            dm.qcursos.Edit;
            dm.qcursos.post;


            dm.FDTransaction1.StartTransaction;
            dm.FDTransaction1.CommitRetaining;

               WITH dm.tbControleAcoes do
             begin
               close;
               sql.clear;
               sql.add('update controledeacoes set UsuarioCodAlt = :UsuarioCodAlt ,DataAlt = :DataAlt, HoraAlt= :HoraAlt where CodTabela= :CodTabela and id_tabela_ref = :idaa ');
               parambyname('UsuarioCodAlt').asinteger:= logado;
               parambyname('DataAlt').asdate:= date();
               parambyname('HoraAlt').astime:= time() ;
               parambyname('idaa').asinteger:= dm.qcursosCursosid.Value;
               parambyname('CodTabela').asinteger:=2;
               execsql;
             end;
            



            frm_inicio := Tfrm_inicio.Create(self);
            frm_inicio.Parent:= frm_prncipal.panel2;
            frm_inicio.Align:= alClient;
            frm_inicio.BorderStyle:= bsNone;
            frm_inicio.WindowState :=wsMaximized;
            frm_inicio.show;
            dm.qcursos.close;
             showmessage('Dados Alterados com Sucesso!');
            end
            else
            begin
              showmessage('Campo obrigatório em branco!')
            end;

        end;



end;

procedure Tfrm_altCurso.FormCreate(Sender: TObject);
begin
/// buscando inf
                 with dm.qControleAcoes do
                 begin
                   close;
                   sql.clear;
                   sql.add('select * from controledeacoes where CodTabela = :CodTabela and id_tabela_ref = :idad ');
                   parambyname('idad').asinteger:= dm.qcursosCursosId.Value;
                   parambyname('CodTabela').asinteger:=2;
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

procedure Tfrm_altCurso.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_altCurso.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_altCurso.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_altCurso.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_altCurso.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
