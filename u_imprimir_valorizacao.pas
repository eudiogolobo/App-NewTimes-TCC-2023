unit u_imprimir_valorizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tfrm_imprimir_valorizacao = class(TForm)
    rll: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLPanel2: TRLPanel;
    RLPanel1: TRLPanel;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLPanel10: TRLPanel;
    panel11: TRLPanel;
    RLPanel5: TRLPanel;
    RLPanel6: TRLPanel;
    RLPanel8: TRLPanel;
    RLPanel9: TRLPanel;
    RLPanel12: TRLPanel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLPanel16: TRLPanel;
    RLDBText5: TRLDBText;
    RLPanel17: TRLPanel;
    RLBand4: TRLBand;
    RLPanel18: TRLPanel;
    RLPanel21: TRLPanel;
    RLPanel22: TRLPanel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    valor: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLImage1: TRLImage;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel13: TRLLabel;
    a: TLabel;
    Label2: TLabel;
    inicio: TRLLabel;
    fim: TRLLabel;
    RLPanel13: TRLPanel;
    RLPanel7: TRLPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_imprimir_valorizacao: Tfrm_imprimir_valorizacao;

implementation

{$R *.dfm}
uses
u_dm;

end.
