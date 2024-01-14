unit U_cadAluno07;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs, jpeg, Data.DB;

type
  Tfrm_cadAluno07 = class(TForm)
    Panel27: TPanel;
    Label14: TLabel;
    Panel28: TPanel;
    Panel36: TPanel;
    Panel31: TPanel;
    SpeedButton1: TSpeedButton;
    Panel32: TPanel;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image3: TImage;
    Label3: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image4: TImage;
    Label4: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Image5: TImage;
    Label5: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Image6: TImage;
    Label6: TLabel;
    ScrollBar1: TScrollBar;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAluno07: Tfrm_cadAluno07;
  indice_img:integer;

implementation

{$R *.dfm}
uses
u_inicio, U_cadAluno06, u_dm,U_busca_img_rg, u_principalpas;

procedure Tfrm_cadAluno07.FormCreate(Sender: TObject);
begin


save_rg:=false;

save_cpf:=false;

save_crt_nasc:=false;

save_foto:=false;

save_comp_residencia:=false;

save_crt_vacina:=false;

label8.Visible:=false;

label9.Visible:=false;

label10.Visible:=false;

label11.Visible:=false;

label12.Visible:=false;

label13.Visible:=false;

image7.Visible:=false;

image8.Visible:=false;

image9.Visible:=false;

image10.Visible:=false;

image11.Visible:=false;

image12.Visible:=false;



indice_img:=0;

end;

procedure Tfrm_cadAluno07.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.max-scrollbar1.PageSize) then
begin
  scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cadAluno07.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.position<>0 then
begin
scrollbar1.position:=scrollbar1.position-10;
panel27.top:= -scrollbar1.position;
end;
end;

procedure Tfrm_cadAluno07.ScrollBar1Change(Sender: TObject);
begin
panel27.top:= -scrollbar1.position;
end;

procedure Tfrm_cadAluno07.SpeedButton2Click(Sender: TObject);
begin
 frm_cadAluno06 := Tfrm_cadAluno06.Create(self);
frm_cadAluno06.Parent:= frm_prncipal.panel2;
frm_cadAluno06.Align:= alClient;
frm_cadAluno06.BorderStyle:= bsNone;
frm_cadAluno06.WindowState :=wsMaximized;
frm_cadAluno06.show;
end;

procedure Tfrm_cadAluno07.SpeedButton3Click(Sender: TObject);
begin
indice_img:=1;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;


end;

procedure Tfrm_cadAluno07.SpeedButton4Click(Sender: TObject);
begin
indice_img:=2;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_cadAluno07.SpeedButton5Click(Sender: TObject);
begin
indice_img:=3;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;

end;

procedure Tfrm_cadAluno07.SpeedButton6Click(Sender: TObject);
begin
indice_img:=4;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;

end;

procedure Tfrm_cadAluno07.SpeedButton7Click(Sender: TObject);
begin
indice_img:=5;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;

end;

procedure Tfrm_cadAluno07.SpeedButton8Click(Sender: TObject);
begin
indice_img:=6;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;

end;

end.
