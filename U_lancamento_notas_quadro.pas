unit U_lancamento_notas_quadro;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_lacamento_notas_quadro = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    Edit1: TEdit;
    Panel5: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lacamento_notas_quadro: Tfrm_lacamento_notas_quadro;

implementation

{$R *.dfm}
uses
u_dm, U_lancamento_notas;

procedure Tfrm_lacamento_notas_quadro.btn_salvarClick(Sender: TObject);
var
nota:double;
begin
nota:= strtofloat(edit1.Text);

if nota<=10 then
  begin
  with dm.tbnotas do
     begin
       close;
       sql.Clear;
       sql.Add('update notas set Nota= :notas where id = :idd ');
       parambyname('idd').AsInteger:= dm.qnotasid.value;
       parambyname('notas').AsFloat:= strtofloat(edit1.Text);

       ExecSQL;
     end;
     with dm.qnotas do
             begin
             close;
              sql.clear;
              sql.Add('select a.id,a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id, b.AlunoCod, c.id, c.nome');
              sql.Add('from notas as a, matricula as b, alunos as c');
              sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and a.AvaliacaoCod = :avcod ');
              parambyname('avcod').asinteger:= dm.qavaliacaoid_1.Value;
              open;
             end;

     frm_lacamento_notas_quadro.visible:=false;
     frm_lacamento_notas_quadro.close;

     showmessage('Nota salva com sucesso.');
  end
  else
  begin
   showmessage('Nota inválida.');
  end;

end;

procedure Tfrm_lacamento_notas_quadro.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',',',#08] ) then
  key:=#0;
end;

procedure Tfrm_lacamento_notas_quadro.FormCreate(Sender: TObject);
begin
edit1.Text:= floattostr(dm.qnotasnota.value);


end;

end.
