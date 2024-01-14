unit U_pqal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pqal = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lb_total: TLabel;
    txt_buscar: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  frm_pqal: Tfrm_pqal;
  AltDelAluno,CodMatricula,CodExclusao:integer;

implementation

{$R *.dfm}
uses
U_dm,U_principalpas,u_matricula, U_altCadAluno, U_busca_img_rg, U_exaluno;

procedure Tfrm_pqal.DBGrid1CellClick(Column: TColumn);
begin
if AltDelAluno=1 then
 begin
   codalt:=dm.qconsultaid.value;
   codseg:=dm.qconsultaid.value;

  frm_altcadaluno := Tfrm_altcadaluno.Create(Self);
  frm_altcadaluno.Parent:= frm_prncipal.panel2;
  frm_altcadaluno.Align:= alClient;
  frm_altcadaluno.BorderStyle:= bsNone;
  frm_altcadaluno.WindowState :=wsMaximized;
  frm_altcadaluno.Position :=poMainFormCenter;
  frm_altcadaluno.Show;


  frm_pqal.Close;
 end;

 if AltDelAluno=2 then
 begin

  CodExclusao:=dm.qconsultaid.value;

  frm_exaluno := Tfrm_exaluno.Create(Self);
  frm_exaluno.Parent:= frm_prncipal.panel2;
  frm_exaluno.Align:= alClient;
  frm_exaluno.BorderStyle:= bsNone;
  frm_exaluno.WindowState :=wsMaximized;
  frm_exaluno.Position :=poMainFormCenter;
  frm_exaluno.Show;


  frm_pqal.Close;
 end;

 if AltDelAluno=3 then
 begin

  CodMatricula:=dm.qconsultaid.value;

  frm_matricula := Tfrm_matricula.Create(Self);
  frm_matricula.Parent:= frm_prncipal.panel2;
  frm_matricula.Align:= alClient;
  frm_matricula.BorderStyle:= bsNone;
  frm_matricula.WindowState :=wsMaximized;
  frm_matricula.Position :=poMainFormCenter;
  frm_matricula.Show;


  frm_pqal.Close;
 end;



end;

procedure Tfrm_pqal.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_pqal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
AltDelAluno:=0;
end;

procedure Tfrm_pqal.FormCreate(Sender: TObject);
begin
 with dm.qconsulta do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id,a.nome,a.data_nasc,a.sexo,b.AlunoCod,b.cpf,b.rg  From alunos as a,documentos as b Where a.nome like ''%'+txt_buscar.Text+'%'' and a.id = b.AlunoCod ');
   open;
   lb_total.Caption:=inttostr(dm.qconsulta.RecordCount);
   end;

end;

procedure Tfrm_pqal.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_pqal.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_pqal.SpeedButton1Click(Sender: TObject);
var
Buffer,i:integer;
cpf:string;
begin
 with dm.qconsulta do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id,a.nome,a.data_nasc,a.sexo,b.AlunoCod,b.cpf,b.rg  From alunos as a,documentos as b Where a.nome like ''%'+txt_buscar.Text+'%'' and a.id = b.AlunoCod ');
   open;
   lb_total.Caption:=inttostr(dm.qconsulta.RecordCount);
   end;

   if strtoint(lb_total.Caption)=0 then
   begin
   cpf:='';

   for i:=1 to length(txt_buscar.Text) do
     begin
        if (i<>4) and (i<>7) and(i<>10)  then
        begin
        cpf:= cpf+txt_buscar.text[i];
        end;

        if i=4 then
        begin
           cpf:= cpf+'.'+txt_buscar.text[i];
        end;
        if i=7 then
        begin
           cpf:= cpf+'.'+txt_buscar.text[i];
        end;
        if i=10 then
        begin
           cpf:= cpf+'-'+txt_buscar.text[i];
        end;

     end;


    with dm.qconsulta do
    begin
    close;
    sql.Clear;
    sql.Add('select a.id,a.nome,a.data_nasc,a.sexo,b.AlunoCod,b.cpf,b.rg  From alunos as a,documentos as b');
    sql.Add('Where b.cpf= :ncpf and b.AlunoCod = a.id');
    parambyname('ncpf').asstring:=cpf;
    open;

      lb_total.Caption:=inttostr(dm.qconsulta.RecordCount);
      end;

   end;

   if (strtoint(lb_total.Caption)=0) then
   begin
    if TryStrToInt(txt_buscar.Text, Buffer) then
      begin
      with dm.qconsulta do
        begin
        close;
        sql.clear;
        sql.Add('select a.id,a.nome,a.data_nasc,a.sexo,b.AlunoCod,b.cpf,b.rg');
            sql.Add('From alunos as a,documentos as b Where b.rg= :nrg and b.AlunoCod = a.id');
        parambyname('nrg').asinteger:=strtoint(txt_buscar.Text);
        open;
        lb_total.Caption:=inttostr(dm.qconsulta.RecordCount);

        if strtoint(lb_total.Caption)=0 then
        begin
          showmessage('Nenhum resultado encontrado!');
        end;

       end;
      end
      else
      begin
        showmessage('Nenhum resultado encontrado!');
      end;
   end;






 end;

end.