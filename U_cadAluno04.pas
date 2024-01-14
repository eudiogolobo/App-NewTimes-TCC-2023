unit U_cadAluno04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_cadAluno04 = class(TForm)
    Panel2: TPanel;
    Panel33: TPanel;
    ScrollBar1: TScrollBar;
    Panel27: TPanel;
    Label14: TLabel;
    Panel28: TPanel;
    Panel34: TPanel;
    Label16: TLabel;
    Panel49: TPanel;
    Label23: TLabel;
    Panel36: TPanel;
    Panel51: TPanel;
    Label25: TLabel;
    CheckBox1: TCheckBox;
    Panel53: TPanel;
    Label26: TLabel;
    Panel54: TPanel;
    Panel55: TPanel;
    Label27: TLabel;
    Panel56: TPanel;
    Panel57: TPanel;
    Label28: TLabel;
    Panel58: TPanel;
    Panel10: TPanel;
    Label5: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label6: TLabel;
    Panel14: TPanel;
    Label7: TLabel;
    dtp1: TDateTimePicker;
    Panel16: TPanel;
    Label8: TLabel;
    Panel17: TPanel;
    Panel30: TPanel;
    Label15: TLabel;
    Panel35: TPanel;
    Panel37: TPanel;
    Label17: TLabel;
    Panel38: TPanel;
    Panel39: TPanel;
    Label18: TLabel;
    Panel40: TPanel;
    Panel41: TPanel;
    Label19: TLabel;
    Panel42: TPanel;
    Panel43: TPanel;
    Label20: TLabel;
    Panel44: TPanel;
    Panel45: TPanel;
    Label21: TLabel;
    Panel46: TPanel;
    Panel47: TPanel;
    Label22: TLabel;
    Panel48: TPanel;
    Panel31: TPanel;
    SpeedButton1: TSpeedButton;
    Panel32: TPanel;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    CheckBox2: TCheckBox;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label9: TLabel;
    Panel15: TPanel;
    Edit9: TEdit;
    Panel20: TPanel;
    Label11: TLabel;
    dtp2: TDateTimePicker;
    Panel21: TPanel;
    Label12: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Label13: TLabel;
    Panel24: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit3: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit11: TEdit;
    Edit10: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Panel13: TPanel;
    Label10: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Edit7: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    procedure btn_salvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAluno04: Tfrm_cadAluno04;
  fi1,falecido_fi1,id_fi1,cpf_fi1,data_nasc_fi1,email_fi1,ddd_fi1,celular_fi1, fi2,falecido_fi2,id_fi2,cpf_fi2,data_nasc_fi2,email_fi2,ddd_fi2,celular_fi2,respon_legal,cpf_respon,email_respon,ddd_respon,celular_respon,nome_parente,ddd_parente,celular_parente:string;

implementation

{$R *.dfm}
uses
U_principalpas,U_cadAluno05,U_cadAluno03;

procedure Tfrm_cadAluno04.btn_salvarClick(Sender: TObject);
begin
  frm_cadAluno05 := Tfrm_cadAluno05.Create(self);
frm_cadAluno05.Parent:= frm_prncipal.panel2;
frm_cadAluno05.Align:= alClient;
frm_cadAluno05.BorderStyle:= bsNone;
frm_cadAluno05.WindowState :=wsMaximized;
frm_cadAluno05.show;
end;

procedure Tfrm_cadAluno04.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.max-scrollbar1.PageSize) then
begin
  scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cadAluno04.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.position<>0 then
begin
scrollbar1.position:=scrollbar1.position-10;
panel27.top:= -scrollbar1.position;
end;
end;

procedure Tfrm_cadAluno04.RadioButton1Click(Sender: TObject);
begin
label5.caption:= 'M�E (OU FILIA��O 1)';
label9.caption:= 'PAI (OU FILIA��O 2)';
if radiobutton4.checked<>true  then
begin
radiobutton4.checked:=true;
end;
 if radiobutton3.checked<>false  then
begin
radiobutton3.checked:=false;
end;
end;

procedure Tfrm_cadAluno04.RadioButton2Click(Sender: TObject);
begin
label5.caption:= 'PAI (OU FILIA��O 1)';
label9.caption:= 'M�E (OU FILIA��O 2)';
if radiobutton4.checked<>false  then
begin
radiobutton4.checked:=false;
end;
 if radiobutton3.checked<>true  then
begin
radiobutton3.checked:=true;
end;

end;

procedure Tfrm_cadAluno04.ScrollBar1Change(Sender: TObject);
begin
panel27.top:= -scrollbar1.position;
end;

procedure Tfrm_cadAluno04.SpeedButton1Click(Sender: TObject);
var
falecido1,falecido2,id1,id2:string;
begin
if radiobutton1.Checked=true then
begin
id1:=('M�E');
id2:=('PAI')
end
else
begin
id1:=('PAI');
id2:=('M�E');
end;
//////////////////////////////////
if checkbox1.Checked=true then
falecido1:='SIM'
else
falecido1:='N�O';
if checkbox2.Checked=true then
falecido2:='SIM'
else
falecido2:='N�O';
///////////////////////////////////

fi1:= edit1.Text ;
falecido_fi1:= falecido1;
id_fi1:= id1;
cpf_fi1  := edit2.Text;
data_nasc_fi1  := datetostr(dtp1.Date) ;
email_fi1  :=edit4.Text ;
ddd_fi1  := edit3.Text;
celular_fi1  := edit5.Text;
fi2     := edit9.Text;
falecido_fi2  := falecido2;
id_fi2   := id2 ;
cpf_fi2   := edit6.text;
data_nasc_fi2  := datetostr(dtp2.Date);
email_fi2   := edit8.Text;
ddd_fi2    := edit10.Text;
celular_fi2 := edit11.Text;
respon_legal  :=edit12.Text ;
cpf_respon   :=edit13.Text ;
email_respon  := edit14.Text;
ddd_respon    := edit7.Text;
celular_respon:= edit15.Text;
nome_parente   := edit16.Text;
ddd_parente    :=edit17.Text ;
celular_parente  := edit18.Text;


/////////////////////////////////////////////////
frm_cadAluno05 := Tfrm_cadAluno05.Create(self);
frm_cadAluno05.Parent:= frm_prncipal.panel2;
frm_cadAluno05.Align:= alClient;
frm_cadAluno05.BorderStyle:= bsNone;
frm_cadAluno05.WindowState :=wsMaximized;
frm_cadAluno05.show;
end;

procedure Tfrm_cadAluno04.SpeedButton2Click(Sender: TObject);
begin
frm_cadAluno03 := Tfrm_cadAluno03.Create(self);
 frm_cadAluno03.Parent:= frm_prncipal.panel2;
 frm_cadAluno03.Align:= alClient;
 frm_cadAluno03.BorderStyle:= bsNone;
 frm_cadAluno03.WindowState :=wsMaximized;
 frm_cadAluno03.show;
end;

end.
