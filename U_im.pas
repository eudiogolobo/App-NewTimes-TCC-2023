unit U_im;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_impressao_carteirinha = class(TForm)
    impressao_carteirinha: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    panel11: TRLPanel;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLPanel5: TRLPanel;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_impressao_carteirinha: Tfrm_impressao_carteirinha;

implementation

{$R *.dfm}
uses
U_imcaluno, u_dm;

end.
