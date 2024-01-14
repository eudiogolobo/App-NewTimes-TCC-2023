unit U_imcaluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids,dateutils,
  Vcl.DBGrids;

type
  Tfrm_imaluno = class(TForm)
    Panel2: TPanel;
    Label17: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    DBEdit3: TDBEdit;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    DBEdit5: TDBEdit;
    Panel35: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    cb1: TComboBox;
    Panel6: TPanel;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Panel8: TPanel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Panel17: TPanel;
    Panel13: TPanel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Panel15: TPanel;
    Panel14: TPanel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Panel16: TPanel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    Panel18: TPanel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label13: TLabel;
    MaskEdit1: TMaskEdit;
    Panel22: TPanel;
    Label14: TLabel;
    ComboBox3: TComboBox;
    Panel23: TPanel;
    Panel24: TPanel;
    Label16: TLabel;
    ComboBox1: TComboBox;
    Label15: TLabel;
    ScrollBar1: TScrollBar;

    procedure SpeedButton2Click(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Panel2MouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_imaluno: Tfrm_imaluno;
  captura1:integer;
  s:integer;
  aluno, mensalidade, diaVencimento,duracao,DataFinal,DataInicio:string;

implementation

{$R *.dfm}
uses
u_dm,U_impressao_certificado, u_pesq_matricula, U_im, u_impesq, U_principalpas, U_imprime_atestado,u_impressao_notas, u_inicio;

procedure Tfrm_imaluno.btn_cancelarClick(Sender: TObject);
begin
frm_inicio := Tfrm_inicio.Create(self);
  frm_inicio.Parent:= frm_prncipal.panel2;
  frm_inicio.Align:= alClient;
  frm_inicio.BorderStyle:= bsNone;
  frm_inicio.WindowState :=wsMaximized;
  frm_inicio.show;
end;

procedure Tfrm_imaluno.btn_salvarClick(Sender: TObject);
var
nome,id,mae,pai,data_nasc,cidade, data,curso,carga:string;
MediaTotal:array of double;
i,y:integer;
notaMedia,total:double;
item:integer;
 begin
      if combobox1.ItemIndex<>-1 then
      begin
      item:=COMBOBOX1.ItemIndex;
       begin
       case (item) of
       0: begin
           total:=0;

            SetLength (MediaTotal, 1);

             for i:=1 to combobox1.items.Count -1 do
              begin
               notaMedia:=0;
                with dm.qmedia_notas_modulo do
                 begin
                   close;
                   sql.clear;
                   sql.add('select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
                   sql.add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
                   sql.add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and b.ModuloRef = :modulo and a.MatriculaCod = :idmat ');
                   parambyname('modulo').asstring:= inttostr(i);
                   parambyname('idmat').asinteger:= dm.qmatriculaid.value;
                   open;


                   if recordcount>0 then
                   begin
                   dm.qmedia_notas_modulo.first;
                   while not dm.qmedia_notas_modulo.eof do
                     begin
                       notaMedia:= notaMedia+dm.qmedia_notas_modulonota.value;
                       dm.qmedia_notas_modulo.next;
                     end;

                     notaMedia:=notaMedia/recordcount;

                    if  i=1  then
                    begin
                    MediaTotal[0]:=(notaMedia);

                    end;
                    if  i>=2  then
                    begin
                    SetLength (MediaTotal, Length(MediaTotal)+1);
                    MediaTotal[i-1]:=(notaMedia);


                    end;




                   end;

                 end;

                with dm.qmedia_notas_modulo do
                 begin
                   close;
                   sql.clear;
                   sql.add('select a.id, a.MatriculaCod, a.AvaliacaoCod, a.Nota, b.id,b.ProfessorCod,b.TurmaCod,b.Tipo,b.ModuloRef,b.descricao,b.data,b.hora,c.id,c.Nome, d.id,d.AlunoCod,e.id,e.nome,f.id_turmas,f.Turma');
                   sql.add('from notas as a, avaliacao as b, professores as c, matricula as d, alunos as e, turmas as f');
                   sql.add('where a.MatriculaCod = d.id and a.AvaliacaoCod = b.id and b.ProfessorCod = c.id and b.TurmaCod = f.id_turmas and d.AlunoCod = e.id and a.MatriculaCod = :idmat ');

                   parambyname('idmat').asinteger:= dm.qmatriculaid.value;
                   open;

                 end;
              end;

              for y:=0 to  length(MediaTotal) do
              begin
               TOTAL:=total+MediaTotal[y];
              end;

              total:= total/length(MediaTotal);
              frm_impressao_certificado.label3.caption:=(formatfloat('#,,0.00', total));





           with dm.qcertificado do
            begin
              close;
              sql.Clear;
              sql.Add('select a.id, a.nome,b.id, b.AlunoCod,b.TurmaCod, c.id_turmas, c.turma,c.DataInicio,c.DataFinal, c.CursoCod, d.CursosId, d.nome, d.CargaHoraria, d.conteudo ');
              sql.Add('from alunos as a, matricula as b, turmas as c, cursos as d');
              sql.Add('where b.AlunoCod = a.id and b.AlunoCod = a.id and b.TurmaCod = c.id_turmas and c.CursoCod = d.CursosId and b.AlunoCod = :xx and b.TurmaCod = :turmacod ');
              parambyname('xx').AsInteger:= dm.qmatriculaAlunoCod.Value;
              parambyname('turmacod').AsInteger:= dm.qmatriculaTurmaCod.Value;
              open;
            end;

          nome:=  dm.qcertificadonome.value;
          curso:=   dm.qcertificadonome_1.value  ;
          carga:=   dm.qcertificadoCargaHoraria.value  ;
          DataInicio:=  datetostr(dm.qcertificadoDataInicio.value);
          DataFinal:= datetostr(dm.qcertificadoDataFinal.value);
          frm_impressao_certificado.label1.caption:=(' Certificamos que '+nome+' participou do curso "'+curso+'", com a carga hor�ria de '+carga+' hora(s), realizado  no per�odo de '+DataInicio+' a '+DataFinal+'. ');

          frm_impressao_certificado.impressao_cartificado.Preview();

          end;

       1: begin
            with dm.qAtestadoFrequencia do
            begin
              close;
              sql.Clear;
              sql.Add('select a.id, a.nome, a.data_nasc,a.naturalidade, b.AlunoCod, b.f1,b.f1id,b.f2,b.f2id, c.id, c.AlunoCod,c.TurmaCod');
              sql.Add('from alunos as a, responsaveis as b, matricula as c');
              sql.Add('where a.id = :xx and c.TurmaCod = :turmcod and b.AlunoCod = a.id and c.AlunoCod = a.id');
              parambyname('xx').AsInteger:= dm.qmatriculaAlunoCod.Value;
              parambyname('turmcod').AsInteger:= dm.qmatriculaTurmaCod.Value;
              open;
            end;

            nome:=(dm.qAtestadoFrequencianome.value);
            id:=   inttostr(dm.qAtestadoFrequenciaid.value);
            mae:=   (dm.qAtestadoFrequenciaf1.value);
            pai:=   (dm.qAtestadoFrequenciaf2.value);
            data_nasc:= datetostr(dm.qAtestadoFrequenciadata_nasc.value);
            cidade:=  (dm.qAtestadoFrequencianaturalidade.value);
            data:= FormatDateTime ('yyyy',now);
            frm_imprecao_atestadof.label2.caption:=('Atestamos para os devidos fins que o estudante '+ nome +', matr�cula n� '+id+', filho de '+mae+' e de '+pai+', nascido em '+data_nasc+', natural de '+cidade+', est� frequentando no ano/semestre letivo de '+data+' o(s) curso(s) abaixo:');

            frm_imprecao_atestadof.imat.Preview();


          end;


       2: begin
            with dm.qcarteirinha do
            begin
              close;
              sql.Clear;
              sql.Add('select a.id, a.AlunoCod, a.TurmaCod,a.SituacaoMatricula, b.id, b.nome,b.data_nasc, c.id_turmas,c.Turma,c.CursoCod, d.CursosId, d.Nome, e.AlunoCod,e.cpf');
              sql.Add('from matricula as a, alunos as b, turmas as c, cursos as d, documentos as e');
              sql.Add('where b.id =:xx and c.id_turmas = :turmacod and a.AlunoCod = b.id and a.TurmaCod = c.id_turmas and c.CursoCod = d.CursosId and e.AlunoCod = b.id');
              parambyname('xx').AsInteger:= dm.qmatriculaAlunoCod.Value;
              parambyname('turmacod').AsInteger:= dm.qmatriculaTurmaCod.Value;
              open;
            end;

          frm_impressao_carteirinha.impressao_carteirinha.Preview();
          end;

          3: begin
          frm_impressao_contrato_matricula.rlmemo1.lines.Clear;
          frm_impressao_contrato_matricula.rlmemo2.lines.Clear;
            frm_impressao_contrato_matricula.rlmemo1.Lines.Add('PARTES CONTRATANTES '+#13+#13+'CONTRATANTE: _____________________________________, _________________, ________________, ________________________,'+' Carteira de Identidade n� ______________________, C.P.F. n� ________________________, residente e domiciliado na Rua ___________________________, n� ___________, bairro __________________________, '+'Cep _________________________, Cidade __________________________, no Estado __________________________; '+#13+#13+'CONTRATADA: ESCOLA DE IDIOMAS ND, com sede em Crici�ma, na Rua Bota Fogo, n� 123, '+'bairro Centro, Cep 88813-310, Cidade Crici�ma, no Estado Santa Catarina, inscrita no C.N.P.J. sob o n� 41.768.361/0001-60'+', e no Cadastro Estadual sob o n� 099.467.305.004, neste ato '+'representada pela sua diretora Nicolly Marques Mariano, brasileira, solteira, '+'diretora da ESCOLA DE IDIOMAS ND, Carteira de Identidade n� 39.540.487-3, C.P.F. n� 736.812.520-09, residente e domiciliado na Rua Marques, n� 123, bairro Centro, Cep 88813-310, Cidade Crici�ma, no Estado Santa Catarina'+#13+#13+'As partes acima identificadas t�m, entre si, justo e acertado o presente Contrato de Presta��o de Servi�os Educacionais'+', que se reger� pelas cl�usulas seguintes e pelas condi��es de '+'pre�o, forma e termo de pagamento descritas no presente.'+#13+#13);
            frm_impressao_contrato_matricula.rlmemo1.Lines.Add('DO OBJETO DO CONTRATO'+#13+#13+'Cl�usula 1�. O presente contrato tem como OBJETO, a presta��o, pela CONTRATADA, de'+' servi�os educacionais, a serem realizados na ESCOLA DE IDIOMAS ND,'+' localizada na Rua Maringa,'+' n� 123, bairro Centro, Cep 88813-310, Cidade Crici�ma, no Estado Santa Catarina, para o ano letivo de '+formatdatetime('yyyy', date())+','+' em favor de '+aluno+', representado neste instrumento pelo CONTRATANTE.'+#13+#13+'DA OBRIGA��O DA CONTRATADA'+#13+#13+'Cl�usula 2�. � obrigat�rio � CONTRATADA fornecer, gratuitamente, ao aluno, certificados'+' de assiduidade e conclus�o, e o material para a realiza��o de provas.'+#13+#13);
            frm_impressao_contrato_matricula.rlmemo1.Lines.Add('DOS DESCONTOS'+#13+#13+'Cl�usula 3�. A CONTRATADA poder�, por iniciativa pr�pria, fornecer ao aluno representado pelo CONTRATANTE, '+'descontos na mensalidade, que poder�o ser retirados a partir de crit�rios pr�-estabelecidos.'+#13+#13+'DO PAGAMENTO'+#13+#13+'Cl�usula 4�. Em virtude da presta��o dos '+'servi�os educacionais, o CONTRATANTE pagar� � CONTRATADA a'+' quantia mensal de R$'+mensalidade+'. ');
            frm_impressao_contrato_matricula.rlmemo1.Lines.Add(#13+#13+'Cl�usula 5�. O pagamento das mensalidades escolares'+' dever� ser realizado na sede da escola, localizada '+'na Rua Jos� Fonsceca, n� 123, bairro Centro, Cep 88813-310, Cidade de Crici�ma, no Estado '+'de Santa Catarina, at� o dia '+diaVencimento+' de cada m�s.'+#13+#13+'DO INADIMPLEMENTO'+#13+#13+'Cl�usula 6�. Caso o CONTRATANTE n�o pague a mensalidade dentro do prazo estabelecido, '+'arcar� com uma multa de 10% do valor da parcela, mais juros de 1% ao m�s1.');
            frm_impressao_contrato_matricula.rlmemo1.Lines.Add('DA RESCIS�O'+#13+#13+'Cl�usula 7�. O presente instrumento poder� ser rescindido por qualquer das partes, sem necessidade de aviso pr�vio, devendo todas as parcelas estarem pagas at� o dia da rescis�o.');
            frm_impressao_contrato_matricula.rlmemo1.Lines.Add(#13+#13+'Cl�usula 8�. A CONTRATADA poder� rescindir o contrato, ap�s delibera��o interna, por indisciplina do aluno representado neste contrato, e por inadimpl�ncia do CONTRATANTE, o qual ser� previamente avisado do d�bito e da poss�vel rescis�o.');
            frm_impressao_contrato_matricula.rlmemo2.Lines.Add('Cl�usula 9�. Em ocorrendo a rescis�o, o aluno s� poder� ser desligado da institui��o de ensino '+'ap�s o t�rmino do ano letivo, obrigando-se o col�gio a fornecer toda a documenta��o a que o estudante'+' necessite para efetuar a transfer�ncia de escola.'#13+#13+'DO PRAZO'#13+#13+'Cl�usula 10�. O presente contrato ter� dura��o de '+duracao+' dias, iniciando-se no dia '+formatdatetime('dddddd', strtodate(datainicio))+', e terminando no dia '+formatdatetime('dddddd', strtodate(datafinal))+'.'#13+#13+'CONDI��ES GERAIS'#13+#13+'Cl�usula 11�. A validade deste instrumento est� condicionada � realiza��o da matr�cula do aluno.'#13+#13+'Cl�usula 12�. A n�o freq��ncia do aluno nas aulas n�o influi na obrigatoriedade do pagamento das mensalidades.'#13+#13+'Cl�usula 13�. A CONTRATADA n�o se obriga a fornecer qualquer '+'tipo de material did�tico, que ser�o de inteira responsabilidade do CONTRATANTE.'#13+#13+'DO FORO'#13+#13+'Cl�usula 14�. Para dirimir quaisquer controv�rsias oriundas do CONTRATO, as partes elegem o foro da comarca de Crici�ma;'#13+#13+'Por estarem assim justos e contratados, firmam o presente instrumento, em duas vias de igual teor, juntamente com 2 (duas) testemunhas.');
            frm_impressao_contrato_matricula.rlmemo2.Lines.Add(#13+#13+'Crici�ma, '+formatdatetime('dddddd',date())+'.');

            frm_impressao_contrato_matricula.rlmemo2.Lines.Add(#13+#13+'_______________________________'+#13+'Assinatura do Contratante'+#13+#13+'_______________________________'+#13+'Assinatura do Representante legal da Contratada'+#13+#13+'Nome: __________________________________, RG N� _______________________________'+#13+#13+'_______________________________'+#13+'Assinatura da Testemunha 1'+#13+#13+'Nome: __________________________________, RG N� _______________________________'+#13+#13+'_______________________________'+#13+'Assinatura da Testemunha 2');


            frm_impressao_contrato_matricula.contrato.Preview();


          end;

       end;


     end;
  end
  else
  begin
    showmessage('Selecione um documento!');
  end;


end;


procedure Tfrm_imaluno.FormCreate(Sender: TObject);
begin


  with dm.qcontrato do
  begin
    close;
    sql.clear;
    sql.add('select a.id, a.nome, b.id, b.AlunoCod, b.TurmaCod, c.MatriculaCod, c.ValorMensalidade,c.mensalidadeid, c.DataVencimento, c.n_parcela, d.id_turmas, d.DataInicio, d.DataFinal, d.turma');
    sql.add('from alunos as a, matricula as b, mensalidade as c, turmas as d');
    sql.add('where a.id = b.AlunoCod and  b.id = c.MatriculaCod and d.id_turmas = b.TurmaCod and c.n_parcela = 1 and b.id = :mat');
    parambyname('mat').asinteger:=CodMatricula;
    open;
    //showmessage(inttostr(recordcount)+#13+dm.qcontratonome.Value);

  end;

  aluno:= dm.qcontratonome.value ;
    mensalidade:= floattostr(dm.qcontratoValormensalidade.value);
    diaVencimento:= formatdatetime('dd', dm.qcontratoDataVencimento.value);
    duracao:= inttostr(daysbetween(dm.qcontratoDatafinal.value, dm.qcontratoDatainicio.value));
    DataFinal:= datetostr(dm.qcontratoDatafinal.value);
    dataInicio:= datetostr(dm.qcontratoDatainicio.value);





 dm.qturmas.Close;
dm.tbcursos.Open();
 dm.tbcursos.First;

 while not dm.tbcursos.Eof do
 begin
 cb1.Items.Add(dm.tbcursosnome.Value);
 dm.tbcursos.Next;
 end;

 dm.tbcursos.Close;

 with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.id_turmas = :id');
   parambyname('id').AsInteger:= dm.qmatriculaTurmaCod.value;
   open;
 end;

  with dm.qcursos do
 begin
   close;
   sql.Clear;
   sql.add('select * from cursos where CursosId = :idcur');
   parambyname('idcur').AsInteger:= dm.qturmascursocod.value;
   open;
 end;

 cb1.ItemIndex:= cb1.items.IndexOf(dm.qcursosNome.Value);

 /////

 with dm.qturmas do
begin
  close;
  sql.Clear;
  sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
  sql.Add('from turmas as a, cursos as b');
  sql.Add('where a.CursoCod = b.CursosId and a.CursoCod = :CursoCod');
  parambyname('CursoCod').asinteger:=dm.qcursosCursosId.value;
  open;
end;

 dm.qturmas.First;
 while not dm.qturmas.Eof do
 begin
   combobox2.Items.Add(dm.qturmasturma.Value);
   dm.qturmas.next;
 end;
 dm.qturmas.Close;

 ///
 with dm.qturmas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.id_turmas, a.CursoCod, a.Turma,a.turno, a.dataInicio, a.DataFinal, a.status, b.CursosId, b.Nome ');
   sql.Add('from turmas as a, cursos as b');
   sql.Add('where a.CursoCod = b.CursosId and a.id_turmas = :id');
   parambyname('id').AsInteger:= dm.qmatriculaTurmaCod.value;
   open;
 end;

 combobox2.ItemIndex:= combobox2.items.IndexOf(dm.qturmasTurma.Value);

 ////
 maskedit1.Text:= datetostr(dm.qmatriculaDataMatricula.value);
 combobox3.itemindex:= combobox3.items.indexof(dm.qmatriculaSituacaoMatricula.value);


end;


procedure Tfrm_imaluno.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position<=(scrollbar1.Max-scrollbar1.PageSize) then
begin
scrollbar1.Position:=scrollbar1.Position+10;
end;
end;

procedure Tfrm_imaluno.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
if scrollbar1.Position>0 then
begin

scrollbar1.Position:=scrollbar1.Position-10;
end;
end;

procedure Tfrm_imaluno.Panel1MouseEnter(Sender: TObject);
begin
frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;
end;

procedure Tfrm_imaluno.Panel2MouseEnter(Sender: TObject);
begin
  frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;
end;

procedure Tfrm_imaluno.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
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
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
frm_prncipal.resultado.visible:= false;
frm_prncipal.origem.visible:= true;
end;

procedure Tfrm_imaluno.ScrollBar1Change(Sender: TObject);
begin
Panel2.Top:= -scrollbar1.position;
end;

procedure Tfrm_imaluno.SpeedButton1Click(Sender: TObject);


       begin
       if MessageDlg('Confirmar o aluno selecionado?',mtConfirmation,[mbyes, mbno],0)=mryes then
          begin

           captura1:=1;

        end;
     end;



procedure Tfrm_imaluno.SpeedButton2Click(Sender: TObject);
begin
 if (captura1=1) then
  begin
   if (MessageDlg('Voc� deseja mesmo cancelar?',mtConfirmation,[mbyes, mbno],0)=mryes) then
    begin

    dm.tbturma.close();
    captura1:=0
    end;
  end
  else
  showmessage('Confirme algum aluno antes de cancelar.')
end;

procedure Tfrm_imaluno.SpeedButton4Click(Sender: TObject);
begin
application.CreateForm(Tfrm_impes,  frm_impes);
 frm_impes.ShowModal;
end;

end.
