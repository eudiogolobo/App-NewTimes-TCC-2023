unit U_altCadAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.ComCtrls,JPEG;

type
  Tfrm_altcadaluno = class(TForm)
    opd_rg: TOpenDialog;
    OPD_cpf: TOpenDialog;
    opd_certidao_nasc: TOpenDialog;
    opd_foto: TOpenDialog;
    opd_comp_residencia: TOpenDialog;
    opd_vacina: TOpenDialog;
    Panel2: TPanel;
    Label17: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label28: TLabel;
    Label41: TLabel;
    Label66: TLabel;
    Label85: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Panel33: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel8: TPanel;
    Edit1: TEdit;
    Panel13: TPanel;
    Label6: TLabel;
    cb1: TComboBox;
    Panel15: TPanel;
    Label7: TLabel;
    Panel12: TPanel;
    Edit40: TEdit;
    Panel19: TPanel;
    Label9: TLabel;
    cb3: TComboBox;
    Panel21: TPanel;
    Label10: TLabel;
    Panel22: TPanel;
    Edit4: TEdit;
    Panel35: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Label18: TLabel;
    MaskEdit1: TMaskEdit;
    Panel27: TPanel;
    Label13: TLabel;
    ComboBox10: TComboBox;
    Panel3: TPanel;
    Panel5: TPanel;
    Label12: TLabel;
    MaskEdit7: TMaskEdit;
    Panel25: TPanel;
    Label15: TLabel;
    MaskEdit8: TMaskEdit;
    Panel9: TPanel;
    Label4: TLabel;
    Panel10: TPanel;
    Edit2: TEdit;
    Panel14: TPanel;
    Label11: TLabel;
    Panel16: TPanel;
    MaskEdit3: TMaskEdit;
    Panel17: TPanel;
    Label14: TLabel;
    cb19: TComboBox;
    Panel18: TPanel;
    Label16: TLabel;
    cb20: TComboBox;
    Panel20: TPanel;
    Label19: TLabel;
    Panel23: TPanel;
    Edit8: TEdit;
    Panel24: TPanel;
    Label20: TLabel;
    cb4: TComboBox;
    Panel28: TPanel;
    Label21: TLabel;
    Panel29: TPanel;
    Edit9: TEdit;
    Panel30: TPanel;
    Label22: TLabel;
    cb5: TComboBox;
    Panel31: TPanel;
    Label23: TLabel;
    Panel32: TPanel;
    Edit10: TEdit;
    Panel34: TPanel;
    Label24: TLabel;
    Edit11: TEdit;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Label25: TLabel;
    Panel39: TPanel;
    Edit12: TEdit;
    Panel40: TPanel;
    Label26: TLabel;
    ComboBox3: TComboBox;
    Panel41: TPanel;
    Label27: TLabel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Panel42: TPanel;
    Panel43: TPanel;
    Label29: TLabel;
    Panel44: TPanel;
    Edit3: TEdit;
    Panel45: TPanel;
    Label30: TLabel;
    cb10: TComboBox;
    Panel46: TPanel;
    Label31: TLabel;
    Panel47: TPanel;
    Edit14: TEdit;
    Panel48: TPanel;
    Label32: TLabel;
    Panel49: TPanel;
    Edit15: TEdit;
    Panel50: TPanel;
    Label33: TLabel;
    Panel51: TPanel;
    Edit16: TEdit;
    Panel52: TPanel;
    Label34: TLabel;
    cb9: TComboBox;
    Panel53: TPanel;
    Label35: TLabel;
    Panel54: TPanel;
    MaskEdit2: TMaskEdit;
    Panel55: TPanel;
    Label36: TLabel;
    cb6: TComboBox;
    Panel56: TPanel;
    Label37: TLabel;
    dtp1: TDateTimePicker;
    Panel57: TPanel;
    Label38: TLabel;
    Panel58: TPanel;
    Edit18: TEdit;
    Panel59: TPanel;
    Label39: TLabel;
    dtp2: TDateTimePicker;
    Panel60: TPanel;
    Label40: TLabel;
    Panel61: TPanel;
    Edit19: TEdit;
    Panel62: TPanel;
    Panel63: TPanel;
    Label42: TLabel;
    CheckBox1: TCheckBox;
    Panel64: TPanel;
    Label43: TLabel;
    Panel65: TPanel;
    MaskEdit4: TMaskEdit;
    Panel66: TPanel;
    Label44: TLabel;
    Panel67: TPanel;
    Edit21: TEdit;
    Panel68: TPanel;
    Label45: TLabel;
    MaskEdit10: TMaskEdit;
    Panel70: TPanel;
    Label46: TLabel;
    Panel71: TPanel;
    Edit23: TEdit;
    Panel72: TPanel;
    Label47: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Panel73: TPanel;
    Label48: TLabel;
    dtp4: TDateTimePicker;
    Panel74: TPanel;
    Label49: TLabel;
    MaskEdit9: TMaskEdit;
    Panel76: TPanel;
    Label50: TLabel;
    CheckBox2: TCheckBox;
    Panel77: TPanel;
    Label51: TLabel;
    Panel78: TPanel;
    MaskEdit5: TMaskEdit;
    Panel79: TPanel;
    Label52: TLabel;
    Panel80: TPanel;
    Edit26: TEdit;
    Panel81: TPanel;
    Label53: TLabel;
    Panel82: TPanel;
    Edit27: TEdit;
    Panel83: TPanel;
    Label54: TLabel;
    dtp5: TDateTimePicker;
    Panel84: TPanel;
    Label55: TLabel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel85: TPanel;
    Label56: TLabel;
    Panel86: TPanel;
    Edit28: TEdit;
    Panel87: TPanel;
    Label57: TLabel;
    MaskEdit14: TMaskEdit;
    Panel89: TPanel;
    Label58: TLabel;
    MaskEdit16: TMaskEdit;
    Panel91: TPanel;
    Label59: TLabel;
    Panel92: TPanel;
    Edit31: TEdit;
    Panel93: TPanel;
    Label60: TLabel;
    Panel94: TPanel;
    Edit32: TEdit;
    MaskEdit6: TMaskEdit;
    Panel95: TPanel;
    Label61: TLabel;
    MaskEdit13: TMaskEdit;
    Panel97: TPanel;
    Label62: TLabel;
    Panel98: TPanel;
    Edit34: TEdit;
    Panel99: TPanel;
    Label63: TLabel;
    MaskEdit12: TMaskEdit;
    Panel101: TPanel;
    Label64: TLabel;
    MaskEdit11: TMaskEdit;
    Panel103: TPanel;
    Label65: TLabel;
    MaskEdit15: TMaskEdit;
    Panel105: TPanel;
    Panel106: TPanel;
    Label67: TLabel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Panel107: TPanel;
    Label68: TLabel;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    Panel108: TPanel;
    Label69: TLabel;
    CheckBox3: TCheckBox;
    Panel109: TPanel;
    Label70: TLabel;
    CheckBox4: TCheckBox;
    Panel110: TPanel;
    Label71: TLabel;
    CheckBox6: TCheckBox;
    Panel111: TPanel;
    Label72: TLabel;
    CheckBox8: TCheckBox;
    Panel112: TPanel;
    Label73: TLabel;
    ComboBox7: TComboBox;
    Panel113: TPanel;
    Label74: TLabel;
    Panel114: TPanel;
    Edit38: TEdit;
    Panel115: TPanel;
    Label75: TLabel;
    CheckBox5: TCheckBox;
    Panel116: TPanel;
    Label76: TLabel;
    CheckBox7: TCheckBox;
    Panel117: TPanel;
    Label77: TLabel;
    CheckBox9: TCheckBox;
    Panel118: TPanel;
    Label78: TLabel;
    CheckBox10: TCheckBox;
    Panel119: TPanel;
    Label79: TLabel;
    CheckBox11: TCheckBox;
    Panel120: TPanel;
    Label80: TLabel;
    CheckBox12: TCheckBox;
    Panel121: TPanel;
    Label81: TLabel;
    CheckBox13: TCheckBox;
    Panel122: TPanel;
    Label82: TLabel;
    Memo1: TMemo;
    Panel123: TPanel;
    Label83: TLabel;
    Memo2: TMemo;
    Panel124: TPanel;
    Label84: TLabel;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Panel125: TPanel;
    Panel126: TPanel;
    Label86: TLabel;
    Panel127: TPanel;
    Edit39: TEdit;
    Panel128: TPanel;
    Label87: TLabel;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    Panel129: TPanel;
    Label88: TLabel;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    Panel130: TPanel;
    Label89: TLabel;
    cb8: TComboBox;
    Panel131: TPanel;
    Label90: TLabel;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    Panel132: TPanel;
    Label91: TLabel;
    cb11: TComboBox;
    Panel133: TPanel;
    Panel134: TPanel;
    Image1: TImage;
    SpeedButton3: TSpeedButton;
    Panel135: TPanel;
    Panel136: TPanel;
    Image2: TImage;
    SpeedButton4: TSpeedButton;
    Panel137: TPanel;
    Panel138: TPanel;
    Image3: TImage;
    SpeedButton5: TSpeedButton;
    Panel139: TPanel;
    Panel140: TPanel;
    Image4: TImage;
    SpeedButton6: TSpeedButton;
    Panel141: TPanel;
    Panel142: TPanel;
    Image5: TImage;
    SpeedButton7: TSpeedButton;
    Panel143: TPanel;
    Panel144: TPanel;
    Image6: TImage;
    SpeedButton8: TSpeedButton;
    ScrollBar1: TScrollBar;
    pnl_incluir: TPanel;
    btn_incluir: TSpeedButton;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Label99: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    nomeCadastro: TLabel;
    DataCad: TLabel;
    HoraCad: TLabel;
    NomeEdit: TLabel;
    DataEdit: TLabel;
    HoraEdit: TLabel;
    Panel6: TPanel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_incluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_altcadaluno: Tfrm_altcadaluno;
  codalt,indice_img_alt:integer;



implementation

{$R *.dfm}
uses
U_dm,U_principalpas,U_cadastroAluno, U_pqal, U_busca_img_rg, U_INICIO;

procedure Tfrm_altcadaluno.btn_incluirClick(Sender: TObject);
begin
if MessageDlg('Voc� perder� as altera��es j� feitas, deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes then
  begin
  //////////////////////////////////////////

  frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
  end;
end;

procedure Tfrm_altcadaluno.FormCreate(Sender: TObject);
begin
with dm.qControleAcoes do
 begin
   close;
   sql.clear;
   sql.add('select * from controledeacoes where CodTabela = :CodTabela and id_tabela_ref = :idad ');
   parambyname('idad').asinteger:= dm.qconsultaid.Value;
   parambyname('CodTabela').asinteger:=6;
   open;
 end;

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :idd');
   parambyname('idd').AsInteger:= dm.qControleAcoesUsuarioCodCad.value;
   open;
 end;

nomeCadastro.Caption:=  dm.qusuariosnome.Value;
datacad.Caption:=  datetostr(dm.qControleAcoesDataCad.value);
horacad.Caption:=  timetostr(dm.qControleAcoesHoraCad.value);

 with dm.qusuarios do
 begin
   close;
   sql.Clear;
   sql.Add('select * from usuarios where id = :id');
   parambyname('id').AsInteger:= dm.qControleAcoesUsuarioCodAlt.value;
   open;

   if recordcount<>0 then
   begin
     nomeEdit.Caption:= dm.qusuariosnome.Value;
    dataedit.Caption:= datetostr(dm.qControleAcoesDataAlt.value);
    horaedit.Caption:= timetostr(dm.qControleAcoesHoraalt.value);
   end;
 end;

////////


save_rg2:=false;

save_cpf2:=false;

save_crt_nasc2:=false;

save_foto2:=false;

save_comp_residencia2:=false;

save_crt_vacina2:=false;


indice_img_alt:=0;
indice_img:=0;

////////////// CARREGANDO INFO. PESSOAIS ///////////////////////
with dm.qalunos do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from alunos where id = :codd');
    parambyname('codd').asinteger:=codalt;
    open;
    edit1.Text:=(dm.qalunosnome.text);
    maskedit1.Text:=datetostr(dm.qalunosdata_nasc.value);
    edit40.Text:=(dm.qalunosnacionalidade.text);
    edit4.Text:=(dm.qalunosnaturalidade.text);
    edit2.Text:=(dm.qalunosemail.text);
    MASKEDIT7.Text:=(dm.qalunoscelular.text);
    MASKEDIT8.Text:=(dm.qalunostelresidencial.text);
    //////////////////////////
    if (dm.qalunossexo.text)='MASCULINO' then
    combobox10.ItemIndex:=0
    else
    combobox10.ItemIndex:=1;
    ////////////////////////

    if (dm.qalunosestado_civil.text)='(NENHUM)' then
    cb3.ItemIndex:=0;

    if (dm.qalunosestado_civil.text)='SOLTEIRO(A)' then
    cb3.ItemIndex:=1;

    if (dm.qalunosestado_civil.text)='CASADO(A)' then
    cb3.ItemIndex:=2;

    if (dm.qalunosestado_civil.text)='VI�VO(A)' then
    cb3.ItemIndex:=3;

    if (dm.qalunosestado_civil.text)='SEPARADO(A)' then
    cb3.ItemIndex:=4;

    if (dm.qalunosestado_civil.text)='DIVORCIADO(A)' then
    cb3.ItemIndex:=5;

    if (dm.qalunosestado_civil.text)='CONTRATUAL' then
    cb3.ItemIndex:=6;
  /////////////////////////////////////////
     if (dm.qalunoscor_raca.text)='N�O DECLARADA' then
    cb1.ItemIndex:=0;

       if (dm.qalunoscor_raca.text)='BRANCA' then
    cb1.ItemIndex:=1;

       if (dm.qalunoscor_raca.text)='PRETA' then
    cb1.ItemIndex:=2;

       if (dm.qalunoscor_raca.text)='PARDA' then
    cb1.ItemIndex:=3;

       if (dm.qalunoscor_raca.text)='AMARELA' then
    cb1.ItemIndex:=4;

       if (dm.qalunoscor_raca.text)='IND�GENA' then
    cb1.ItemIndex:=5;

  end;

/////////////////////// CARREGANDO ENDERE�O /////////////////

 begin
   with dm.qendereco do
   begin
     close;
     sql.Clear;
     sql.Add('select * from endereco where AlunoCod= :AlunoCod');
     parambyname('AlunoCod').AsInteger:=codalt;
     open;

     maskedit3.Text:=(dm.qenderecocep.Text);
     edit11.text:=(dm.qenderecolog.Text);
     edit12.text:=(dm.qendereconumero.Text);
     edit10.text:=(dm.qenderecocomplemento.Text);
     edit8.text:=(dm.qenderecopt_ref.Text);
     edit9.text:=(dm.qenderecobairro.Text);
     // PA�S
     if (dm.qenderecopais.Text)='BRASIL' then
     cb4.ItemIndex:=0;

     // ESTADO
     if (dm.qenderecoestado.Text)='SC' then
     cb19.ItemIndex:=0;

     // MUNIC�PIO
     if (dm.qenderecomunicipio.Text)='CRICI�MA' then
     cb5.ItemIndex:=0;
     if (dm.qenderecoMUNICIPIO.Text)='I�ARA' then
     cb5.ItemIndex:=1;

     // TIPO LOGRADOURO
     if (dm.qenderecotp_log.Text)='RUA' then
     cb20.ItemIndex:=0;
     if (dm.qenderecotp_log.Text)='QUADRA' then
     cb20.ItemIndex:=1;

     // TIPO DE MORADIA
     if (dm.qenderecotp_MORA.Text)='CASA' then
     COMBOBOX3.ItemIndex:=0;
     if (dm.qenderecotp_MORA.Text)='HOTEL' then
     COMBOBOX3.ItemIndex:=1;
     if (dm.qenderecotp_MORA.Text)='APARTAMENTO' then
     COMBOBOX3.ItemIndex:=2;

     // ZONA MORADIA
     if (dm.qenderecoZONA.Text)='URBANA' then
     begin
     RADIOBUTTON1.Checked:=TRUE;
     RADIOBUTTON2.Checked:=false;
     end;
     if (dm.qenderecoZONA.Text)='RURAL' then
     begin
     RADIOBUTTON1.Checked:=false;
     RADIOBUTTON2.CHECKED:=TRUE;
     end;




   end;
 end;

 ///////// CARREGANDO DOCUMENTOS ///////////
 BEGIN
   with dm.qdocumentos do
   begin
     close;
     sql.clear;
     sql.add('Select * from documentos where AlunoCod= :Aluno');
     parambyname('Aluno').asinteger:=codalt;
     open;

     maskedit2.Text:=(dm.qdocumentoscpf.text);
     edit3.Text:=(dm.qdocumentosrg.text);





   end;
 END;

 ////// CARREGANDO RESPONSAVEIS ////////////
  BEGIN
   with dm.qresponsaveis do
   begin
     close;
     sql.clear;
     sql.add('Select * from responsaveis where AlunoCod= :Aluno');
     parambyname('Aluno').asinteger:=codalt;
     open;

     edit23.Text:=(dm.qresponsaveisf1.text);

     //falecido f1
     if (dm.qresponsaveisf1falecido.text)='SIM' then
     checkbox1.checked:=true;

     // Identifica��o f1
     if (dm.qresponsaveisf1id.text)='M�E' then
     begin
     radiobutton3.checked:=true; //mae
     radiobutton6.checked:=true;  //pai
     radiobutton4.checked:=false;
     radiobutton5.checked:=false
     end
     else
     begin
     radiobutton4.checked:=true;  //mae
     radiobutton5.checked:=true;  //pai
     radiobutton3.checked:=false;
     radiobutton6.checked:=false;
     end;

     maskedit4.Text:=(dm.qresponsaveisf1cpf.Text);

     dtp4.date:=(dm.qresponsaveisf1nasc.value);

     edit21.Text:=(dm.qresponsaveisf1email.text);

     MASKEDIT9.Text:=(dm.qresponsaveisf1ddd.text);
     MASKEDIT10.Text:=(dm.qresponsaveisf1cell.text);
     // f2

     edit27.Text:=(dm.qresponsaveisf2.text);
      //falecido f2
     if (dm.qresponsaveisf2falecido.text)='SIM' then
     checkbox2.checked:=true;

     maskedit5.Text:=(dm.qresponsaveisf2cpf.Text);

     dtp5.date:=(dm.qresponsaveisf2nasc.Value);
     edit26.Text:=(dm.qresponsaveisf2email.text);
     MASKEDIT11.Text:=(dm.qresponsaveisf2ddd.value);
     MASKEDIT12.Text:=(dm.qresponsaveisf2cell.text);

     //resp. legal
     edit31.Text:=(dm.qresponsaveisresplegal.text);
     maskedit6.Text:= (dm.qresponsaveislegalcpf.text);
     edit28.Text:=(dm.qresponsaveislegalemail.text);
     MASKEDIT13.Text:=(dm.qresponsaveislegalddd.value);
      MASKEDIT14.Text:=(dm.qresponsaveislegalcell.text);

      // parente
       edit34.Text:=(dm.qresponsaveisparente.text);
       MASKEDIT16.Text:=(dm.qresponsaveisparenteddd.value);
       MASKEDIT15.Text:=(dm.qresponsaveisparentecell.text);

   end;
 END;

 ////// CARREGANDO SA�DE ////////////
  BEGIN
   with dm.qsaude do
   begin
     close;
     sql.clear;
     sql.add('Select * from saude where AlunoCod= :Aluno');
     parambyname('Aluno').asinteger:=codalt;
     open;

     // ESPECIAL
     if (dm.qsaudeespecial.Text)='SIM' then
     combobox7.itemindex:=0
     else
     combobox7.itemindex:=1;

     // TIPO SANGUE

     if (dm.qsaudetiposanguineo.Text)='A' then
     radiobutton7.Checked:=true;
     if (dm.qsaudetiposanguineo.Text)='B' then
     radiobutton8.Checked:=true;
     if (dm.qsaudetiposanguineo.Text)='O' then
     radiobutton9.Checked:=true;
     if (dm.qsaudetiposanguineo.Text)='AB' then
     radiobutton10.Checked:=true;

     edit38.Text:=(dm.qsaudeplanosaude.Text);

     // FATOR SANGUE
     if (dm.qsaudefatorsanguineo.Text)='POSITIVO' then
     radiobutton11.Checked:=true;
     if (dm.qsaudefatorsanguineo.Text)='NEGATIVO' then
     radiobutton12.Checked:=true;

     // lactose
     if (dm.qsaudeintlactose.Text)='SIM' then
     checkbox5.Checked:=true;
     //gluten
     if (dm.qsaudeintgluten.Text)='SIM' then
     checkbox3.Checked:=true;
     //hiperten��o
     if (dm.qsaudehipertencao.Text)='SIM' then
     checkbox7.Checked:=true;
      //diabetes
     if (dm.qsaudediabetes.Text)='SIM' then
     checkbox4.Checked:=true;
      //picada insetos
     if (dm.qsaudealergiapcdinsetos.Text)='SIM' then
     checkbox9.Checked:=true;
     //chocolate
     if (dm.qsaudealergiachocolate.Text)='SIM' then
     checkbox6.Checked:=true;
     //ovo
     if (dm.qsaudealergiaovo.Text)='SIM' then
     checkbox10.Checked:=true;
     // pelo animal
     if (dm.qsaudealergiapeloanimal.Text)='SIM' then
     checkbox8.Checked:=true;
      // poeira
     if (dm.qsaudealergiapoeira.Text)='SIM' then
     checkbox12.Checked:=true;
      // rinite
     if (dm.qsauderinite.Text)='SIM' then
     checkbox11.Checked:=true;
      // outros
     if (dm.qsaudeoutros.Text)='SIM' then
     checkbox13.Checked:=true;

     memo1.Text:=(dm.qsaudeoutrasobs.text);
     memo2.Text:=(dm.qsaudeusomedicamentos.text);

     // gp risco covid
     if (dm.qsaudegpcovid.Text)='SIM' then
     begin
     radiobutton13.Checked:=true;
     radiobutton14.Checked:=false;
     end
     else
     begin
     radiobutton13.Checked:=false;
     radiobutton14.Checked:=true;
     end;

   end;
 END;

 ////// CARREGANDO INFO. COMPLEMENTAR ////////////
  BEGIN
   with dm.qcomplemento do
   begin
     close;
     sql.clear;
     sql.add('Select * from info_complementar where AlunoCod= :Aluno');
     parambyname('Aluno').asinteger:=codalt;
     open;

     edit39.Text:=(dm.qcomplementocns.text);

     // bolsa fml
     if (dm.qcomplementobolsafml.text)='SIM' then
     begin
       radiobutton15.Checked:=true;
       radiobutton16.Checked:=false
     end
       else
       begin
       radiobutton15.Checked:=false;
       radiobutton16.Checked:=true;
     end;

       // uso img
     if (dm.qcomplementousoimg.Text)='SIM' then
     cb8.itemindex:=0
     else
     cb8.itemindex:=1;

     // tem pc
     if (dm.qcomplementotempc.text)='SIM' then
     begin
       radiobutton17.Checked:=true;
       radiobutton18.Checked:=false
     end
       else
       begin
       radiobutton17.Checked:=false;
       radiobutton18.Checked:=true;
     end;

     // tem internet
     if (dm.qcomplementoteminter.text)='SIM' then
     begin
       radiobutton19.Checked:=true;
       radiobutton20.Checked:=false
     end
       else
       begin
       radiobutton19.Checked:=false;
       radiobutton20.Checked:=true;
     end;

       // preten��o escolar
     if (dm.qcomplementopretencaoesc.Text)='SIM' then
     cb11.itemindex:=0
     else
     cb11.itemindex:=1;

   end;

 END;


end;

procedure Tfrm_altcadaluno.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
end;

procedure Tfrm_altcadaluno.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_altcadaluno.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_altcadaluno.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
frm_prncipal.resultado.visible:= false;
frm_prncipal.origem.visible:= true;
end;

procedure Tfrm_altcadaluno.RadioButton1Click(Sender: TObject);
begin
radiobutton1.Checked:=true;
radiobutton2.Checked:=false;
end;

procedure Tfrm_altcadaluno.RadioButton2Click(Sender: TObject);
begin
radiobutton2.Checked:=true;
radiobutton1.Checked:=false;
end;

procedure Tfrm_altcadaluno.RadioButton3Click(Sender: TObject);
begin
radiobutton3.Checked:=true;
radiobutton6.Checked:=true;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;

end;

procedure Tfrm_altcadaluno.RadioButton4Click(Sender: TObject);
begin
radiobutton3.Checked:=false;
radiobutton6.Checked:=false;
radiobutton4.Checked:=true;
radiobutton5.Checked:=true;
end;

procedure Tfrm_altcadaluno.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_altcadaluno.ScrollBar2Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_altcadaluno.SpeedButton10Click(Sender: TObject);
begin
application.CreateForm(Tfrm_pqal,  frm_pqal);
 frm_pqal.ShowModal;
end;

procedure Tfrm_altcadaluno.SpeedButton1Click(Sender: TObject);
var
alunos, endereco,documentos,responsaveis,saude, complementar,anexos:boolean;
zona:string;
identificacao1,identificacao2,falecido1,falecido2:string;
tpsangue,ftrsangue:string;
lactose,gluten,hipertensao,diabetes,pcdinseto,chocolate,ovo,animal,poeira,rinite,outros,covid:string;
pc,bs_fml,internet:string;
jpg1, jpg2, jpg3, jpg4, jpg5, jpg6 : TJpegImage;
BEGIN

    alunos:=false;
    endereco   :=true;
    documentos  :=true;
    responsaveis :=true;
    saude         :=true;
    complementar  :=true;
    anexos:=true;
   /////////////////////////////////////////
   if (edit1.Text<>'') and (MASKEDIT7.Text<>'') and (MASKEDIT8.Text<>'') and (combobox10.ItemIndex<>-1) and (cb3.ItemIndex<>-1) and (edit2.Text<>'') and (maskedit1.Text<>'') and (cb1.ItemIndex<>-1) and (edit40.Text<>'') and (edit4.Text<>'') then
   begin
     alunos:=true;
   end;

   if (maskedit3.Text='') or (cb4.ItemIndex=-1) or (cb5.ItemIndex=-1) or (cb19.ItemIndex=-1) or (cb20.ItemIndex=-1)  or (edit9.Text='')  or (edit11.Text='') or (edit12.Text='') or (combobox3.ItemIndex=-1) then
    begin
      endereco:=false;
    end;

    if (maskedit2.Text='') then
    begin
      documentos:=false;
    end;

    begin
      if (CHECKBOX1.Checked=FALSE) AND (CHECKBOX2.Checked=FALSE) AND ((edit23.Text='') or (MASKEDIT4.Text='') or (edit21.Text='') or (MASKEDIT9.Text='') or (MASKEDIT10.Text='') or (edit27.Text='') or (MASKEDIT5.Text='') or (edit26.Text='') or (MASKEDIT11.Text='') or (MASKEDIT12.Text='') or (edit34.Text='') or (MASKEDIT16.Text='') or (MASKEDIT15.Text='')) then
      BEGIN
      responsaveis:=false;
      END
      ELSE
      BEGIN
       if (CHECKBOX1.Checked=TRUE) AND (CHECKBOX2.Checked=TRUE) THEN
       BEGIN
        if (edit23.Text='') or (edit27.Text='')  or (edit34.Text='') or (MASKEDIT16.Text='') or (MASKEDIT15.Text='') then
        BEGIN
          responsaveis:=false;
        END;
       END;

       if (CHECKBOX2.Checked=TRUE) AND (CHECKBOX1.Checked=FALSE) THEN
       BEGIN
        if (edit23.Text='') or (MASKEDIT4.Text='') or (edit21.Text='') or (MASKEDIT9.Text='') or (MASKEDIT10.Text='') or (edit27.Text='') or (edit34.Text='') or (MASKEDIT16.Text='') or (MASKEDIT15.Text='') then
        BEGIN
          responsaveis:=false;
        END;
       END;

       if (CHECKBOX2.Checked=FALSE) AND (CHECKBOX1.Checked=TRUE) THEN
       BEGIN
           if (edit23.Text='') OR (edit27.Text='') or (MASKEDIT5.Text='') or (edit26.Text='') or (MASKEDIT11.Text='') or (MASKEDIT12.Text='')  or (edit34.Text='') or (MASKEDIT16.Text='') or (MASKEDIT15.Text='') then
        BEGIN
          responsaveis:=false;
        END;
       END;


      END;

    end;

    if (combobox7.ItemIndex=-1) then
    begin
      saude:=false;
    end;

    if (cb8.ItemIndex=-1) or (cb11.ItemIndex=-1) then
    BEGIN
      complementar:=false;
    END;

    ///////////////// VERIFICA��O ///////////////////////////////////////
    if (anexos=true) and (alunos=true) and (endereco=true) and (documentos=true) and (responsaveis=true) and (saude=true) and (complementar=true) then
    begin
     ///////////////// ALTERA ALUNOS ///////////////////////////////////////
      with dm.tbalunos do
      begin
        close;
        sql.Clear;
        sql.Add('update alunos set nome=:nome,sexo=:sexo,estado_civil=:estado_civil,email=:email,data_nasc=:data_nasc,cor_raca=:cor_raca,nacionalidade=:nacionalidade,naturalidade=:naturalidade,celular=:celular,telresidencial=:telresidencial where id = :id');
         parambyname('id').Asinteger:=dm.qalunosid.Value;
        parambyname('nome').AsString:=edit1.Text;
        parambyname('sexo').AsString:=combobox10.Text;
        parambyname('estado_civil').AsString:=cb3.Text;
        parambyname('email').AsString:=edit2.Text;
        parambyname('data_nasc').ASDATE:=STRTODATE(MASKEDIT1.Text);
        parambyname('cor_raca').AsString:=cb1.Text;
        parambyname('nacionalidade').AsString:=edit40.Text;
        parambyname('naturalidade').AsString:=edit4.Text;
        parambyname('celular').AsString:=MASKEDIT7.Text;
        parambyname('telresidencial').AsString:=MASKEDIT8.Text;

        execsql;
      end;

        ////////////// ALTERA ENDERE�O /////////////////////////
         if radiobutton1.Checked=true then
         zona:='URBANA';
         if radiobutton2.Checked=true then
         zona:='RURAL';

          with dm.tbendereco do
          begin

            close;
            sql.Clear;
            sql.Add('update endereco set cep=:cep,pais=:pais,estado=:estado,municipio=:municipio,tp_log=:tp_log,log=:log,numero=:numero,complemento=:complemento,pt_ref=:pt_ref,bairro=:bairro,tp_mora=:tp_mora,zona=:zona where AlunoCod= :id');
            parambyname('id').Asinteger:=dm.qalunosid.Value;
            parambyname('cep').asSTRING:=(maskedit3.Text);
            parambyname('pais').AsString:=cb4.Text;
            parambyname('estado').AsString:=cb19.Text;
            parambyname('municipio').AsString:=cb5.Text;
            parambyname('tp_log').asstring:=cb20.Text;
            parambyname('log').AsString:=edit11.Text;
            parambyname('numero').AsString:=edit12.Text;
            parambyname('complemento').AsString:=edit10.Text;
            parambyname('pt_ref').AsString:=edit8.Text;
            parambyname('bairro').AsString:=edit9.Text;
            parambyname('tp_mora').AsString:=combobox3.Text;
            parambyname('zona').AsString:=zona;
            execsql;
          end;

        //////////////// ALTERA DOCUMENTOS //////////////////////////////
        with dm.tbdocumentos do
        begin
          close;
          sql.Clear;
          sql.Add('update documentos set cpf=:cpf,rg=:rg,em=:em,oe=:oe,dt_ex=:dt_ex,cn=:cn,livro=:livro,folha=:folha,dt_ex2=:dt_ex2,nis=:nis,de=:de,tpdoc=:tpdoc where AlunoCod = :id ');
          parambyname('id').Asinteger:=dm.qalunosid.Value;
          parambyname('cpf').AsString:=maskedit2.Text;
          parambyname('rg').AsString:=edit3.Text;
          parambyname('em').AsString:=cb6.Text;
          parambyname('oe').AsString:=cb10.Text;
          parambyname('dt_ex').asdate:=dtp1.date;
          parambyname('cn').AsString:=edit14.Text;
          parambyname('livro').AsString:=edit18.Text;
          parambyname('folha').AsString:=edit15.Text;
          parambyname('dt_ex2').asdate:=dtp2.date;
          parambyname('nis').AsString:=edit16.Text;
          parambyname('de').AsString:=edit19.Text;
          parambyname('tpdoc').AsString:=cb9.Text;
          execsql;
        end;

        ////////////////// ALTERA RESPONSAVEIS ///////////////////////
          if checkbox1.Checked=true then
          falecido1:='SIM'
          else
          falecido1:='N�O';

          if checkbox2.Checked=true then
          falecido2:='SIM'
          else
          falecido2:='N�O';

          if radiobutton3.Checked=true then
          identificacao1:='M�E'
          else
          identificacao1:='PAI';

          if radiobutton5.Checked=true then
          identificacao2:='M�E'
          else
          identificacao2:='PAI';

          with dm.tbresponsaveis do
          begin
            close;
            sql.clear;
            sql.add('update responsaveis set f1=:b,f1falecido=:c,f1id=:d,f1cpf=:e,f1nasc=:f,f1email=:g,f1ddd=:h,f1cell=:i,f2=:j,f2falecido=:k,f2id=:l,f2cpf=:m,f2nasc=:n,f2email=:o,f2ddd=:p,f2cell=:q where AlunoCod = :id');
            parambyname('id').Asinteger:=dm.qalunosid.Value;
            parambyname('b').asstring:= edit23.Text;
            parambyname('c').asstring:= falecido1;
            parambyname('d').asstring:= identificacao1;
            parambyname('e').asstring:= MASKEDIT4.Text;
            parambyname('f').asdate:= dtp4.Date;
            parambyname('g').asstring:= edit21.Text;
            parambyname('h').asstring:=( MASKEDIT9.Text);
            parambyname('i').asstring:= MASKEDIT10.Text;
            parambyname('j').asstring:= edit27.Text;
            parambyname('k').asstring:= falecido2;
            parambyname('l').asstring:= identificacao2;
            parambyname('m').asstring:= MASKEDIT5.Text;
            parambyname('n').asdate:= dtp5.date;
            parambyname('o').asstring:= edit26.Text;
            parambyname('p').asstring:= (MASKEDIT11.Text);
            parambyname('q').asstring:= MASKEDIT12.text;

            execsql;
          end;

            with dm.tbresponsaveis do
          begin
            close;
            sql.clear;
            sql.add('update responsaveis set resplegal= :resplegal, legalcpf= :legalcpf,legalemail= :legalemail,legalddd= :legalddd,legalcell= :legalcell, parente= :parente,parenteddd= :parenteddd,parentecell= :parentecell where AlunoCod=:id');
            parambyname('resplegal').asstring:= edit31.text ;
            parambyname('legalcpf').asstring:= MASKEDIT6.Text;
            parambyname('legalemail').asstring:= edit28.Text;
            parambyname('legalddd').asstring:=( MASKEDIT13.Text);
            parambyname('legalcell').asstring:= MASKEDIT14.Text;
            parambyname('parente').asstring:= edit34.Text;
            parambyname('parenteddd').asstring:= (MASKEDIT16.Text) ;
            parambyname('parentecell').asstring:= MASKEDIT15.Text;
            parambyname('id').Asinteger:=dm.qalunosid.Value;

            execsql;
          end;

          ///////////////////  ALTERA SAUDE //////////////////////////
            if radiobutton7.Checked=true then
            tpsangue:='A';
            if radiobutton8.Checked=true then
            tpsangue:='B';
            if radiobutton9.Checked=true then
            tpsangue:='O';
            if radiobutton10.Checked=true then
            tpsangue:='AB';
            //////////////////////////////////////////
            if radiobutton11.Checked=true then
            ftrsangue:='POSITIVO';
            if radiobutton12.Checked=true then
            ftrsangue:='NEGATIVO';
            /////////////////////////////////////////
            if checkbox5.Checked=true then
            lactose:='SIM'else
            lactose:='N�O';

            if checkbox3.Checked=true then
            gluten:='SIM'else
            gluten:='N�O';

            if checkbox7.Checked=true then
            hipertensao:='SIM'else
            hipertensao:='N�O';

            if checkbox4.Checked=true then
            diabetes:='SIM'else
            diabetes:='N�O';

            if checkbox9.Checked=true then
            pcdinseto:='SIM'else
            pcdinseto:='N�O';

            if checkbox6.Checked=true then
            chocolate:='SIM'else
            chocolate:='N�O';

            if checkbox10.Checked=true then
            ovo:='SIM'else
            ovo:='N�O';

            if checkbox8.Checked=true then
            animal:='SIM'else
            animal:='N�O';

            if checkbox12.Checked=true then
            poeira:='SIM'else
            poeira:='N�O';

            if checkbox11.Checked=true then
            rinite:='SIM'else
            rinite:='N�O';

            if checkbox13.Checked=true then
            outros:='SIM'else
            outros:='N�O';
            /////////////////////////
             if radiobutton13.checked=true  then
             covid:='SIM'
             else
             covid:='N�O';

              with dm.tbsaude do
              begin
                close;
                sql.clear;
                sql.add('update saude set especial=:especial,tiposanguineo=:tiposanguineo,planosaude=:planosaude,fatorsanguineo=:fatorsanguineo,intlactose=:intlactose,intgluten=:intgluten,hipertencao=:hipertencao,diabetes=:diabetes,');
                sql.add('alergiapcdinsetos=:alergiapcdinsetos,alergiachocolate=:alergiachocolate,alergiaovo=:alergiaovo,alergiapeloanimal=:alergiapeloanimal,alergiapoeira=:alergiapoeira,rinite=:rinite,outros=:outros,outrasobs=:outrasobs,usomedicamentos=:usomedicamentos,');
                sql.Add('gpcovid=:gpcovid where AlunoCod = :id');
                parambyname('id').Asinteger:=dm.qalunosid.Value;
                parambyname('especial').asstring:=  combobox7.Text  ;
                parambyname('tiposanguineo').asstring:=  tpsangue  ;
                parambyname('planosaude').asstring:=  edit38.Text  ;
                parambyname('fatorsanguineo').asstring:=  ftrsangue  ;
                parambyname('intlactose').asstring:=   lactose ;
                parambyname('intgluten').asstring:=   gluten ;
                parambyname('hipertencao').asstring:=   hipertensao ;
                parambyname('diabetes').asstring:=   diabetes ;
                parambyname('alergiapcdinsetos').asstring:=   pcdinseto ;
                parambyname('alergiachocolate').asstring:=   chocolate ;
                parambyname('alergiaovo').asstring:=   ovo ;
                parambyname('alergiapeloanimal').asstring:=   animal ;
                parambyname('alergiapoeira').asstring:=   poeira ;
                parambyname('rinite').asstring:=   rinite ;
                parambyname('outros').asstring:=   outros ;
                parambyname('outrasobs').asstring:=   memo1.Text ;
                parambyname('usomedicamentos').asstring:=   memo2.Text ;
                parambyname('gpcovid').asstring:=   covid ;

                EXECSQL;


              end;

          ////////////// ALTERA INFO.COMPLEMENTAR //////////////
           if radiobutton15.Checked=true then
           bs_fml:='SIM'
           else
           bs_fml:='N�O';

            if radiobutton17.Checked=true then
           pc:='SIM'
           else
           pc:='N�O';

            if radiobutton19.Checked=true then
           internet:='SIM'
           else
           internet:='N�O';
            ///
            ///
              with dm.tbinfocomp do
            begin
              close;
              sql.Clear;
              sql.Add('update	info_complementar set cns=:cns,bolsafml=:bolsafml,usoimg=:usoimg,tempc=:tempc,teminter=:teminter,pretencaoesc=:pretencaoesc where AlunoCod = :id');
              parambyname('id').Asinteger:=dm.qalunosid.Value;
              parambyname('cns').AsString:=edit39.Text;
              parambyname('bolsafml').AsString:= bs_fml;
              parambyname('usoimg').AsString:=cb8.Text;
              parambyname('tempc').AsString:=pc;
              parambyname('teminter').asstring:= internet;
              parambyname('pretencaoesc').AsString:=cb11.Text;
              execsql;
            end;

       /////////////////// ALTERA ANEXO DOC //////////////

          /// atualiza edicao tabela acoes
              WITH dm.tbControleAcoes do
             begin
               close;
               sql.clear;
               sql.add('update controledeacoes set UsuarioCodAlt = :UsuarioCodAlt ,DataAlt = :DataAlt, HoraAlt= :HoraAlt where CodTabela= :CodTabela and id_tabela_ref = :idaa ');
               parambyname('UsuarioCodAlt').asinteger:= logado;
               parambyname('DataAlt').asdate:= date();
               parambyname('HoraAlt').astime:= time() ;
               parambyname('idaa').asinteger:= dm.qalunosid.Value;
               parambyname('CodTabela').asinteger:=6;
               execsql;
             end;

         if opd_rg.filename<>'' then
        begin
         jpg1 := TJpegImage.Create;
         jpg1.LoadFromFile(OPD_rg.FileName);
         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('update anexo_documentos set rg = :rg where AlunoCod = :AlunoCod');
           ParamByname('rg').Assign(jpg1);
           ParamByname('AlunoCod').asinteger:=(codalt);
           execsql;
         end;
        end;

         if (opd_cpf.filename<>'')  then
        begin
         jpg2 := TJpegImage.Create;
         jpg2.LoadFromFile(OPD_cpf.FileName);
         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('update anexo_documentos set cpf= :cpf where AlunoCod = :AlunoCod');
           ParamByname('AlunoCod').asinteger:=(codalt);
           ParamByname('cpf').Assign(jpg2);
           execsql;
         end;
        end;

         if opd_certidao_nasc.FileName<>'' then
        begin
         jpg3 := TJpegImage.Create;
         jpg3.LoadFromFile(opd_certidao_nasc.FileName);
         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('update anexo_documentos set certidaonasc= :certidaonasc where AlunoCod = :AlunoCod');
           ParamByname('AlunoCod').asinteger:=(codalt);
           ParamByname('certidaonasc').Assign(jpg3);
           execsql;
         end;
        end;

         if opd_foto.filename<>'' then
        begin
         jpg4 := TJpegImage.Create;
         jpg4.LoadFromFile(opd_foto.FileName);
         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('update anexo_documentos set fotopessoal= :fotopessoal where AlunoCod = :AlunoCod');
           ParamByname('AlunoCod').asinteger:=(codalt);
           ParamByname('fotopessoal').Assign(jpg4);
           execsql;
         end;
        end;

         if opd_comp_residencia.filename<>'' then
        begin
         jpg5 := TJpegImage.Create;
         jpg5.LoadFromFile(opd_comp_residencia.FileName);
         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('update anexo_documentos set compresidencia= :compresidencia where AlunoCod = :AlunoCod');
           ParamByname('AlunoCod').asinteger:=(codalt);
           ParamByname('compresidencia').Assign(jpg5);
           execsql;
         end;
        end;

         if opd_vacina.FileName<>'' then
        begin
         jpg6 := TJpegImage.Create;
         jpg6.LoadFromFile(opd_vacina.FileName);
         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('update anexo_documentos set crtvacina= :crtvacina where AlunoCod = :AlunoCod');
           ParamByname('AlunoCod').asinteger:=(codalt);
           ParamByname('crtvacina').Assign(jpg6);
           execsql;
         end;
        end;


       frm_inicio := Tfrm_inicio.Create(self);
       frm_inicio.Parent:= frm_prncipal.panel2;
       frm_inicio.Align:= alClient;
       frm_inicio.BorderStyle:= bsNone;
       frm_inicio.WindowState :=wsMaximized;
       frm_inicio.show;
        showmessage('Salvo com sucesso!')

   end

      Else
      begin
        if (alunos=false) then
        begin
          showmessage('ERRO: Campo obrigat�rio em branco em Informa��es De Identifica��o!');
        end
        else
        begin
        if (endereco=false) then
          begin
            showmessage('ERRO: Campo obrigat�rio em branco em Informa��es De Endere�o!');
          end
        else
        begin
         if (documentos=false) then
          begin
          showmessage('ERRO: Campo obrigat�rio em branco em Informa��es Dos Documentos!');
          end
        else
        begin
          if (responsaveis=false) then
          begin
          showmessage('ERRO: Campo obrigat�rio em branco em Informa��es Dos Respons�veis!')
        end
        else
          begin
          if (saude=false) then
            begin
            showmessage('ERRO: Campo obrigat�rio em branco em Informa��es De Sa�de!')

          end
          else
          begin
            if (complementar=false) then
            begin
              showmessage('ERRO: Campo obrigat�rio em branco em Informa��es Complementares!')
            end
            else
            if (anexos=false) then
            begin
              showmessage('ERRO: Campo obrigat�rio em branco em Anexo De Documentos!')
            end
          end;


        end;
       end;
      end;
     end;
    end;
  end;




procedure Tfrm_altcadaluno.SpeedButton3Click(Sender: TObject);
begin
indice_img_alt:=1;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_altcadaluno.SpeedButton4Click(Sender: TObject);
begin
indice_img_alt:=2;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_altcadaluno.SpeedButton5Click(Sender: TObject);
begin
indice_img_alt:=3;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_altcadaluno.SpeedButton6Click(Sender: TObject);
begin
indice_img_alt:=4;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_altcadaluno.SpeedButton7Click(Sender: TObject);
begin
indice_img_alt:=5;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_altcadaluno.SpeedButton8Click(Sender: TObject);
begin
indice_img_alt:=6;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

end.