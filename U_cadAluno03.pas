unit U_cadAluno03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_cadAluno03 = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Panel33: TPanel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_incluir: TPanel;
    btn_incluir: TSpeedButton;
    Panel35: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel19: TPanel;
    Label10: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label11: TLabel;
    Panel23: TPanel;
    Label12: TLabel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label13: TLabel;
    Panel26: TPanel;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Edit5: TEdit;
    Panel5: TPanel;
    Label3: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    Edit7: TEdit;
    Panel9: TPanel;
    Label5: TLabel;
    Panel11: TPanel;
    Label6: TLabel;
    Panel13: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    Edit10: TEdit;
    Panel15: TPanel;
    Label8: TLabel;
    Panel17: TPanel;
    Label9: TLabel;
    Panel18: TPanel;
    Edit12: TEdit;
    cb1: TComboBox;
    cb2: TComboBox;
    cb3: TComboBox;
    ScrollBar1: TScrollBar;
    Panel6: TPanel;
    Label14: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAluno03: Tfrm_cadAluno03;
  cpf,rg,estado_emissao,org_emissor,data_expedicao,certidao_nasc,livro,folha,data_expedicao2,nis_nit,documento_estrangeiro,tp_documento:string;

implementation

{$R *.dfm}
uses
U_cadAluno04,U_cadAluno02, U_principalpas;

procedure Tfrm_cadAluno03.btn_incluirClick(Sender: TObject);
begin
frm_cadAluno02 := Tfrm_cadAluno02.Create(self);
frm_cadAluno02.Parent:= frm_prncipal.panel2;
frm_cadAluno02.Align:= alClient;
frm_cadAluno02.BorderStyle:= bsNone;
frm_cadAluno02.WindowState :=wsMaximized;
frm_cadAluno02.show;
end;

procedure Tfrm_cadAluno03.btn_salvarClick(Sender: TObject);
begin
cpf := edit7.Text;
rg   := edit4.Text ;
estado_emissao :=cb1.Text ;
org_emissor  :=cb2.Text ;
data_expedicao  := datetostr(dtp1.Date);
certidao_nasc := edit2.Text;
livro := edit10.Text;
folha  :=edit3.Text ;
data_expedicao2 := datetostr(dtp2.Date);
nis_nit := edit5.Text;
documento_estrangeiro :=edit12.Text ;
tp_documento:= cb3.Text ;
////////////////////////////////////////////////
frm_cadAluno04 := Tfrm_cadAluno04.Create(self);
frm_cadAluno04.Parent:= frm_prncipal.panel2;
frm_cadAluno04.Align:= alClient;
frm_cadAluno04.BorderStyle:= bsNone;
frm_cadAluno04.WindowState :=wsMaximized;
frm_cadAluno04.show;

end;

procedure Tfrm_cadAluno03.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cadAluno03.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_cadAluno03.ScrollBar1Change(Sender: TObject);
begin
panel2.top:= -scrollbar1.position;
end;

end.
