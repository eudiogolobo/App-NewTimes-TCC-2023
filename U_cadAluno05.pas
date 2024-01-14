unit U_cadAluno05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  Tfrm_cadAluno05 = class(TForm)
    Panel2: TPanel;
    Panel33: TPanel;
    Panel27: TPanel;
    Label14: TLabel;
    Panel28: TPanel;
    Panel36: TPanel;
    Panel51: TPanel;
    Label25: TLabel;
    Panel53: TPanel;
    Label26: TLabel;
    Panel55: TPanel;
    Label27: TLabel;
    Panel57: TPanel;
    Label28: TLabel;
    ScrollBar1: TScrollBar;
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    Panel10: TPanel;
    Label5: TLabel;
    Panel12: TPanel;
    Label6: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label7: TLabel;
    Panel16: TPanel;
    Label8: TLabel;
    Panel18: TPanel;
    Label9: TLabel;
    Panel20: TPanel;
    Label10: TLabel;
    Panel22: TPanel;
    Label11: TLabel;
    Panel24: TPanel;
    Label12: TLabel;
    Panel41: TPanel;
    Label19: TLabel;
    Panel31: TPanel;
    SpeedButton1: TSpeedButton;
    Panel32: TPanel;
    SpeedButton2: TSpeedButton;
    cb1: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    Memo1: TMemo;
    Panel3: TPanel;
    Label4: TLabel;
    Memo2: TMemo;
    Panel5: TPanel;
    Label13: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Panel34: TPanel;
    Label16: TLabel;
    Panel7: TPanel;
    Label15: TLabel;
    Edit13: TEdit;
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAluno05: Tfrm_cadAluno05;
  especial, tp_sanguineo,panlo_saude,fator_sanguineo,lactose,gluten,hipertensao,diabetes,aler_pcd_inseto,chocolate,ovo,pelo_animal,poeira,rinite,outros,obs_outros,obs_remedios,gp_covid:string;

implementation

{$R *.dfm}
uses
U_cadAluno04, U_principalpas,  U_cadAluno06;

procedure Tfrm_cadAluno05.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.max-scrollbar1.PageSize) then
begin
  scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cadAluno05.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.position<>0 then
begin
scrollbar1.position:=scrollbar1.position-10;
panel27.top:= -scrollbar1.position;
end;
end;

procedure Tfrm_cadAluno05.RadioButton1Click(Sender: TObject);
begin
 radiobutton2.Checked:=false;
end;

procedure Tfrm_cadAluno05.RadioButton2Click(Sender: TObject);
begin
 radiobutton1.Checked:=false;
end;

procedure Tfrm_cadAluno05.RadioButton5Click(Sender: TObject);
begin
 radiobutton6.Checked:=false;
 radiobutton7.Checked:=false;
 radiobutton8.Checked:=false;
end;

procedure Tfrm_cadAluno05.RadioButton6Click(Sender: TObject);
begin
 radiobutton5.Checked:=false;
 radiobutton7.Checked:=false;
 radiobutton8.Checked:=false;
end;

procedure Tfrm_cadAluno05.RadioButton7Click(Sender: TObject);
begin
  radiobutton5.Checked:=false;
 radiobutton6.Checked:=false;
 radiobutton8.Checked:=false;
end;

procedure Tfrm_cadAluno05.RadioButton8Click(Sender: TObject);
begin
 radiobutton5.Checked:=false;
 radiobutton7.Checked:=false;
 radiobutton6.Checked:=false;
end;

procedure Tfrm_cadAluno05.ScrollBar1Change(Sender: TObject);
begin
panel27.top:= -scrollbar1.position;
end;

procedure Tfrm_cadAluno05.SpeedButton1Click(Sender: TObject);
var
tps, fts,um,dois,tres,quatro,cinco,seis,sete,oito,nove,dez,onze,gp:string;
begin
 if radiobutton5.Checked=true then
 begin
 tps:=radiobutton5.caption;
 end;

 if radiobutton6.Checked=true then
 begin
 tps:=radiobutton6.caption;
 end;

 if radiobutton7.Checked=true then
 begin
 tps:=radiobutton7.caption;
 end;

 if radiobutton8.Checked=true then
 begin
 tps:=radiobutton8.caption;
 end;
 /////////////////////////////////////////
 if radiobutton1.Checked=true then
 fts:='POSITIVO'
 else
 fts:='NEGATIVO';

  if radiobutton3.Checked=true then
 gp:='SIM'
 else
 gp:='N�O';

 //////////////////////////////////////
 if checkbox1.Checked=true then
 um:='SIM'else
 um:='N�O';

  if checkbox2.Checked=true then
 dois:='SIM'else
 dois:='N�O';

  if checkbox3.Checked=true then
 tres:='SIM'else
 tres:='N�O';

  if checkbox4.Checked=true then
 quatro:='SIM'else
 quatro:='N�O';

   if checkbox5.Checked=true then
 cinco:='SIM'else
 cinco:='N�O';

   if checkbox6.Checked=true then
 seis:='SIM'else
 seis:='N�O';

   if checkbox7.Checked=true then
 sete:='SIM'else
 sete:='N�O';

   if checkbox8.Checked=true then
 oito:='SIM'else
 oito:='N�O';

   if checkbox9.Checked=true then
 nove:='SIM'else
 nove:='N�O';

   if checkbox10.Checked=true then
 dez:='SIM'else
 dez:='N�O';

   if checkbox11.Checked=true then
 onze:='SIM'else
 onze:='N�O';


////////////////////////////////
especial := cb1.Text;
tp_sanguineo   := TPS;
panlo_saude    := EDIT13.Text;
fator_sanguineo    := fts ;
lactose          := um;
gluten          := dois;
hipertensao     := tres;
diabetes       := quatro;
aler_pcd_inseto  := cinco;
chocolate       := seis;
ovo             := sete;
pelo_animal      :=oito ;
poeira          := nove;
rinite           := dez;
outros            := onze;
obs_outros       := memo1.Text;
obs_remedios      := memo2.Text;
gp_covid          := gp;
///////////////////////////////////////////////////
 frm_cadAluno06 := Tfrm_cadAluno06.Create(self);
frm_cadAluno06.Parent:= frm_prncipal.panel2;
frm_cadAluno06.Align:= alClient;
frm_cadAluno06.BorderStyle:= bsNone;
frm_cadAluno06.WindowState :=wsMaximized;
frm_cadAluno06.show;
end;

procedure Tfrm_cadAluno05.SpeedButton2Click(Sender: TObject);
begin
  frm_cadAluno04 := Tfrm_cadAluno04.Create(self);
frm_cadAluno04.Parent:= frm_prncipal.panel2;
frm_cadAluno04.Align:= alClient;
frm_cadAluno04.BorderStyle:= bsNone;
frm_cadAluno04.WindowState :=wsMaximized;
frm_cadAluno04.show;
end;

end.
