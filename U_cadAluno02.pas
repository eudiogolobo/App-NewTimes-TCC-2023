unit U_cadAluno02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfrm_cadAluno02 = class(TForm)
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAluno02: Tfrm_cadAluno02;
  cep, pais, estado, municipio,tp_logradouro,logradouro,numero,complemento,pt_referencia,bairro,tp_moradia,zona_moradia:string;

implementation

{$R *.dfm}
uses
U_cadAluno03, U_principalpas,U_cadastroAluno,u_dm;

procedure Tfrm_cadAluno02.btn_incluirClick(Sender: TObject);
begin
    frm_cadaluno := Tfrm_cadaluno.Create(self);
 frm_cadaluno.Parent:= frm_prncipal.panel2;
 frm_cadaluno.Align:= alClient;
 frm_cadaluno.BorderStyle:= bsNone;
 frm_cadaluno.WindowState :=wsMaximized;
 frm_cadaluno.show;
end;

procedure Tfrm_cadAluno02.btn_salvarClick(Sender: TObject);
var
zona:string;
begin


///////////////////////////////////////////////


////////////////////////////////////////////////////
 frm_cadAluno03 := Tfrm_cadAluno03.Create(self);
 frm_cadAluno03.Parent:= frm_prncipal.panel2;
 frm_cadAluno03.Align:= alClient;
 frm_cadAluno03.BorderStyle:= bsNone;
 frm_cadAluno03.WindowState :=wsMaximized;
 frm_cadAluno03.show;

end;

end.
