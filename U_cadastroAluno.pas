unit U_cadastroAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Data.DB, Vcl.ComCtrls, JPEG;

type
  Tfrm_cadaluno = class(TForm)
    Timer1: TTimer;
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
    Panel25: TPanel;
    Label15: TLabel;
    Panel9: TPanel;
    Label4: TLabel;
    Panel10: TPanel;
    Edit2: TEdit;
    Panel14: TPanel;
    Label11: TLabel;
    Panel16: TPanel;
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
    Panel66: TPanel;
    Label44: TLabel;
    Panel67: TPanel;
    Edit21: TEdit;
    Panel68: TPanel;
    Label45: TLabel;
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
    Panel76: TPanel;
    Label50: TLabel;
    CheckBox2: TCheckBox;
    Panel77: TPanel;
    Label51: TLabel;
    Panel78: TPanel;
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
    Panel89: TPanel;
    Label58: TLabel;
    Panel91: TPanel;
    Label59: TLabel;
    Panel92: TPanel;
    Edit31: TEdit;
    Panel93: TPanel;
    Label60: TLabel;
    Panel94: TPanel;
    Edit32: TEdit;
    Panel95: TPanel;
    Label61: TLabel;
    Panel97: TPanel;
    Label62: TLabel;
    Panel98: TPanel;
    Edit34: TEdit;
    Panel99: TPanel;
    Label63: TLabel;
    Panel101: TPanel;
    Label64: TLabel;
    Panel103: TPanel;
    Label65: TLabel;
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
    pnl_incluir: TPanel;
    btn_incluir: TSpeedButton;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Edit3: TEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    MaskEdit12: TMaskEdit;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    MaskEdit16: TMaskEdit;
    ScrollBar1: TScrollBar;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Panel3MouseEnter(Sender: TObject);
    procedure Panel4MouseEnter(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Panel10MouseEnter(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btn_incluirClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton16Click(Sender: TObject);
    procedure RadioButton17Click(Sender: TObject);
    procedure RadioButton18Click(Sender: TObject);
    procedure RadioButton19Click(Sender: TObject);
    procedure RadioButton20Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadaluno: Tfrm_cadaluno;
  id:integer;
  indice_img:integer;
  cod:integer;

implementation

{$R *.dfm}
uses
U_dm, U_altCadAluno, U_busca_img_rg,U_inicio, U_pesquisaAluno, U_exaluno,U_principalpas,U_cadAluno02,U_cadAluno03,U_cadAluno04,U_cadAluno06,U_cadAluno07;


procedure Tfrm_cadaluno.btn_incluirClick(Sender: TObject);
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

procedure Tfrm_cadaluno.btn_salvarClick(Sender: TObject);
var
cod:integer;
zona,bs_fml, pc,internet,identificacao1,identificacao2,falecido1,falecido2:string;
jpg1, jpg2, jpg3, jpg4, jpg5, jpg6 : TJpegImage;
///////////////// ADICIONANDO NA TABELA ALUNOS ///////////////////
begin


 begin
///////////////// PROCURANDO ID DO ALUNO CADASTRANTE ///////////////////
with dm.qalunos do
 begin
     close;
     sql.clear;
     sql.Add('select  * from alunos where nome=:a and sexo=:b and estado_civil=:c and email=:d and data_nasc=:e and cor_raca=:f and nacionalidade=:g and naturalidade=:h');
     parambyname('a').AsString:=edit1.Text;
     parambyname('b').AsString:= combobox10.Text;
     parambyname('c').AsString:= cb3.Text;
     parambyname('d').AsString:= edit2.Text;
     parambyname('e').Asdate:=  STRTODATE(MASKEDIT1.Text);
     parambyname('f').AsString:=  cb1.Text;
     parambyname('g').AsString:=  edit40.Text;
     parambyname('h').AsString:=  edit4.Text;

     open;
     cod:= dm.qalunosid.Value;
     end;

  ////////// ADICIONANDO EM ENDERE�O /////////////////////
   if radiobutton1.Checked=true then
 zona:='URBANA';
 if radiobutton2.Checked=true then
 zona:='RURAL';


  with dm.tbendereco do
  begin
    close;
    sql.Clear;
    sql.Add('insert into endereco (AlunoCod,cep,pais,estado,municipio,tp_log,log,numero,complemento,pt_ref,bairro,tp_mora,zona) values (:AlunoCod,:cep,:pais,:estado,:municipio,:tp_log,:log,:numero,:complemento,:pt_ref,:bairro,:tp_mora,:zona)');
    parambyname('AlunoCod').AsInteger:=cod;
    parambyname('cep').asinteger:=strtoint(maskedit3.Text);
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



////////////////// ADICIONANDO EM DOCUMENTOS /////////////////////////////
    with dm.tbdocumentos do
  begin
    close;
    sql.Clear;
    sql.Add('insert into documentos (AlunoCod,cpf,rg,em,oe,dt_ex,cn,livro,folha,dt_ex2,nis,de,tpdoc) values (:AlunoCod,:cpf,:rg,:em,:oe,:dt_ex,:cn,:livro,:folha,:dt_ex2,:nis,:de,:tpdoc)');
    parambyname('AlunoCod').AsInteger:=cod;
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
  ///////////////// ADICIONANDO EM INFO. RESPONSS�VEIS  ///////////////////////////
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
    sql.add('insert into responsaveis(AlunoCod,f1,f1falecido,f1id,f1cpf,f1nasc,f1email,f1ddd,f1cell,f2,f2falecido,f2id,f2cpf,f2nasc,f2email,f2ddd,f2cell)values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:q)');
    parambyname('a').asinteger:= cod ;
    parambyname('b').asstring:= edit23.Text;
    parambyname('c').asstring:= falecido1;
    parambyname('d').asstring:= identificacao1;
    parambyname('e').asstring:= MASKEDIT4.Text;
    parambyname('f').asdate:= dtp4.Date;
    parambyname('g').asstring:= edit21.Text;
    parambyname('h').asstring:= MASKEDIT9.Text;
    parambyname('i').asstring:= MASKEDIT10.Text;
    parambyname('j').asstring:= edit27.Text;
    parambyname('k').asstring:= falecido2;
    parambyname('l').asstring:= identificacao2;
    parambyname('m').asstring:= MASKEDIT5.Text;
    parambyname('n').asdate:= dtp5.date;
    parambyname('o').asstring:= edit26.Text;
    parambyname('p').asstring:= MASKEDIT11.Text;
    parambyname('q').asstring:= MASKEDIT12.text;

    execsql;
  end;

    with dm.tbresponsaveis do
  begin
    close;
    sql.clear;
    sql.add('update responsaveis set resplegal= :resplegal, legalcpf= :legalcpf,legalemail= :legalemail,legalddd= :legalddd,legalcell= :legalcell, parente= :parente,parenteddd= :parenteddd,parentecell= :parentecell where AlunoCod=:AlunoCod');
    parambyname('resplegal').asstring:= edit31.text ;
    parambyname('legalcpf').asstring:= edit32.Text;
    parambyname('legalemail').asstring:= edit28.Text;
    parambyname('legalddd').asstring:= MASKEDIT13.Text;
    parambyname('legalcell').asstring:= MASKEDIT14.Text;
    parambyname('parente').asstring:= edit34.Text;
    parambyname('parenteddd').asstring:= MASKEDIT16.Text ;
    parambyname('parentecell').asstring:= MASKEDIT15.Text;
    parambyname('AlunoCod').asinteger:= cod;

    execsql;
  end;
  ////////////////// ADICIONANDO EM SA�DE //////////////////////////////////////////




  ////////////////// ADICIONANDO EM INFO. COMPLEMENTAR /////////////////////////////
  ///
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
    sql.Add('insert into 	info_complementar (AlunoCod,cns,bolsafml,usoimg,tempc,teminter,pretencaoesc) values (:AlunoCod,:cns,:bolsafml,:usoimg,:tempc,:teminter,:pretencaoesc)');
    parambyname('AlunoCod').AsInteger:=cod;
    parambyname('cns').AsString:=edit39.Text;
    parambyname('bolsafml').AsString:= bs_fml;
    parambyname('usoimg').AsString:=cb8.Text;
    parambyname('tempc').AsString:=pc;
    parambyname('teminter').asstring:= internet;
    parambyname('pretencaoesc').AsString:=cb11.Text;
    execsql;
  end;

////////////////////// SALVANDO EM ANEXO. DOCUMENTOS //////////
 if (save_rg=true) and (save_cpf=true) and (save_crt_nasc=true) and  (save_foto=true) and (save_comp_residencia=true) and (save_crt_vacina=true) then
   begin

    /////////SALVAR RG///////////////////////////////////
    if (OPD_rg.FileName<>'') and (OPD_cpf.FileName<>'') and (opd_certidao_nasc.FileName<>'') and (opd_foto.FileName<>'') and (opd_comp_residencia.FileName<>'') and (opd_vacina.FileName<>'')then
      begin
       jpg1 := TJpegImage.Create;
       jpg1.LoadFromFile(OPD_rg.FileName);

       jpg2 := TJpegImage.Create;
       jpg2.LoadFromFile(OPD_cpf.FileName);

       jpg3 := TJpegImage.Create;
       jpg3.LoadFromFile(opd_certidao_nasc.FileName);

       jpg4 := TJpegImage.Create;
       jpg4.LoadFromFile(opd_foto.FileName);

       jpg5 := TJpegImage.Create;
       jpg5.LoadFromFile(opd_comp_residencia.FileName);

       jpg6 := TJpegImage.Create;
       jpg6.LoadFromFile(opd_vacina.FileName);



       with dm.tbanexo do
       begin
         close;
         sql.Clear;
         sql.Add('insert into pdf (AlunoCod,rg,cpf,certidaonasc,fotopessoal,compresidencia,crtvacina) VALUES (:AlunoCod,:rg,:cpf,:certidaonasc,:fotopessoal,:compresidencia,:crtvacina)');
         ParamByname('rg').Assign(jpg1);
         ParamByname('AlunoCod').asinteger:=(cod);
         ParamByname('cpf').Assign(jpg2);
         ParamByname('certidaonasc').Assign(jpg3);
         ParamByname('fotopessoal').Assign(jpg4);
         ParamByname('compresidencia').Assign(jpg5);
         ParamByname('crtvacina').Assign(jpg6);
         execsql;
         showmessage('Salvo!');

          frm_inicio := Tfrm_inicio.Create(Self);

          frm_inicio.Parent:= frm_prncipal.panel2;
          frm_inicio.Align:= alClient;
          frm_inicio.BorderStyle:= bsNone;
          frm_inicio.WindowState :=wsMaximized;
          frm_inicio.Position :=poMainFormCenter;
          frm_inicio.Show;
       end;


      end;




      end
   else
   showmessage('Anexe todos os documentos antes de salvar')

end;
end;

procedure Tfrm_cadaluno.Button1Click(Sender: TObject);
begin
if (edit1.Text<>'') and (MASKEDIT7.Text<>'') and (MASKEDIT8.Text<>'') and (combobox10.ItemIndex<>-1) and (cb3.ItemIndex<>-1) and (edit2.Text<>'') and (maskedit1.Text<>'') and (cb1.ItemIndex<>-1) and (edit40.Text<>'') and (edit4.Text<>'') then
   begin
  with dm.tbalunos do
    begin
      close;
      sql.Clear;
      sql.Add('insert into alunos (nome,sexo,estado_civil,email,data_nasc,cor_raca,nacionalidade,naturalidade,celular,telresidencial) values (:nome,:sexo,:estado_civil,:email,:data_nasc,:cor_raca,:nacionalidade,:naturalidade,:celular,:telresidencial)');
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

    with dm.qalunos do
       begin
           close;
           sql.clear;
           sql.Add('select  * from alunos where nome=:a and sexo=:b and estado_civil=:c and email=:d and data_nasc=:e and cor_raca=:f and nacionalidade=:g and naturalidade=:h');
           parambyname('a').AsString:=edit1.Text;
           parambyname('b').AsString:= combobox10.Text;
           parambyname('c').AsString:= cb3.Text;
           parambyname('d').AsString:= edit2.Text;
           parambyname('e').Asdate:=  STRTODATE(MASKEDIT1.Text);
           parambyname('f').AsString:=  cb1.Text;
           parambyname('g').AsString:=  edit40.Text;
           parambyname('h').AsString:=  edit4.Text;

           open;
           cod:= dm.qalunosid.Value;
           end;




  end
  else
  BEGIN
  showmessage('ERRO: Campo obrigat�rio em branco!');
  //Panel2.Top:=0;
  END;
end;

procedure Tfrm_cadaluno.Button2Click(Sender: TObject);
VAR
zona:string;

begin
 if radiobutton1.Checked=true then
 zona:='URBANA';
 if radiobutton2.Checked=true then
 zona:='RURAL';

  begin
    if (maskedit3.Text='') or (cb4.ItemIndex=-1) or (cb5.ItemIndex=-1) or (cb19.ItemIndex=-1) or (cb20.ItemIndex=-1) or (edit8.Text='') or (edit9.Text='') or (edit10.Text='') or (edit11.Text='') or (edit12.Text='') or (combobox3.ItemIndex=-1) then
    showmessage('ERRO: Campo obrigat�rio em branco em Endere�o!')
    else
      begin

      ///////////////// PROCURANDO ID DO ALUNO CADASTRANTE ///////////////////
      with dm.qalunos do
       begin
           close;
           sql.clear;
           sql.Add('select  * from alunos where nome=:a and sexo=:b and estado_civil=:c and email=:d and data_nasc=:e and cor_raca=:f and nacionalidade=:g and naturalidade=:h');
           parambyname('a').AsString:=edit1.Text;
           parambyname('b').AsString:= combobox10.Text;
           parambyname('c').AsString:= cb3.Text;
           parambyname('d').AsString:= edit2.Text;
           parambyname('e').Asdate:=  STRTODATE(MASKEDIT1.Text);
           parambyname('f').AsString:=  cb1.Text;
           parambyname('g').AsString:=  edit40.Text;
           parambyname('h').AsString:=  edit4.Text;

           open;
           cod:= dm.qalunosid.Value;
           end;

      with dm.tbendereco do
      begin
        close;
        sql.Clear;
        sql.Add('insert into endereco (AlunoCod,cep,pais,estado,municipio,tp_log,log,numero,complemento,pt_ref,bairro,tp_mora,zona) values (:AlunoCod,:cep,:pais,:estado,:municipio,:tp_log,:log,:numero,:complemento,:pt_ref,:bairro,:tp_mora,:zona)');
        parambyname('AlunoCod').AsInteger:=cod;
        parambyname('cep').asinteger:=strtoint(maskedit3.Text);
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
    end;
 end;
end;

procedure Tfrm_cadaluno.Button3Click(Sender: TObject);
begin
if (maskedit2.Text='') or (edit3.Text='')  then
showmessage('ERRO: Campo obrigat�rio em branco em Documentos!')
else
begin
      with dm.tbdocumentos do
  begin
    close;
    sql.Clear;
    sql.Add('insert into documentos (AlunoCod,cpf,rg,em,oe,dt_ex,cn,livro,folha,dt_ex2,nis,de,tpdoc) values (:AlunoCod,:cpf,:rg,:em,:oe,:dt_ex,:cn,:livro,:folha,:dt_ex2,:nis,:de,:tpdoc)');
    parambyname('AlunoCod').AsInteger:=cod;
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
end;

end;

procedure Tfrm_cadaluno.Button4Click(Sender: TObject);
var
zona,bs_fml, pc,internet,identificacao1,identificacao2,falecido1,falecido2:string;
begin
if (edit23.Text='') or (MASKEDIT4.Text='') or (edit21.Text='') or (MASKEDIT9.Text='') or (MASKEDIT10.Text='') or (edit27.Text='') or (MASKEDIT5.Text='') or (edit26.Text='') or (MASKEDIT11.Text='') or (MASKEDIT12.Text='') or (edit31.Text='') or (edit32.Text='') or (edit28.Text='') or (MASKEDIT13.Text='') or (MASKEDIT14.Text='') or (edit34.Text='') or (MASKEDIT16.Text='') or (MASKEDIT15.Text='') then
showmessage('ERRO: Campo obrigat�rio em branco em Respons�veis!')
else
begin

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
    sql.add('insert into responsaveis(AlunoCod,f1,f1falecido,f1id,f1cpf,f1nasc,f1email,f1ddd,f1cell,f2,f2falecido,f2id,f2cpf,f2nasc,f2email,f2ddd,f2cell)values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:q)');
    parambyname('a').asinteger:= cod ;
    parambyname('b').asstring:= edit23.Text;
    parambyname('c').asstring:= falecido1;
    parambyname('d').asstring:= identificacao1;
    parambyname('e').asstring:= MASKEDIT4.Text;
    parambyname('f').asdate:= dtp4.Date;
    parambyname('g').asstring:= edit21.Text;
    parambyname('h').asstring:= MASKEDIT9.Text;
    parambyname('i').asstring:= MASKEDIT10.Text;
    parambyname('j').asstring:= edit27.Text;
    parambyname('k').asstring:= falecido2;
    parambyname('l').asstring:= identificacao2;
    parambyname('m').asstring:= MASKEDIT5.Text;
    parambyname('n').asdate:= dtp5.date;
    parambyname('o').asstring:= edit26.Text;
    parambyname('p').asstring:= MASKEDIT11.Text;
    parambyname('q').asstring:= MASKEDIT12.text;

    execsql;
  end;

    with dm.tbresponsaveis do
  begin
    close;
    sql.clear;
    sql.add('update responsaveis set resplegal= :resplegal, legalcpf= :legalcpf,legalemail= :legalemail,legalddd= :legalddd,legalcell= :legalcell, parente= :parente,parenteddd= :parenteddd,parentecell= :parentecell where AlunoCod=:AlunoCod');
    parambyname('resplegal').asstring:= edit31.text ;
    parambyname('legalcpf').asstring:= edit32.Text;
    parambyname('legalemail').asstring:= edit28.Text;
    parambyname('legalddd').asstring:= MASKEDIT13.Text;
    parambyname('legalcell').asstring:= MASKEDIT14.Text;
    parambyname('parente').asstring:= edit34.Text;
    parambyname('parenteddd').asstring:= MASKEDIT16.Text ;
    parambyname('parentecell').asstring:= MASKEDIT15.Text;
    parambyname('AlunoCod').asinteger:= cod;

    execsql;
  end;

end;
end;

procedure Tfrm_cadaluno.Button5Click(Sender: TObject);
var
tpsangue,ftrsangue:string;
lactose,gluten,hipertensao,diabetes,pcdinseto,chocolate,ovo,animal,poeira,rinite,outros,covid:string;
begin
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


if (combobox7.ItemIndex=-1) or (edit38.Text='') then
showmessage('ERRO: Campo obrigat�rio em branco em Sa�de!')
else
begin
  with dm.tbsaude do
  begin
    close;
    sql.clear;
    sql.add('insert into saude (AlunoCod,especial,tiposanguineo,planosaude,fatorsanguineo,intlactose,intgluten,hipertencao,diabetes,alergiapcdinsetos,alergiachocolate,alergiaovo,alergiapeloanimal,alergiapoeira,rinite,outros,outrasobs,usomedicamentos,gpcovid)');
    sql.add('values (:AlunoCod,:especial,:tiposanguineo,:planosaude,:fatorsanguineo,:intlactose,:intgluten,:hipertencao,:diabetes,:alergiapcdinsetos,:alergiachocolate,:alergiaovo,:alergiapeloanimal,:alergiapoeira,:rinite,:outros,:outrasobs,:usomedicamentos,:gpcovid)');
    parambyname('AlunoCod').asinteger:=cod;
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
end;

end;

procedure Tfrm_cadaluno.Button6Click(Sender: TObject);
var
pc,bs_fml,internet:string;
begin
 ////////////////// ADICIONANDO EM INFO. COMPLEMENTAR /////////////////////////////
  if (edit39.Text='') or (cb8.ItemIndex=-1) or (cb11.ItemIndex=-1) then
  showmessage('ERRO: Campo obrigat�rio em branco em Info. Complementar!')
  else
  begin
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
    sql.Add('insert into 	info_complementar (AlunoCod,cns,bolsafml,usoimg,tempc,teminter,pretencaoesc) values (:AlunoCod,:cns,:bolsafml,:usoimg,:tempc,:teminter,:pretencaoesc)');
    parambyname('AlunoCod').AsInteger:=cod;
    parambyname('cns').AsString:=edit39.Text;
    parambyname('bolsafml').AsString:= bs_fml;
    parambyname('usoimg').AsString:=cb8.Text;
    parambyname('tempc').AsString:=pc;
    parambyname('teminter').asstring:= internet;
    parambyname('pretencaoesc').AsString:=cb11.Text;
    execsql;
  end;
 end;
end;

procedure Tfrm_cadaluno.Button7Click(Sender: TObject);
var
jpg1, jpg2, jpg3, jpg4, jpg5, jpg6 : TJpegImage;
anexos:boolean;
begin
anexos:=false;

 if (save_rg=true) and (save_cpf=true) and (save_crt_nasc=true) and  (save_foto=true) and (save_comp_residencia=true) and (save_crt_vacina=true) and (OPD_rg.FileName<>'') and (OPD_cpf.FileName<>'') and (opd_certidao_nasc.FileName<>'') and (opd_foto.FileName<>'') and (opd_comp_residencia.FileName<>'') and (opd_vacina.FileName<>'') then
  BEGIN
    anexos:=true;
  end;

  if anexos=true then
  begin
       jpg1 := TJpegImage.Create;
       jpg1.LoadFromFile(OPD_rg.FileName);

       jpg2 := TJpegImage.Create;
       jpg2.LoadFromFile(OPD_cpf.FileName);

       jpg3 := TJpegImage.Create;
       jpg3.LoadFromFile(opd_certidao_nasc.FileName);

       jpg4 := TJpegImage.Create;
       jpg4.LoadFromFile(opd_foto.FileName);

       jpg5 := TJpegImage.Create;
       jpg5.LoadFromFile(opd_comp_residencia.FileName);

       jpg6 := TJpegImage.Create;
       jpg6.LoadFromFile(opd_vacina.FileName);



       with dm.tbanexo do
       begin
         close;
         sql.Clear;
         sql.Add('insert into anexo_documentos (AlunoCod,rg,cpf,certidaonasc,fotopessoal,compresidencia,crtvacina) VALUES (:AlunoCod,:rg,:cpf,:certidaonasc,:fotopessoal,:compresidencia,:crtvacina)');
         ParamByname('rg').Assign(jpg1);
         ParamByname('AlunoCod').asinteger:=(cod);
         ParamByname('cpf').Assign(jpg2);
         ParamByname('certidaonasc').Assign(jpg3);
         ParamByname('fotopessoal').Assign(jpg4);
         ParamByname('compresidencia').Assign(jpg5);
         ParamByname('crtvacina').Assign(jpg6);
         execsql;

       end;


   end
   else
      begin
      showmessage('ERRO: Campo obrigat�rio em branco em Anexo De Documentos!');
      end;

end;

procedure Tfrm_cadaluno.FormCreate(Sender: TObject);
begin
save_rg:=false;

save_cpf:=false;

save_crt_nasc:=false;

save_foto:=false;

save_comp_residencia:=false;

save_crt_vacina:=false;

label100.Visible:=false;

label101.Visible:=false;

label102.Visible:=false;

label103.Visible:=false;

label104.Visible:=false;

label105.Visible:=false;

image7.Visible:=false;

image8.Visible:=false;

image9.Visible:=false;

image10.Visible:=false;

image11.Visible:=false;

image12.Visible:=false;

indice_img_alt:=0;
indice_img:=0;

end;

procedure Tfrm_cadaluno.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure Tfrm_cadaluno.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin

if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_cadaluno.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_cadaluno.Panel10MouseEnter(Sender: TObject);
begin
frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;
end;

procedure Tfrm_cadaluno.Panel1MouseEnter(Sender: TObject);
begin
frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;
end;

procedure Tfrm_cadaluno.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
frm_prncipal.resultado.visible:= false;
frm_prncipal.origem.visible:= true;
end;

procedure Tfrm_cadaluno.Panel3MouseEnter(Sender: TObject);
begin
frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;
end;

procedure Tfrm_cadaluno.Panel4MouseEnter(Sender: TObject);
begin
frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;
end;

procedure Tfrm_cadaluno.RadioButton10Click(Sender: TObject);
begin
if radiobutton10.Checked=false then
radiobutton10.Checked:=true;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton7.Checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton11Click(Sender: TObject);
begin
 if radiobutton11.Checked=false then
radiobutton11.Checked:=true;
radiobutton12.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton12Click(Sender: TObject);
begin
if radiobutton12.Checked=false then
radiobutton12.Checked:=true;
radiobutton11.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton13Click(Sender: TObject);
begin
if radiobutton13.Checked=false then
radiobutton13.Checked:=true;
radiobutton14.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton14Click(Sender: TObject);
begin
if radiobutton14.Checked=false then
radiobutton14.Checked:=true;
radiobutton13.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton15Click(Sender: TObject);
begin
if radiobutton15.Checked=false then
radiobutton15.Checked:=true;
radiobutton16.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton16Click(Sender: TObject);
begin
if radiobutton16.Checked=false then
radiobutton16.Checked:=true;
radiobutton15.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton17Click(Sender: TObject);
begin
if radiobutton17.Checked=false then
radiobutton17.Checked:=true;
radiobutton18.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton18Click(Sender: TObject);
begin
if radiobutton18.Checked=false then
radiobutton18.Checked:=true;
radiobutton17.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton19Click(Sender: TObject);
begin
if radiobutton19.Checked=false then
radiobutton19.Checked:=true;
radiobutton20.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked=false then
radiobutton1.Checked:=true;
radiobutton2.checked:=false;

end;

procedure Tfrm_cadaluno.RadioButton20Click(Sender: TObject);
begin
if radiobutton20.Checked=false then
radiobutton20.Checked:=true;
radiobutton19.checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.checked=false then
radiobutton2.checked:=true;
radiobutton1.checked:=false;

end;

procedure Tfrm_cadaluno.RadioButton3Click(Sender: TObject);
begin
if radiobutton3.Checked=false then
radiobutton3.Checked:=true;
radiobutton6.Checked:=true;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;


end;

procedure Tfrm_cadaluno.RadioButton4Click(Sender: TObject);
begin
if radiobutton4.Checked=false then
radiobutton4.Checked:=true;
radiobutton5.Checked:=true;
radiobutton3.Checked:=false;
radiobutton6.Checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton5Click(Sender: TObject);
begin
if radiobutton5.Checked=false then
radiobutton5.Checked:=true;
radiobutton6.Checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton6Click(Sender: TObject);
begin
if radiobutton6.Checked=false then
radiobutton6.Checked:=true;
radiobutton5.Checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton7Click(Sender: TObject);
begin
if radiobutton7.Checked=false then
radiobutton7.Checked:=true;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton8Click(Sender: TObject);
begin
if radiobutton8.Checked=false then
radiobutton8.Checked:=true;
radiobutton7.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
end;

procedure Tfrm_cadaluno.RadioButton9Click(Sender: TObject);
begin
if radiobutton9.Checked=false then
radiobutton9.Checked:=true;
radiobutton8.Checked:=false;
radiobutton7.Checked:=false;
radiobutton10.Checked:=false;
end;

procedure Tfrm_cadaluno.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_cadaluno.SpeedButton1Click(Sender: TObject);
var
alunos, endereco,documentos,responsaveis,saude, complementar,anexos:boolean;
zona:string;
identificacao1,identificacao2,falecido1,falecido2:string;
tpsangue,ftrsangue:string;
lactose,gluten,hipertensao,diabetes,pcdinseto,chocolate,ovo,animal,poeira,rinite,outros,covid:string;
pc,bs_fml,internet:string;
jpg1, jpg2, jpg3, jpg4, jpg5, jpg6 : TJpegImage;
BEGIN

  with dm.qconsulta do
  begin
   close;
   sql.Clear;
   sql.Add('select a.id,a.nome,a.data_nasc,a.sexo,b.AlunoCod,b.cpf,b.rg From alunos as a,documentos as b Where b.cpf= :ncpf and b.AlunoCod = a.id ');
   parambyname('ncpf').asstring:=maskedit2.text;
   open;

   if dm.qconsulta.RecordCount<>0 then
   begin
     showmessage('ERRO: CPF j� cadastrado!');
   end

   else

  begin
    alunos:=false;
    endereco   :=true;
    documentos  :=true;
    responsaveis :=true;
    saude         :=true;
    complementar  :=true;
    anexos:=false;
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

    if (save_rg=true) and (save_cpf=true) and (save_crt_nasc=true) and  (save_foto=true) and (save_comp_residencia=true) and (save_crt_vacina=true) and (OPD_rg.FileName<>'') and (OPD_cpf.FileName<>'') and (opd_certidao_nasc.FileName<>'') and (opd_foto.FileName<>'') and (opd_comp_residencia.FileName<>'') and (opd_vacina.FileName<>'') then
    BEGIN
      anexos:=true;
    end;
    ///////////////// VERIFICA��O ///////////////////////////////////////
    if (anexos=true) and (alunos=true) and (endereco=true) and (documentos=true) and (responsaveis=true) and (saude=true) and (complementar=true) then
    begin
     ///////////////// ADD ALUNOS ///////////////////////////////////////
      with dm.tbalunos do
      begin
        close;
        sql.Clear;
        sql.Add('insert into alunos (nome,sexo,estado_civil,email,data_nasc,cor_raca,nacionalidade,naturalidade,celular,telresidencial) values (:nome,:sexo,:estado_civil,:email,:data_nasc,:cor_raca,:nacionalidade,:naturalidade,:celular,:telresidencial)');
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

        ///////////////// PROCURANDO ID DO ALUNO CADASTRANTE ///////////////////
        with dm.qalunos do
         begin
             close;
             sql.clear;
             sql.Add('select  * from alunos where nome=:a and sexo=:b and estado_civil=:c and email=:d and data_nasc=:e and cor_raca=:f and nacionalidade=:g and naturalidade=:h');
             parambyname('a').AsString:=edit1.Text;
             parambyname('b').AsString:= combobox10.Text;
             parambyname('c').AsString:= cb3.Text;
             parambyname('d').AsString:= edit2.Text;
             parambyname('e').Asdate:=  STRTODATE(MASKEDIT1.Text);
             parambyname('f').AsString:=  cb1.Text;
             parambyname('g').AsString:=  edit40.Text;
             parambyname('h').AsString:=  edit4.Text;

             open;
             cod:= dm.qalunosid.Value;
             end;

        ////////////// ADD ENDERE�O /////////////////////////
         if radiobutton1.Checked=true then
         zona:='URBANA';
         if radiobutton2.Checked=true then
         zona:='RURAL';

          with dm.tbendereco do
          begin

            close;
            sql.Clear;
            sql.Add('insert into endereco (AlunoCod,cep,pais,estado,municipio,tp_log,log,numero,complemento,pt_ref,bairro,tp_mora,zona) values (:AlunoCod,:cep,:pais,:estado,:municipio,:tp_log,:log,:numero,:complemento,:pt_ref,:bairro,:tp_mora,:zona)');
            parambyname('AlunoCod').AsInteger:=cod;
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

        //////////////// ADD DOCUMENTOS //////////////////////////////
        with dm.tbdocumentos do
        begin
          close;
          sql.Clear;
          sql.Add('insert into documentos (AlunoCod,cpf,rg,em,oe,dt_ex,cn,livro,folha,dt_ex2,nis,de,tpdoc) values (:AlunoCod,:cpf,:rg,:em,:oe,:dt_ex,:cn,:livro,:folha,:dt_ex2,:nis,:de,:tpdoc)');
          parambyname('AlunoCod').AsInteger:=cod;
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

        ////////////////// ADD RESPONSAVEIS ///////////////////////
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
            sql.add('insert into responsaveis(AlunoCod,f1,f1falecido,f1id,f1cpf,f1nasc,f1email,f1ddd,f1cell,f2,f2falecido,f2id,f2cpf,f2nasc,f2email,f2ddd,f2cell)values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:q)');
            parambyname('a').asinteger:= cod ;
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
            sql.add('update responsaveis set resplegal= :resplegal, legalcpf= :legalcpf,legalemail= :legalemail,legalddd= :legalddd,legalcell= :legalcell, parente= :parente,parenteddd= :parenteddd,parentecell= :parentecell where AlunoCod=:AlunoCod');
            parambyname('resplegal').asstring:= edit31.text ;
            parambyname('legalcpf').asstring:= MASKEDIT6.Text;
            parambyname('legalemail').asstring:= edit28.Text;
            parambyname('legalddd').asstring:=( MASKEDIT13.Text);
            parambyname('legalcell').asstring:= MASKEDIT14.Text;
            parambyname('parente').asstring:= edit34.Text;
            parambyname('parenteddd').asstring:= (MASKEDIT16.Text) ;
            parambyname('parentecell').asstring:= MASKEDIT15.Text;
            parambyname('AlunoCod').asinteger:= cod;

            execsql;
          end;

          ///////////////////  ADD SAUDE //////////////////////////
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
                sql.add('insert into saude (AlunoCod,especial,tiposanguineo,planosaude,fatorsanguineo,intlactose,intgluten,hipertencao,diabetes,alergiapcdinsetos,alergiachocolate,alergiaovo,alergiapeloanimal,alergiapoeira,rinite,outros,outrasobs,usomedicamentos,gpcovid)');
                sql.add('values (:AlunoCod,:especial,:tiposanguineo,:planosaude,:fatorsanguineo,:intlactose,:intgluten,:hipertencao,:diabetes,:alergiapcdinsetos,:alergiachocolate,:alergiaovo,:alergiapeloanimal,:alergiapoeira,:rinite,:outros,:outrasobs,:usomedicamentos,:gpcovid)');
                parambyname('AlunoCod').asinteger:=cod;
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

          ////////////// ADD INFO.COMPLEMENTAR //////////////
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
              sql.Add('insert into 	info_complementar (AlunoCod,cns,bolsafml,usoimg,tempc,teminter,pretencaoesc) values (:AlunoCod,:cns,:bolsafml,:usoimg,:tempc,:teminter,:pretencaoesc)');
              parambyname('AlunoCod').AsInteger:=cod;
              parambyname('cns').AsString:=edit39.Text;
              parambyname('bolsafml').AsString:= bs_fml;
              parambyname('usoimg').AsString:=cb8.Text;
              parambyname('tempc').AsString:=pc;
              parambyname('teminter').asstring:= internet;
              parambyname('pretencaoesc').AsString:=cb11.Text;
              execsql;
            end;
      /////////////////// ADD ANEXO DOC //////////////

        begin
         jpg1 := TJpegImage.Create;
         jpg1.LoadFromFile(OPD_rg.FileName);

         jpg2 := TJpegImage.Create;
         jpg2.LoadFromFile(OPD_cpf.FileName);

         jpg3 := TJpegImage.Create;
         jpg3.LoadFromFile(opd_certidao_nasc.FileName);

         jpg4 := TJpegImage.Create;
         jpg4.LoadFromFile(opd_foto.FileName);

         jpg5 := TJpegImage.Create;
         jpg5.LoadFromFile(opd_comp_residencia.FileName);

         jpg6 := TJpegImage.Create;
         jpg6.LoadFromFile(opd_vacina.FileName);



         with dm.tbanexo do
         begin
           close;
           sql.Clear;
           sql.Add('insert into anexo_documentos (AlunoCod,rg,cpf,certidaonasc,fotopessoal,compresidencia,crtvacina) VALUES (:AlunoCod,:rg,:cpf,:certidaonasc,:fotopessoal,:compresidencia,:crtvacina)');
           ParamByname('rg').Assign(jpg1);
           ParamByname('AlunoCod').asinteger:=(cod);
           ParamByname('cpf').Assign(jpg2);
           ParamByname('certidaonasc').Assign(jpg3);
           ParamByname('fotopessoal').Assign(jpg4);
           ParamByname('compresidencia').Assign(jpg5);
           ParamByname('crtvacina').Assign(jpg6);
           execsql;

         end;


        end;

        /// inserindo em acoes

      WITH dm.tbControleAcoes do
     begin
       close;
       sql.clear;
       sql.add('insert into controledeacoes (UsuarioCodCad ,DataCad,HoraCad,CodTabela,id_tabela_ref) values (:UsuarioCodCad ,:DataCad,:HoraCad,:CodTabela,:id_tabela_ref)');
       parambyname('UsuarioCodCad').asinteger:= logado;
       parambyname('DataCad').asdate:= date();
       parambyname('HoraCad').astime:= time() ;
       parambyname('CodTabela').asinteger:= 6;
       parambyname('id_tabela_ref').asinteger:= dm.qalunosid.Value;
       execsql;
     end;

       //// MENSSAGEM DE EFETUADO COM SUCESSO
       frm_inicio := Tfrm_inicio.Create(self);
       frm_inicio.Parent:= frm_prncipal.panel2;
       frm_inicio.Align:= alClient;
       frm_inicio.BorderStyle:= bsNone;
       frm_inicio.WindowState :=wsMaximized;
       frm_inicio.show;
       showmessage('Cadastro salvo com sucesso');




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

 END;
END;



procedure Tfrm_cadaluno.SpeedButton3Click(Sender: TObject);
begin
indice_img:=1;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_cadaluno.SpeedButton4Click(Sender: TObject);
begin
indice_img:=2;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_cadaluno.SpeedButton5Click(Sender: TObject);
begin
indice_img:=3;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;

end;

procedure Tfrm_cadaluno.SpeedButton6Click(Sender: TObject);
begin
indice_img:=4;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;

end;

procedure Tfrm_cadaluno.SpeedButton7Click(Sender: TObject);
begin
indice_img:=5;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

procedure Tfrm_cadaluno.SpeedButton8Click(Sender: TObject);
begin
indice_img:=6;
application.CreateForm(Tfrm_busca_img_rg, frm_busca_img_rg);
frm_busca_img_rg.showmodal;
end;

end.
