unit U_im_turma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrm_turma_documento = class(TForm)
    tr: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLImage1: TRLImage;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    Label1: TLabel;
    Label2: TLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    Label3: TLabel;
    RLDBText3: TRLDBText;
    Label4: TLabel;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RLPanel4: TRLPanel;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLBand4: TRLBand;
    RLPanel5: TRLPanel;
    RLPanel6: TRLPanel;
    RLPanel7: TRLPanel;
    RLPanel8: TRLPanel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Label10: TLabel;
    RLBand5: TRLBand;
    Label11: TLabel;
    Label12: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_turma_documento: Tfrm_turma_documento;

implementation

{$R *.dfm}
uses
u_dm;

end.
