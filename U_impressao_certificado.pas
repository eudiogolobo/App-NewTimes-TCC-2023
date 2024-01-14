unit U_impressao_certificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Tfrm_impressao_certificado = class(TForm)
    impressao_cartificado: TRLReport;
    RLBand1: TRLBand;
    Image1: TImage;
    RLBand2: TRLBand;
    Image2: TImage;
    Label1: TLabel;
    RLDBText2: TRLDBText;
    Label2: TLabel;
    Label3: TLabel;
    RLPanel21: TRLPanel;
    RLPanel1: TRLPanel;
    RLPanel3: TRLPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RLPanel2: TRLPanel;
    RLPanel4: TRLPanel;
    RLPanel5: TRLPanel;
    Label10: TLabel;
    RLPanel6: TRLPanel;
    RLPanel7: TRLPanel;
    RLPanel8: TRLPanel;
    RLPanel9: TRLPanel;
    RLPanel10: TRLPanel;
    RLPanel11: TRLPanel;
    RLPanel12: TRLPanel;
    Label7: TLabel;
    RLPanel13: TRLPanel;
    RLPanel14: TRLPanel;
    RLPanel15: TRLPanel;
    RLPanel16: TRLPanel;
    RLPanel17: TRLPanel;
    Image3: TImage;
    RLPanel18: TRLPanel;
    RLPanel20: TRLPanel;
    RLPanel19: TRLPanel;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_impressao_certificado: Tfrm_impressao_certificado;

implementation

{$R *.dfm}
uses
u_dm;

end.
