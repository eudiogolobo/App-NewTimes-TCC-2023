unit U_visao_geral_notas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  Tfrm_visao_geral_notas = class(TForm)
    Panel2: TPanel;
    Label12: TLabel;
    Label4: TLabel;
    Panel35: TPanel;
    Label2: TLabel;
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
    Panel22: TPanel;
    Label13: TLabel;
    Label19: TLabel;
    Panel23: TPanel;
    Panel19: TPanel;
    Label14: TLabel;
    Label18: TLabel;
    Panel24: TPanel;
    Panel21: TPanel;
    Label16: TLabel;
    Panel25: TPanel;
    ScrollBar1: TScrollBar;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Label19Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_visao_geral_notas: Tfrm_visao_geral_notas;

implementation

{$R *.dfm}
uses
u_dm,u_ver_notas_vermelhasEverdes;

procedure Tfrm_visao_geral_notas.FormCreate(Sender: TObject);
var
i:integer;
Media:double;
contVermelha, contVerde:integer;
begin

 contVerde:= 0;
 contVermelha:= 0;

     with dm.qnotas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id,a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id, b.AlunoCod, c.id, c.nome');
   sql.Add('from notas as a, matricula as b, alunos as c');
   sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and a.AvaliacaoCod = :id');
   parambyname('id').AsInteger:= dm.qavaliacaoid_1.Value;
   open;

   if recordcount>0 then
   begin

      dm.qnotas.First;

     while not dm.qnotas.Eof do
     begin
        if ( dm.qnotasnota.Value>=6 ) then
        begin
          contVerde:= contVerde+1;
        end
        else
        begin
            contVermelha:= contVermelha+1;
        end;


        Media:= Media + dm.qnotasnota.Value;

        dm.qnotas.Next;
     end;

     panel25.Caption:=formatfloat('#,,0.00',( media/recordcount));

     panel23.Caption:= formatfloat('#,,0.00',(( contVerde/recordcount)*100))+'%';

     panel24.Caption:= formatfloat('#,,0.00',((contVermelha/recordcount)*100))+'%';


   end;

 end;


///////

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

  for i:=1 to dm.qcursosModulos.Value do
  begin
    combobox3.Items.Add(inttostr(i));
  end;



combobox5.itemindex:=combobox5.Items.IndexOf(inttostr(dm.qavaliacaoTotalAulas.Value));
combobox3.itemindex:=combobox3.Items.IndexOf(inttostr(dm.qavaliacaoModuloRef.Value));
combobox1.itemindex:=combobox1.Items.IndexOf(dm.qavaliacaoTipo.Value);
memo1.Text:= dm.qavaliacaoDescricao.text;
end;

procedure Tfrm_visao_geral_notas.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_visao_geral_notas.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_visao_geral_notas.Label18Click(Sender: TObject);
begin
 with dm.qnotasVermelhas do
 begin
   close;
    sql.Clear;
    sql.Add(' select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
    sql.Add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
    sql.Add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and a.nota < 6 and a.AvaliacaoCod = :id ');
      parambyname('id').AsInteger:= dm.qavaliacaoid_1.Value;
    open;


 end;

 application.CreateForm(Tfrm_ver_notas_vermelhasEverdes,frm_ver_notas_vermelhasEverdes );
frm_ver_notas_vermelhasEverdes.showmodal;
end;

procedure Tfrm_visao_geral_notas.Label19Click(Sender: TObject);
begin


 with dm.qnotasVermelhas do
 begin
   close;
    sql.Clear;
    sql.Add(' select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
    sql.Add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
    sql.Add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and a.nota >= 6 and a.AvaliacaoCod = :id ');
      parambyname('id').AsInteger:= dm.qavaliacaoid_1.Value;
    open;


 end;

 application.CreateForm(Tfrm_ver_notas_vermelhasEverdes,frm_ver_notas_vermelhasEverdes );
frm_ver_notas_vermelhasEverdes.showmodal;


end;

procedure Tfrm_visao_geral_notas.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

end.
