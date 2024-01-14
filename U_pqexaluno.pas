unit U_pqexaluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pqexal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lb_total: TLabel;
    Label15: TLabel;
    Image1: TImage;
    txt_buscar: TEdit;
    cbop: TComboBox;
    rd: TRadioGroup;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel34: TPanel;
    DBGrid1: TDBGrid;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pqexal: Tfrm_pqexal;

implementation

{$R *.dfm}
uses
U_exaluno, u_dm;

procedure Tfrm_pqexal.DBGrid1CellClick(Column: TColumn);
begin
frm_exaluno.edit1.Text:=dbgrid1.Fields[0].value;
frm_exaluno.edit1.SetFocus;
frm_pqexal.Close;
end;

procedure Tfrm_pqexal.FormActivate(Sender: TObject);
begin
dm.tbcursos.First;
 while not dm.tbcursos.Eof do
 begin
   cbop.Items.Add(dm.tbcursosnome.value);
   dm.tbcursos.Next;
  end;
begin
with dm.qalunos do
begin
 close;
 sql.clear;
 sql.Add('select * from alunos');
  open;

end;
end;
end;

procedure Tfrm_pqexal.SpeedButton1Click(Sender: TObject);
begin
if txt_buscar.Text = '' then
  begin
  showmessage('Digite algo para pesquisar');
  txt_buscar.SetFocus;
  end
    else

      begin
      if rd.ItemIndex=2 then
         begin
         if (cbop.ItemIndex=0) or (cbop.ItemIndex= -1) then
          begin
           with dm.qalunos do
           begin
             close;
            sql.clear;
            sql.Add('select * from alunos where nome like ''%'+txt_buscar.Text+'%''');
            open;
            fetchall;
            lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
           end;

         end
           else
           begin
             with dm.qalunos do
           begin
           close;
            sql.clear;
            sql.Add('select * from alunos where nome like ''%'+txt_buscar.Text+'%'' and curso = :x');
            parambyname('x').asstring:=cbop.Text;
            open;
            lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
           end;
         end;
        end
         else
         begin
             if rd.ItemIndex=0 then
               begin
             if (cbop.ItemIndex=0) or (cbop.ItemIndex= -1) then
              begin
               with dm.qalunos do
               begin
                 close;
                sql.clear;
                sql.Add('select * from alunos where nome like ''%'+txt_buscar.Text+'%'' and situacao = ''ATIVO'' ');
                open;
                lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
               end;

             end
               else
               begin
                 with dm.qalunos do
               begin
               close;
                sql.clear;
                sql.Add('select * from alunos where nome like ''%'+txt_buscar.Text+'%'' and situacao = ''ATIVO'' and curso = :x');
                parambyname('x').asstring:=cbop.Text;
                open;
                lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
               end;
             end;

            end
          else
           begin
             if rd.ItemIndex=1 then
               begin
             if (cbop.ItemIndex=0) or (cbop.ItemIndex= -1) then
              begin
               with dm.qalunos do
               begin
                 close;
                sql.clear;
                sql.Add('select * from alunos where nome like ''%'+txt_buscar.Text+'%'' and situacao =''INATIVO'' ');
                open;
                lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
               end;

             end
               else
               begin
                 with dm.qalunos do
               begin
               close;
                sql.clear;
                sql.Add('select * from alunos where nome like ''%'+txt_buscar.Text+'%'' and situacao = ''INATIVO'' and curso = :x');
                parambyname('x').asstring:=cbop.Text;
                open;
                lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
               end;
             end;
            end




           end

         end;
      end;
end;

end.
