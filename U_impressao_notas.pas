unit U_impressao_notas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, RLRichText;

type
  Tfrm_impressao_contrato_matricula = class(TForm)
    contrato: TRLReport;
    contrato2: TRLReport;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    RLBand2: TRLBand;
    RLMemo2: TRLMemo;
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
