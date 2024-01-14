unit U_alt_matricula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_alt_matricula = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    DBEdit3: TDBEdit;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    DBEdit5: TDBEdit;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    cb1: TComboBox;
    Panel6: TPanel;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Panel8: TPanel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Panel17: TPanel;
    Panel13: TPanel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Panel15: TPanel;
    Panel14: TPanel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Panel16: TPanel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    Panel18: TPanel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label13: TLabel;
    MaskEdit1: TMaskEdit;
    Panel22: TPanel;
    Label14: TLabel;
    cb3: TComboBox;
    ScrollBar1: TScrollBar;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Panel23: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    nomeCadastro: TLabel;
    DataCad: TLabel;
    HoraCad: TLabel;
    NomeEdit: TLabel;
    DataEdit: TLabel;
    HoraEdit: TLabel;
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
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
  frm_alt_matricula: Tfrm_alt_matricula;

implementation

{$R *.dfm}
uses
u_dm, u_pesq_matricula,u_inicio,u_principalpas;

procedure Tfrm_alt_matricula.btn_cancelarClick(Sender: TObject);
begin
if MessageDlg('Voc� perder� tudo oque j� fez. Deseja continuar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;
end;

procedure Tfrm_alt_matricula.btn_salvarClick(Sender: TObject);
VAR
situacao:string;
   begin
   if (dbedit1.Text<>'') and (dbedit3.Text<>'') and (dbedit5.Text<>'') and (combobox2.itemindex<>-1)  and (cb3.itemindex<>-1)  and (maskedit1.Text<>'')then
   begin
     WITH dm.qmatricula_cad do
     begin
       close;
       sql.clear;
       sql.add('select * from matricula where AlunoCod= :codaluno and TurmaCod = :codturma');
       parambyname('codaluno').asinteger:= dm.qmatriculaAlunoCod.Value;
       parambyname('codturma').asinteger:= DM.qturmasid_turmas.Value;
       open;

       if dm.qmatricula_cadid.Value = dm.qmatriculaid.value then
       begin
        if MessageDlg('Voc� deseja mesmo alterar os dados dessa matr�cula?',mtConfirmation,[mbyes, mbno],0)=mryes then
        begin

         if cb3.ItemIndex=0 then
         begin
           situacao:='ATIVA';
         end;
          if cb3.ItemIndex=1 then
         begin
           situacao:='INATIVA';
         end;
         ///////////////////////
         WITH dm.tbmatricula do
         begin
           close;
           sql.clear;
           sql.add('update matricula set TurmaCod = :TurmaCod, DataMatricula = :DataMatricula, SituacaoMatricula= :SituacaoMatricula where id = :id');
           parambyname('id').asinteger:= dm.qmatriculaid.value;
           parambyname('TurmaCod').asinteger:= DM.qturmasid_turmas.Value;
           parambyname('DataMatricula').asdate:= strtodate(MASKEDIT1.Text) ;
           parambyname('SituacaoMatricula').asstring:= situacao;

           execsql;


         end;
              /// atualiza edicao tabela acoes
              WITH dm.tbControleAcoes do
             begin
               close;
               sql.clear;
               sql.add('update controledeacoes set UsuarioCodAlt = :UsuarioCodAlt ,DataAlt = :DataAlt, HoraAlt= :HoraAlt where CodTabela= :CodTabela and id_tabela_ref = :idaa ');
               parambyname('UsuarioCodAlt').asinteger:= logado;
               parambyname('DataAlt').asdate:= date();
               parambyname('HoraAlt').astime:= time() ;
               parambyname('idaa').asinteger:= dm.qmatriculaid.Value;
               parambyname('CodTabela').asinteger:=1;
               execsql;
             end;





             dm.TBMATRICULA.close;
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
       end
       else
       begin
           if recordcount=0 then
           begin
           if MessageDlg('Voc� deseja mesmo alterar os dados dessa matr�cula?',mtConfirmation,[mbyes, mbno],0)=mryes then
           begin
             if cb3.ItemIndex=0 then
             begin
               situacao:='ATIVA';
             end;
              if cb3.ItemIndex=1 then
             begin
               situacao:='INATIVA';
             end;
             ///////////////////////
             WITH dm.tbmatricula do
             begin
               close;
               sql.clear;
               sql.add('update matricula set TurmaCod = :TurmaCod, DataMatricula = :DataMatricula, SituacaoMatricula= :SituacaoMatricula where id = :id');
               parambyname('id').asinteger:= dm.qmatriculaid.value;
               parambyname('TurmaCod').asinteger:= DM.qturmasid_turmas.Value;
               parambyname('DataMatricula').asdate:= strtodate(MASKEDIT1.Text) ;
               parambyname('SituacaoMatricula').asstring:= situacao;
               execsql;
             end;


                 dm.TBMATRICULA.close;
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
         end
        else
       begin
       showmessage('ERRO: Esse aluno j� est� matriculado nessa turma.');
       end;
     end;
   end;

 end
 else
 showmessage('Campo obrigat�rio em branco!')
end;

procedure Tfrm_alt_matricula.cb1Change(Sender: TObject);
begin
combobox2.Clear;

with dm.qcursos do
begin
  close;
  sql.Clear;
  sql.Add('select * from cursos where Nome = :nomecurso');
  parambyname('nomecurso').asstring:=cb1.Text;
  open;
end;

with dm.qturmas do
begin
  close;
  sql.Clear;
  sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
  sql.Add('from turmas as a, cursos as b');
  sql.Add('where a.CursoCod = b.CursosId and  a.CursoCod = :CursoCod');
  parambyname('CursoCod').asinteger:=dm.qcursosCursosId.value;
  open;
end;

 dm.qturmas.First;
 while not dm.qturmas.Eof do
 begin
   combobox2.Items.Add(dm.qturmasturma.Value);
   dm.qturmas.next;
 end;
 dm.qturmas.Close;

end;

procedure Tfrm_alt_matricula.ComboBox2Change(Sender: TObject);
begin
with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.Turma = :turminha');
   parambyname('turminha').AsString:= combobox2.Text;
   open;
 end;
end;

procedure Tfrm_alt_matricula.FormCreate(Sender: TObject);
begin
dm.qturmas.Close;
dm.tbcursos.Open();
 dm.tbcursos.First;

 while not dm.tbcursos.Eof do
 begin
 cb1.Items.Add(dm.tbcursosnome.Value);
 dm.tbcursos.Next;
 end;

 dm.tbcursos.Close;

 with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.id_turmas = :id');
   parambyname('id').AsInteger:= dm.qmatriculaTurmaCod.value;
   open;
 end;

  with dm.qcursos do
 begin
   close;
   sql.Clear;
   sql.add('select * from cursos where CursosId = :idcur');
   parambyname('idcur').AsInteger:= dm.qturmascursocod.value;
   open;
 end;

 cb1.ItemIndex:= cb1.items.IndexOf(dm.qcursosNome.Value);

 /////

 with dm.qturmas do
begin
  close;
  sql.Clear;
  sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
  sql.Add('from turmas as a, cursos as b');
  sql.Add('where a.CursoCod = b.CursosId and  a.CursoCod = :CursoCod');
  parambyname('CursoCod').asinteger:=dm.qcursosCursosId.value;
  open;
end;

 dm.qturmas.First;
 while not dm.qturmas.Eof do
 begin
   combobox2.Items.Add(dm.qturmasturma.Value);
   dm.qturmas.next;
 end;
 dm.qturmas.Close;

 ///
 with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.id_turmas = :id');
   parambyname('id').AsInteger:= dm.qmatriculaTurmaCod.value;
   open;
 end;

 combobox2.ItemIndex:= combobox2.items.IndexOf(dm.qturmasTurma.Value);


 cb3.itemindex:= cb3.items.IndexOf(dm.qmatriculaSituacaoMatricula.value);
 maskedit1.Text:= datetostr(dm.qmatriculaDataMatricula.value);


 /// buscando inf
 with dm.qControleAcoes do
 begin
   close;
   sql.clear;
   sql.add('select * from controledeacoes where CodTabela = :CodTabela and id_tabela_ref = :idad ');
   parambyname('idad').asinteger:= dm.qmatriculaid.Value;
   parambyname('CodTabela').asinteger:=1;
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

procedure Tfrm_alt_matricula.FormMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_alt_matricula.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_alt_matricula.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_alt_matricula.Panel2MouseMove(Sender: TObject;
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

procedure Tfrm_alt_matricula.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
