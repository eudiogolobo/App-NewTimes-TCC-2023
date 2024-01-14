unit U_pesquisaAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Mask;

type
  Tfrm_pesquisaaluno = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    lb_total: TLabel;
    Panel34: TPanel;
    Label15: TLabel;
    Image1: TImage;
    Label1: TLabel;
    txt_buscar: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesquisaaluno: Tfrm_pesquisaaluno;

implementation

{$R *.dfm}
uses
U_cadastroAluno, U_dm, U_pqal, U_login;

procedure Tfrm_pesquisaaluno.SpeedButton1Click(Sender: TObject);
begin
 with dm.qalunos do
 begin
   close;
   sql.Clear;
   sql.Add('select a.nome,a.data_nasc,a.sexo,b.cpf,b.rg From alunos as a,documentos as b Where nome=:nnome or cpf=:ncpf or rg=:nrg ');
   parambyname('nnome').asstring:= txt_buscar.text ;
   parambyname('ncpf').asstring:= txt_buscar.text ;
   parambyname('nrg').asinteger:= strtoint(txt_buscar.text) ;
   execsql;
 end;

end;

procedure Tfrm_pesquisaaluno.SpeedButton2Click(Sender: TObject);
begin
application.CreateForm(Tfrm_cadaluno,frm_cadaluno);
frm_cadaluno.ShowModal;
frm_pesquisaaluno.close;

end;

end.
