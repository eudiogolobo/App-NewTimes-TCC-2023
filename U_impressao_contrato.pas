unit U_impressao_contrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls;

type
  Tfrm_impressao_contrato_matricula = class(TForm)
    RLReport1: TRLReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_impressao_contrato_matricula: Tfrm_impressao_contrato_matricula;

implementation

{$R *.dfm}
uses
u_dm;

end.
