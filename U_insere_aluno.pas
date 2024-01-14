unit U_insere_aluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  Tfrm_insere_aluno = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_insere_aluno: Tfrm_insere_aluno;

implementation

{$R *.dfm}
USES
u_dm;

end.
