unit U_cadAluno06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tfrm_cadAluno06 = class(TForm)
    Panel27: TPanel;
    Label14: TLabel;
    Panel28: TPanel;
    Panel34: TPanel;
    Label16: TLabel;
    Panel49: TPanel;
    Label23: TLabel;
    Panel36: TPanel;
    Panel10: TPanel;
    Label5: TLabel;
    Panel11: TPanel;
    Edit1: TEdit;
    Panel12: TPanel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel31: TPanel;
    SpeedButton1: TSpeedButton;
    Panel32: TPanel;
    SpeedButton2: TSpeedButton;
    Panel18: TPanel;
    Label25: TLabel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Panel2: TPanel;
    Label24: TLabel;
    ComboBox4: TComboBox;
    Panel14: TPanel;
    Label7: TLabel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel25: TPanel;
    Label26: TLabel;
    ComboBox1: TComboBox;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAluno06: Tfrm_cadAluno06;
  cartao_saude,bolsa_fml,autoriza_img,tem_pc,tem_internet,pretencao_escolar:string;
implementation

{$R *.dfm}
uses
U_cadAluno05,U_cadAluno07, u_principalpas;

procedure Tfrm_cadAluno06.SpeedButton1Click(Sender: TObject);
var
bs_fml, pc,internet:string;
begin

 if radiobutton1.Checked=true then
 bs_fml:='SIM'
 else
 bs_fml:='NÃO';

  if radiobutton7.Checked=true then
 pc:='SIM'
 else
 pc:='NÃO';

  if radiobutton5.Checked=true then
 internet:='SIM'
 else
 internet:='NÃO';
//////////////////////////////
  cartao_saude:=  edit1.Text ;
  bolsa_fml    :=  bs_fml ;
  autoriza_img :=  combobox4.Text ;
  tem_pc       :=  pc ;
  tem_internet  :=   internet;
  pretencao_escolar :=  combobox1.Text ;

/////////////////
frm_cadAluno07 := Tfrm_cadAluno07.Create(self);
frm_cadAluno07.Parent:= frm_prncipal.panel2;
frm_cadAluno07.Align:= alClient;
frm_cadAluno07.BorderStyle:= bsNone;
frm_cadAluno07.WindowState :=wsMaximized;
frm_cadAluno07.show;
end;

procedure Tfrm_cadAluno06.SpeedButton2Click(Sender: TObject);
begin
   frm_cadAluno05 := Tfrm_cadAluno05.Create(self);
frm_cadAluno05.Parent:= frm_prncipal.panel2;
frm_cadAluno05.Align:= alClient;
frm_cadAluno05.BorderStyle:= bsNone;
frm_cadAluno05.WindowState :=wsMaximized;
frm_cadAluno05.show;
end;

end.
