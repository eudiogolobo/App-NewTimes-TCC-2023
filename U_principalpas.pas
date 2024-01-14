unit U_principalpas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, U_CadastroAluno,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, Vcl.Buttons,
  Vcl.Imaging.pngimage,U_meu_perfil ;

type
  Tfrm_prncipal = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnl_principal: TPanel;
    Panel2: TPanel;
    pnl_sub_menu_relatorios: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    pnl_menu_lateral: TPanel;
    btn_relatorio: TSpeedButton;
    btn_matricula: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btn_turmas: TSpeedButton;
    btn_professor: TSpeedButton;
    btn_cursos: TSpeedButton;
    btn_alunos: TSpeedButton;
    btn_avaliacao: TSpeedButton;
    pnl_sub_menu_alunos: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    pnl_sub_menu_cursos: TPanel;
    SpeedButton11: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton28: TSpeedButton;
    pnl_sub_menu_turmas: TPanel;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    pnl_sub_menu_avaliacoes: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton24: TSpeedButton;
    pnl_sub_menu_professor: TPanel;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    Panel7: TPanel;
    Image2: TImage;
    Label2: TLabel;
    origem: TImage;
    Panel3: TPanel;
    Edit1: TEdit;
    Image4: TImage;
    SpeedButton15: TSpeedButton;
    pnl_perfil: TPanel;
    SpeedButton16: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    resultado: TImage;
    cb1: TComboBox;
    Panel6: TPanel;
    sp3: TSpeedButton;
    sp4: TSpeedButton;
    sp5: TSpeedButton;
    sp2: TSpeedButton;
    sp1: TSpeedButton;
    pnl_matricula: TPanel;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    btn_usuarios: TSpeedButton;
    pnl_sub_usuarios: TPanel;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    btn_notas: TSpeedButton;
    btn_financeiro: TSpeedButton;
    SpeedButton5: TSpeedButton;
    pnl_sub_menu_notas: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton18: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btn_avaliacaoClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure btn_alunosClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btn_cursosClick(Sender: TObject);
    procedure btn_turmasClick(Sender: TObject);
    procedure btn_professorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure btn_matriculaClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btn_usuariosClick(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure btn_notasClick(Sender: TObject);
    procedure sp1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure sp2Click(Sender: TObject);
    procedure sp3Click(Sender: TObject);
    procedure sp4Click(Sender: TObject);
    procedure sp5Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure btn_financeiroClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton24MouseEnter(Sender: TObject);
    procedure SpeedButton17MouseEnter(Sender: TObject);
    procedure btn_usuariosMouseEnter(Sender: TObject);
    procedure btn_financeiroMouseEnter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_prncipal: Tfrm_prncipal;
  bExpan: boolean;
  form_pricipal_ativo,perfil,professor, adm,saiu:boolean;
  LOGADO,LOGADOPRO,CadAltDelAvaliacao:integer;
  NOMEUSER:string;



implementation

{$R *.dfm}
uses
 U_periodo_valorizacao,U_principal_professor,U_financeiro,U_pesq_turma_prof,U_pesq_avaliacao,U_pesqaluser,U_pesq_matricula, u_pesq_professor, U_cad_professor, U_altpesturma, U_Matricula,u_alteracao_senha,U_cadAluno02,U_pqal,U_pqCurso,u_altturma,U_exaluno,U_altCadAluno, U_exturma,u_altcur, U_excurso,U_pesquisaAluno, U_cad_avaliacao,U_caduser,U_lancamento_notas, U_login, U_pesquisaCurso, U_pesquisaUsu, U_imcaluno, u_dm, u_cadastrocurso, u_inicio, u_cadturma, U_turma_relacao;

procedure MakeRounded(Control: TWinControl);
var
R: TRect;
Rgn: HRGN;
begin
with Control do
  begin
  R := ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
  Perform(EM_GETRECT, 0, lParam(@r));
  InflateRect(r, - 5, - 5);
  Perform(EM_SETRECTNP, 0, lParam(@r));
  SetWindowRgn(Handle, rgn, True);
  Invalidate;
  end;
end;

procedure Tfrm_prncipal.Button1Click(Sender: TObject);
begin
pnl_sub_menu_cursos.Visible:= not  pnl_sub_menu_cursos.Visible;
end;


procedure Tfrm_prncipal.Edit1Change(Sender: TObject);
var
codigo, contador:integer;
 begin
 if edit1.Text<>'' then
        begin
         contador:=0;
         panel6.Visible:=true;
        begin
        with dm.qpesquisa do
         begin
         close();
         sql.clear;
         sql.add('Select * from pesquisa where nome like ''%'+edit1.Text+'%''');
         open();
         contador:=(dm.qpesquisa.RecordCount);
         end;


            cb1.Clear;
            dm.qpesquisa.First;
            while not dm.qpesquisa.Eof do
            begin
             cb1.Items.Add(dm.qpesquisa.FieldByName('nome').asstring);
             dm.qpesquisa.Next();
            end;

        end;

            if contador = 0 then
            begin
              panel6.Visible:=false;
            end;


            begin
             if contador > 5 then
               contador:=5 ;
            end;

            ver:= cb1.items[0];

            case contador of


                 1:  begin
                    panel6.Height:=35;

                    sp1.visible:=true;
                    sp1.caption:= cb1.items[0];
                    sp2.visible:=false;
                    sp3.visible:=false;
                    sp4.visible:=false;
                    sp5.visible:=false;
                    end;

                 2:  begin
                    panel6.Height:=70;

                    sp1.visible:=true;
                    sp1.caption:= cb1.items[0];
                    sp2.visible:=true;
                    sp2.caption:= cb1.items[1];
                    sp3.visible:=false;
                    sp4.visible:=false;
                    sp5.visible:=false;
                    end;

                 3:  begin
                    panel6.Height:=105;

                    sp1.visible:=true;
                    sp1.caption:= cb1.items[0];
                    sp2.visible:=true;
                    sp2.caption:= cb1.items[1];
                    sp3.visible:=true;
                    sp3.caption:= cb1.items[2];
                    sp4.visible:=false;
                    sp5.visible:=false;
                    end;

                 4:  begin
                    panel6.Height:=140;

                    sp1.visible:=true;
                    sp1.caption:= cb1.items[0];
                    sp2.visible:=true;
                    sp2.caption:= cb1.items[1];
                    sp3.visible:=true;
                    sp3.caption:= cb1.items[2];
                    sp4.visible:=true;
                    sp4.caption:= cb1.items[3];
                    sp5.visible:=false;

                    end;

                 5:  begin
                     panel6.Height:=175;

                    sp1.visible:=true;
                    sp1.caption:= cb1.items[0];
                    sp2.visible:=true;
                    sp2.caption:= cb1.items[1];
                    sp3.visible:=true;
                    sp3.caption:= cb1.items[2];
                    sp4.visible:=true;
                    sp4.caption:= cb1.items[3];
                    sp5.visible:=true;
                    sp5.caption:= cb1.items[4];
                    end;
                 end;






      end
      else
      begin
      panel6.Visible:=false;
      end;

 end;


procedure Tfrm_prncipal.Edit1Click(Sender: TObject);
begin
if edit1.Text='PESQUISAR...' then
BEGIN
edit1.Text:='';
END;

end;

procedure Tfrm_prncipal.FormActivate(Sender: TObject);
begin


MakeRounded(Panel3);
MakeRounded(pnl_perfil);
  if professor=true then
   begin
    frm_principal_professor := Tfrm_principal_professor.Create(self);
    frm_principal_professor.Parent:= panel2;
    frm_principal_professor.Align:= alClient;
    frm_principal_professor.BorderStyle:= bsNone;
    frm_principal_professor.WindowState :=wsMaximized;
    frm_principal_professor.show;

    btn_matricula.Visible:=false;
    btn_alunos.Visible:=false;
    btn_cursos.Visible:=false;
    btn_turmas.Visible:=false;
    btn_cursos.Visible:=false;
    btn_professor.Visible:=false;
    btn_relatorio.Visible:=false;
    btn_usuarios.Visible:=false;
    btn_financeiro.Visible:=false;
    panel3.Visible:=false;

   end;

    if adm=true then
    begin
     frm_inicio := Tfrm_inicio.Create(self);
    frm_inicio.Parent:= panel2;
    frm_inicio.Align:= alClient;
    frm_inicio.BorderStyle:= bsNone;
    frm_inicio.WindowState :=wsMaximized;
    frm_inicio.show;

    btn_avaliacao.Visible:= false;
    end;

    if (adm=false) AND (professor=false) then
    begin
    frm_inicio := Tfrm_inicio.Create(self);
    frm_inicio.Parent:= panel2;
    frm_inicio.Align:= alClient;
    frm_inicio.BorderStyle:= bsNone;
    frm_inicio.WindowState :=wsMaximized;
    frm_inicio.show;


    end;




 with dm.qusuarios do
 begin

     close;
     sql.clear;
     sql.Add('select  * from usuarios where login=:x and senha=:y');
     parambyname('x').AsString:=login;
     parambyname('y').AsString:=senha;
     open;
     //statusbar1.Panels[0].Text:=('USU�RIO LOGADO: ')+ dm.qusuariosnome.Value;
     Label2.caption:= (dm.qusuariosnome.asstring);
  end;

  ActiveControl := nil;
end;




procedure Tfrm_prncipal.FormCreate(Sender: TObject);
begin

bExpan:=FALSE;

frm_login.free;




end;

procedure Tfrm_prncipal.Image3Click(Sender: TObject);
begin
application.CreateForm(Tfrm_imaluno, frm_imaluno);
frm_imaluno.ShowModal;
end;

procedure Tfrm_prncipal.Image4Click(Sender: TObject);
var
grava9:string;
begin

  if edit1.Text='' then
    begin
    edit1.Text:='PESQUISAR...';
    edit1.Visible:=false;
    edit1.Visible:=true
    end
    else
    begin
    grava9:=edit1.Text;
    edit1.Visible:=false;
    edit1.Visible:=true;
    edit1.Text:=grava9;
    end;

  panel6.Visible:=false;



end;







procedure Tfrm_prncipal.sp1Click(Sender: TObject);
var
grava10:string;
begin
if sp1.Caption='CADASTRO DE MATR�CULAS' then
  BEGIN
    AltDelAluno:=3;

   frm_pqal := Tfrm_pqal.Create(Self);

  frm_pqal.Parent:= panel2;
  frm_pqal.Align:= alClient;
  frm_pqal.BorderStyle:= bsNone;
  frm_pqal.WindowState :=wsMaximized;
  frm_pqal.Position :=poMainFormCenter;
  frm_pqal.Show;

  END;

  if sp1.Caption='ALTERA��O DE MATR�CULAS' then
  BEGIN
         AltDelMatricula:=1;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;
  END;

  if sp1.Caption='EXCLUS�O DE MATR�CULAS' then
  BEGIN
    AltDelMatricula:=2;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;

  END;

  if sp1.Caption='CADASTRO DE ALUNOS' then
  BEGIN

    frm_cadaluno := Tfrm_cadaluno.Create(Self);

    frm_cadaluno.Parent:= panel2;
    frm_cadaluno.Align:= alClient;
    frm_cadaluno.BorderStyle:= bsNone;
    frm_cadaluno.WindowState :=wsMaximized;
    frm_cadaluno.Position :=poMainFormCenter;
    frm_cadaluno.Show;
  END;

  if sp1.Caption='ALTERA��O DE ALUNOS' then
  BEGIN
      AltDelAluno:=1;

     frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;

  END;

  if sp1.Caption='EXCLUS�O DE ALUNOS' then
  BEGIN
     AltDelAluno:=2;

    frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;
  END;

    if sp1.Caption='CADASTRO DE CURSOS' then
  BEGIN
    frm_cadcurso := Tfrm_cadcurso.Create(Self);

  frm_cadcurso.Parent:= panel2;
  frm_cadcurso.Align:= alClient;
  frm_cadcurso.BorderStyle:= bsNone;
  frm_cadcurso.WindowState :=wsMaximized;
  frm_cadcurso.Position :=poMainFormCenter;
  frm_cadcurso.Show;
  END;

    if sp1.Caption='ALTERA��O DE CURSOS' then
  BEGIN
    AltDelCurso:=1;

   frm_pqCurso := Tfrm_pqcurso.Create(self);
  frm_pqCurso.Parent:= panel2;
  frm_pqCurso.Align:= alClient;
  frm_pqCurso.BorderStyle:= bsNone;
  frm_pqCurso.WindowState :=wsMaximized;
  frm_pqCurso.show;
  END;

     if sp1.Caption='EXCLUS�O DE CURSOS' then
  BEGIN
         AltDelCurso:=2;

     frm_pqCurso := Tfrm_pqcurso.Create(self);
    frm_pqCurso.Parent:= panel2;
    frm_pqCurso.Align:= alClient;
    frm_pqCurso.BorderStyle:= bsNone;
    frm_pqCurso.WindowState :=wsMaximized;
    frm_pqCurso.show;
  END;

     if sp1.Caption='CADASTRO DE TURMAS' then
  BEGIN
   frm_cadturma := Tfrm_cadturma.Create(Self);

  frm_cadturma.Parent:= panel2;
  frm_cadturma.Align:= alClient;
  frm_cadturma.BorderStyle:= bsNone;
  frm_cadturma.WindowState :=wsMaximized;
  frm_cadturma.Position :=poMainFormCenter;
  frm_cadturma.Show;
  END;

     if sp1.Caption='ALTERA��O DE TURMAS' then
  BEGIN
    AltDelTurma:=1;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

     if sp1.Caption='EXCLUS�O DE TURMAS' then
  BEGIN
      AltDelTurma:=2;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

      if sp1.Caption='CADASTRO DE PROFESSORES' then
  BEGIN
   frm_cad_professor := Tfrm_cad_professor.Create(Self);

    frm_cad_professor.Parent:= frm_prncipal.panel2;
    frm_cad_professor.Align:= alClient;
    frm_cad_professor.BorderStyle:= bsNone;
    frm_cad_professor.WindowState :=wsMaximized;
    frm_cad_professor.Position :=poMainFormCenter;
    frm_cad_professor.Show;
  END;

      if sp1.Caption='ALTERE��O DE PROFESSORES' then
  BEGIN
     AltDelProfessor:=1;

    frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
    frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

    frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

    frm_pesquisa_professor.Parent:= panel2;
    frm_pesquisa_professor.Align:= alClient;
    frm_pesquisa_professor.BorderStyle:= bsNone;
    frm_pesquisa_professor.WindowState :=wsMaximized;
    frm_pesquisa_professor.Position :=poMainFormCenter;
    frm_pesquisa_professor.Show;
  END;

      if sp1.Caption='EXCLUS�O DE PROFESSORES' then
  BEGIN
      AltDelProfessor:=2;

      frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
      frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

      frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

      frm_pesquisa_professor.Parent:= panel2;
      frm_pesquisa_professor.Align:= alClient;
      frm_pesquisa_professor.BorderStyle:= bsNone;
      frm_pesquisa_professor.WindowState :=wsMaximized;
      frm_pesquisa_professor.Position :=poMainFormCenter;
      frm_pesquisa_professor.Show;
  END;

        if sp1.Caption='DOCUMENTOS' then
  BEGIN
   AltDelMatricula:=3;

  frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

  frm_pq_matricula.Parent:= panel2;
  frm_pq_matricula.Align:= alClient;
  frm_pq_matricula.BorderStyle:= bsNone;
  frm_pq_matricula.WindowState :=wsMaximized;
  frm_pq_matricula.Position :=poMainFormCenter;
  frm_pq_matricula.Show;

  END;

        if sp1.Caption='RELA��O ALUNOS/ TURMA' then
  BEGIN
     AltDelTurma:=3;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

        if sp1.Caption='CADASTRO DE AVALIA��ES' then
  BEGIN
     CadAltDelAvaliacao:=1;
    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp1.Caption='ALTERA��O DE AVALIA��ES' then
  BEGIN
       CadAltDelAvaliacao:=2;

    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp1.Caption='EXCLUS�O DE AVALIA��ES' then
  BEGIN
        CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

          if sp1.Caption='LAN�AMENTO DE NOTAS' then
  BEGIN
       CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

            if sp1.Caption='VIZUALIZA��O DE NOTAS' then
  BEGIN
   AltDelTurma:=4;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;

  END;

            if sp1.Caption='CADASTRO DE USU�RIOS' then
  BEGIN
      frm_caduser := Tfrm_caduser.Create(Self);

    frm_caduser.Parent:= frm_prncipal.panel2;
    frm_caduser.Align:= alClient;
    frm_caduser.BorderStyle:= bsNone;
    frm_caduser.WindowState :=wsMaximized;
    frm_caduser.Position :=poMainFormCenter;
    frm_caduser.Show;
  END;

            if sp1.Caption='ALTERA��O DE USU�RIOS' then
  BEGIN
     AltDelUser:=1;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

              if sp1.Caption='EXCLUS�O DE USU�RIOS' then
  BEGIN
    AltDelUser:=2;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

    begin
  grava10:=edit1.Text;
  edit1.Visible:=false;
  edit1.Visible:=true;
  edit1.Text:=grava10;
  end;

  panel6.Visible:=false;

end;



procedure Tfrm_prncipal.sp2Click(Sender: TObject);
var
omds:string;
begin
if sp2.Caption='CADASTRO DE MATR�CULAS' then
  BEGIN
    AltDelAluno:=3;

   frm_pqal := Tfrm_pqal.Create(Self);

  frm_pqal.Parent:= panel2;
  frm_pqal.Align:= alClient;
  frm_pqal.BorderStyle:= bsNone;
  frm_pqal.WindowState :=wsMaximized;
  frm_pqal.Position :=poMainFormCenter;
  frm_pqal.Show;

  END;

  if sp2.Caption='ALTERA��O DE MATR�CULAS' then
  BEGIN
         AltDelMatricula:=1;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;
  END;

  if sp2.Caption='EXCLUS�O DE MATR�CULAS' then
  BEGIN
    AltDelMatricula:=2;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;

  END;

  if sp2.Caption='CADASTRO DE ALUNOS' then
  BEGIN

    frm_cadaluno := Tfrm_cadaluno.Create(Self);

    frm_cadaluno.Parent:= panel2;
    frm_cadaluno.Align:= alClient;
    frm_cadaluno.BorderStyle:= bsNone;
    frm_cadaluno.WindowState :=wsMaximized;
    frm_cadaluno.Position :=poMainFormCenter;
    frm_cadaluno.Show;
  END;

  if sp2.Caption='ALTERA��O DE ALUNOS' then
  BEGIN
      AltDelAluno:=1;

     frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;

  END;

  if sp2.Caption='EXCLUS�O DE ALUNOS' then
  BEGIN
     AltDelAluno:=2;

    frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;
  END;

    if sp2.Caption='CADASTRO DE CURSOS' then
  BEGIN
    frm_cadcurso := Tfrm_cadcurso.Create(Self);

  frm_cadcurso.Parent:= panel2;
  frm_cadcurso.Align:= alClient;
  frm_cadcurso.BorderStyle:= bsNone;
  frm_cadcurso.WindowState :=wsMaximized;
  frm_cadcurso.Position :=poMainFormCenter;
  frm_cadcurso.Show;
  END;

    if sp2.Caption='ALTERA��O DE CURSOS' then
  BEGIN
    AltDelCurso:=1;

   frm_pqCurso := Tfrm_pqcurso.Create(self);
  frm_pqCurso.Parent:= panel2;
  frm_pqCurso.Align:= alClient;
  frm_pqCurso.BorderStyle:= bsNone;
  frm_pqCurso.WindowState :=wsMaximized;
  frm_pqCurso.show;
  END;

     if sp2.Caption='EXCLUS�O DE CURSOS' then
  BEGIN
         AltDelCurso:=2;

     frm_pqCurso := Tfrm_pqcurso.Create(self);
    frm_pqCurso.Parent:= panel2;
    frm_pqCurso.Align:= alClient;
    frm_pqCurso.BorderStyle:= bsNone;
    frm_pqCurso.WindowState :=wsMaximized;
    frm_pqCurso.show;
  END;

     if sp2.Caption='CADASTRO DE TURMAS' then
  BEGIN
   frm_cadturma := Tfrm_cadturma.Create(Self);

  frm_cadturma.Parent:= panel2;
  frm_cadturma.Align:= alClient;
  frm_cadturma.BorderStyle:= bsNone;
  frm_cadturma.WindowState :=wsMaximized;
  frm_cadturma.Position :=poMainFormCenter;
  frm_cadturma.Show;
  END;

     if sp2.Caption='ALTERA��O DE TURMAS' then
  BEGIN
    AltDelTurma:=1;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

     if sp2.Caption='EXCLUS�O DE TURMAS' then
  BEGIN
      AltDelTurma:=2;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

      if sp2.Caption='CADASTRO DE PROFESSORES' then
  BEGIN
   frm_cad_professor := Tfrm_cad_professor.Create(Self);

    frm_cad_professor.Parent:= frm_prncipal.panel2;
    frm_cad_professor.Align:= alClient;
    frm_cad_professor.BorderStyle:= bsNone;
    frm_cad_professor.WindowState :=wsMaximized;
    frm_cad_professor.Position :=poMainFormCenter;
    frm_cad_professor.Show;
  END;

      if sp2.Caption='ALTERE��O DE PROFESSORES' then
  BEGIN
     AltDelProfessor:=1;

    frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
    frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

    frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

    frm_pesquisa_professor.Parent:= panel2;
    frm_pesquisa_professor.Align:= alClient;
    frm_pesquisa_professor.BorderStyle:= bsNone;
    frm_pesquisa_professor.WindowState :=wsMaximized;
    frm_pesquisa_professor.Position :=poMainFormCenter;
    frm_pesquisa_professor.Show;
  END;

      if sp2.Caption='EXCLUS�O DE PROFESSORES' then
  BEGIN
      AltDelProfessor:=2;

      frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
      frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

      frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

      frm_pesquisa_professor.Parent:= panel2;
      frm_pesquisa_professor.Align:= alClient;
      frm_pesquisa_professor.BorderStyle:= bsNone;
      frm_pesquisa_professor.WindowState :=wsMaximized;
      frm_pesquisa_professor.Position :=poMainFormCenter;
      frm_pesquisa_professor.Show;
  END;

        if sp2.Caption='DOCUMENTOS' then
  BEGIN
   AltDelMatricula:=3;

  frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

  frm_pq_matricula.Parent:= panel2;
  frm_pq_matricula.Align:= alClient;
  frm_pq_matricula.BorderStyle:= bsNone;
  frm_pq_matricula.WindowState :=wsMaximized;
  frm_pq_matricula.Position :=poMainFormCenter;
  frm_pq_matricula.Show;

  END;

        if sp2.Caption='RELA��O ALUNOS/ TURMA' then
  BEGIN
     AltDelTurma:=3;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

        if sp2.Caption='CADASTRO DE AVALIA��ES' then
  BEGIN
     CadAltDelAvaliacao:=1;
    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp2.Caption='ALTERA��O DE AVALIA��ES' then
  BEGIN
       CadAltDelAvaliacao:=2;

    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp2.Caption='EXCLUS�O DE AVALIA��ES' then
  BEGIN
        CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

          if sp2.Caption='LAN�AMENTO DE NOTAS' then
  BEGIN
       CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

            if sp2.Caption='VIZUALIZA��O DE NOTAS' then
  BEGIN
   AltDelTurma:=4;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;

  END;

            if sp2.Caption='CADASTRO DE USU�RIOS' then
  BEGIN
      frm_caduser := Tfrm_caduser.Create(Self);

    frm_caduser.Parent:= frm_prncipal.panel2;
    frm_caduser.Align:= alClient;
    frm_caduser.BorderStyle:= bsNone;
    frm_caduser.WindowState :=wsMaximized;
    frm_caduser.Position :=poMainFormCenter;
    frm_caduser.Show;
  END;

            if sp2.Caption='ALTERA��O DE USU�RIOS' then
  BEGIN
     AltDelUser:=1;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

  if sp2.Caption='EXCLUS�O DE USU�RIOS' then
  BEGIN
    AltDelUser:=2;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

    begin
  omds:=edit1.Text;
  edit1.Visible:=false;
  edit1.Visible:=true;
  edit1.Text:=omds;
  end;

  panel6.Visible:=false;
end;

procedure Tfrm_prncipal.sp3Click(Sender: TObject);
var
gravando3:string;
begin
if sp3.Caption='CADASTRO DE MATR�CULAS' then
  BEGIN
    AltDelAluno:=3;

   frm_pqal := Tfrm_pqal.Create(Self);

  frm_pqal.Parent:= panel2;
  frm_pqal.Align:= alClient;
  frm_pqal.BorderStyle:= bsNone;
  frm_pqal.WindowState :=wsMaximized;
  frm_pqal.Position :=poMainFormCenter;
  frm_pqal.Show;

  END;

  if sp3.Caption='ALTERA��O DE MATR�CULAS' then
  BEGIN
         AltDelMatricula:=1;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;
  END;

  if sp3.Caption='EXCLUS�O DE MATR�CULAS' then
  BEGIN
    AltDelMatricula:=2;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;

  END;

  if sp3.Caption='CADASTRO DE ALUNOS' then
  BEGIN

    frm_cadaluno := Tfrm_cadaluno.Create(Self);

    frm_cadaluno.Parent:= panel2;
    frm_cadaluno.Align:= alClient;
    frm_cadaluno.BorderStyle:= bsNone;
    frm_cadaluno.WindowState :=wsMaximized;
    frm_cadaluno.Position :=poMainFormCenter;
    frm_cadaluno.Show;
  END;

  if sp3.Caption='ALTERA��O DE ALUNOS' then
  BEGIN
      AltDelAluno:=1;

     frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;

  END;

  if sp3.Caption='EXCLUS�O DE ALUNOS' then
  BEGIN
     AltDelAluno:=2;

    frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;
  END;

    if sp3.Caption='CADASTRO DE CURSOS' then
  BEGIN
    frm_cadcurso := Tfrm_cadcurso.Create(Self);

  frm_cadcurso.Parent:= panel2;
  frm_cadcurso.Align:= alClient;
  frm_cadcurso.BorderStyle:= bsNone;
  frm_cadcurso.WindowState :=wsMaximized;
  frm_cadcurso.Position :=poMainFormCenter;
  frm_cadcurso.Show;
  END;

    if sp3.Caption='ALTERA��O DE CURSOS' then
  BEGIN
    AltDelCurso:=1;

   frm_pqCurso := Tfrm_pqcurso.Create(self);
  frm_pqCurso.Parent:= panel2;
  frm_pqCurso.Align:= alClient;
  frm_pqCurso.BorderStyle:= bsNone;
  frm_pqCurso.WindowState :=wsMaximized;
  frm_pqCurso.show;
  END;

     if sp3.Caption='EXCLUS�O DE CURSOS' then
  BEGIN
         AltDelCurso:=2;

     frm_pqCurso := Tfrm_pqcurso.Create(self);
    frm_pqCurso.Parent:= panel2;
    frm_pqCurso.Align:= alClient;
    frm_pqCurso.BorderStyle:= bsNone;
    frm_pqCurso.WindowState :=wsMaximized;
    frm_pqCurso.show;
  END;

     if sp3.Caption='CADASTRO DE TURMAS' then
  BEGIN
   frm_cadturma := Tfrm_cadturma.Create(Self);

  frm_cadturma.Parent:= panel2;
  frm_cadturma.Align:= alClient;
  frm_cadturma.BorderStyle:= bsNone;
  frm_cadturma.WindowState :=wsMaximized;
  frm_cadturma.Position :=poMainFormCenter;
  frm_cadturma.Show;
  END;

     if sp3.Caption='ALTERA��O DE TURMAS' then
  BEGIN
    AltDelTurma:=1;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

     if sp3.Caption='EXCLUS�O DE TURMAS' then
  BEGIN
      AltDelTurma:=2;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

      if sp3.Caption='CADASTRO DE PROFESSORES' then
  BEGIN
   frm_cad_professor := Tfrm_cad_professor.Create(Self);

    frm_cad_professor.Parent:= frm_prncipal.panel2;
    frm_cad_professor.Align:= alClient;
    frm_cad_professor.BorderStyle:= bsNone;
    frm_cad_professor.WindowState :=wsMaximized;
    frm_cad_professor.Position :=poMainFormCenter;
    frm_cad_professor.Show;
  END;

      if sp3.Caption='ALTERE��O DE PROFESSORES' then
  BEGIN
     AltDelProfessor:=1;

    frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
    frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

    frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

    frm_pesquisa_professor.Parent:= panel2;
    frm_pesquisa_professor.Align:= alClient;
    frm_pesquisa_professor.BorderStyle:= bsNone;
    frm_pesquisa_professor.WindowState :=wsMaximized;
    frm_pesquisa_professor.Position :=poMainFormCenter;
    frm_pesquisa_professor.Show;
  END;

      if sp3.Caption='EXCLUS�O DE PROFESSORES' then
  BEGIN
      AltDelProfessor:=2;

      frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
      frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

      frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

      frm_pesquisa_professor.Parent:= panel2;
      frm_pesquisa_professor.Align:= alClient;
      frm_pesquisa_professor.BorderStyle:= bsNone;
      frm_pesquisa_professor.WindowState :=wsMaximized;
      frm_pesquisa_professor.Position :=poMainFormCenter;
      frm_pesquisa_professor.Show;
  END;

        if sp3.Caption='DOCUMENTOS' then
  BEGIN
   AltDelMatricula:=3;

  frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

  frm_pq_matricula.Parent:= panel2;
  frm_pq_matricula.Align:= alClient;
  frm_pq_matricula.BorderStyle:= bsNone;
  frm_pq_matricula.WindowState :=wsMaximized;
  frm_pq_matricula.Position :=poMainFormCenter;
  frm_pq_matricula.Show;

  END;

        if sp3.Caption='RELA��O ALUNOS/ TURMA' then
  BEGIN
     AltDelTurma:=3;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

        if sp3.Caption='CADASTRO DE AVALIA��ES' then
  BEGIN
     CadAltDelAvaliacao:=1;
    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp3.Caption='ALTERA��O DE AVALIA��ES' then
  BEGIN
       CadAltDelAvaliacao:=2;

    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp3.Caption='EXCLUS�O DE AVALIA��ES' then
  BEGIN
        CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

          if sp3.Caption='LAN�AMENTO DE NOTAS' then
  BEGIN
       CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

            if sp3.Caption='VIZUALIZA��O DE NOTAS' then
  BEGIN
   AltDelTurma:=4;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;

  END;

            if sp3.Caption='CADASTRO DE USU�RIOS' then
  BEGIN
      frm_caduser := Tfrm_caduser.Create(Self);

    frm_caduser.Parent:= frm_prncipal.panel2;
    frm_caduser.Align:= alClient;
    frm_caduser.BorderStyle:= bsNone;
    frm_caduser.WindowState :=wsMaximized;
    frm_caduser.Position :=poMainFormCenter;
    frm_caduser.Show;
  END;

            if sp3.Caption='ALTERA��O DE USU�RIOS' then
  BEGIN
     AltDelUser:=1;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

              if sp3.Caption='EXCLUS�O DE USU�RIOS' then
  BEGIN
    AltDelUser:=2;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

    begin
  gravando3:=edit1.Text;
  edit1.Visible:=false;
  edit1.Visible:=true;
  edit1.Text:=gravando3;
  end;

  panel6.Visible:=false;
end;




procedure Tfrm_prncipal.sp4Click(Sender: TObject);
var
gavandoo4:string;
begin
if sp4.Caption='CADASTRO DE MATR�CULAS' then
  BEGIN
    AltDelAluno:=3;

   frm_pqal := Tfrm_pqal.Create(Self);

  frm_pqal.Parent:= panel2;
  frm_pqal.Align:= alClient;
  frm_pqal.BorderStyle:= bsNone;
  frm_pqal.WindowState :=wsMaximized;
  frm_pqal.Position :=poMainFormCenter;
  frm_pqal.Show;

  END;

  if sp4.Caption='ALTERA��O DE MATR�CULAS' then
  BEGIN
         AltDelMatricula:=1;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;
  END;

  if sp4.Caption='EXCLUS�O DE MATR�CULAS' then
  BEGIN
    AltDelMatricula:=2;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;

  END;

  if sp4.Caption='CADASTRO DE ALUNOS' then
  BEGIN

    frm_cadaluno := Tfrm_cadaluno.Create(Self);

    frm_cadaluno.Parent:= panel2;
    frm_cadaluno.Align:= alClient;
    frm_cadaluno.BorderStyle:= bsNone;
    frm_cadaluno.WindowState :=wsMaximized;
    frm_cadaluno.Position :=poMainFormCenter;
    frm_cadaluno.Show;
  END;

  if sp4.Caption='ALTERA��O DE ALUNOS' then
  BEGIN
      AltDelAluno:=1;

     frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;

  END;

  if sp4.Caption='EXCLUS�O DE ALUNOS' then
  BEGIN
     AltDelAluno:=2;

    frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;
  END;

    if sp4.Caption='CADASTRO DE CURSOS' then
  BEGIN
    frm_cadcurso := Tfrm_cadcurso.Create(Self);

  frm_cadcurso.Parent:= panel2;
  frm_cadcurso.Align:= alClient;
  frm_cadcurso.BorderStyle:= bsNone;
  frm_cadcurso.WindowState :=wsMaximized;
  frm_cadcurso.Position :=poMainFormCenter;
  frm_cadcurso.Show;
  END;

    if sp4.Caption='ALTERA��O DE CURSOS' then
  BEGIN
    AltDelCurso:=1;

   frm_pqCurso := Tfrm_pqcurso.Create(self);
  frm_pqCurso.Parent:= panel2;
  frm_pqCurso.Align:= alClient;
  frm_pqCurso.BorderStyle:= bsNone;
  frm_pqCurso.WindowState :=wsMaximized;
  frm_pqCurso.show;
  END;

     if sp4.Caption='EXCLUS�O DE CURSOS' then
  BEGIN
         AltDelCurso:=2;

     frm_pqCurso := Tfrm_pqcurso.Create(self);
    frm_pqCurso.Parent:= panel2;
    frm_pqCurso.Align:= alClient;
    frm_pqCurso.BorderStyle:= bsNone;
    frm_pqCurso.WindowState :=wsMaximized;
    frm_pqCurso.show;
  END;

     if sp4.Caption='CADASTRO DE TURMAS' then
  BEGIN
   frm_cadturma := Tfrm_cadturma.Create(Self);

  frm_cadturma.Parent:= panel2;
  frm_cadturma.Align:= alClient;
  frm_cadturma.BorderStyle:= bsNone;
  frm_cadturma.WindowState :=wsMaximized;
  frm_cadturma.Position :=poMainFormCenter;
  frm_cadturma.Show;
  END;

     if sp4.Caption='ALTERA��O DE TURMAS' then
  BEGIN
    AltDelTurma:=1;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

     if sp4.Caption='EXCLUS�O DE TURMAS' then
  BEGIN
      AltDelTurma:=2;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

      if sp4.Caption='CADASTRO DE PROFESSORES' then
  BEGIN
   frm_cad_professor := Tfrm_cad_professor.Create(Self);

    frm_cad_professor.Parent:= frm_prncipal.panel2;
    frm_cad_professor.Align:= alClient;
    frm_cad_professor.BorderStyle:= bsNone;
    frm_cad_professor.WindowState :=wsMaximized;
    frm_cad_professor.Position :=poMainFormCenter;
    frm_cad_professor.Show;
  END;

      if sp4.Caption='ALTERE��O DE PROFESSORES' then
  BEGIN
     AltDelProfessor:=1;

    frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
    frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

    frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

    frm_pesquisa_professor.Parent:= panel2;
    frm_pesquisa_professor.Align:= alClient;
    frm_pesquisa_professor.BorderStyle:= bsNone;
    frm_pesquisa_professor.WindowState :=wsMaximized;
    frm_pesquisa_professor.Position :=poMainFormCenter;
    frm_pesquisa_professor.Show;
  END;

      if sp4.Caption='EXCLUS�O DE PROFESSORES' then
  BEGIN
      AltDelProfessor:=2;

      frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
      frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

      frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

      frm_pesquisa_professor.Parent:= panel2;
      frm_pesquisa_professor.Align:= alClient;
      frm_pesquisa_professor.BorderStyle:= bsNone;
      frm_pesquisa_professor.WindowState :=wsMaximized;
      frm_pesquisa_professor.Position :=poMainFormCenter;
      frm_pesquisa_professor.Show;
  END;

        if sp4.Caption='DOCUMENTOS' then
  BEGIN
   AltDelMatricula:=3;

  frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

  frm_pq_matricula.Parent:= panel2;
  frm_pq_matricula.Align:= alClient;
  frm_pq_matricula.BorderStyle:= bsNone;
  frm_pq_matricula.WindowState :=wsMaximized;
  frm_pq_matricula.Position :=poMainFormCenter;
  frm_pq_matricula.Show;

  END;

        if sp4.Caption='RELA��O ALUNOS/ TURMA' then
  BEGIN
     AltDelTurma:=3;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

        if sp4.Caption='CADASTRO DE AVALIA��ES' then
  BEGIN
     CadAltDelAvaliacao:=1;
    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp4.Caption='ALTERA��O DE AVALIA��ES' then
  BEGIN
       CadAltDelAvaliacao:=2;

    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp4.Caption='EXCLUS�O DE AVALIA��ES' then
  BEGIN
        CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

          if sp4.Caption='LAN�AMENTO DE NOTAS' then
  BEGIN
       CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

            if sp4.Caption='VIZUALIZA��O DE NOTAS' then
  BEGIN
   AltDelTurma:=4;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;

  END;

            if sp4.Caption='CADASTRO DE USU�RIOS' then
  BEGIN
      frm_caduser := Tfrm_caduser.Create(Self);

    frm_caduser.Parent:= frm_prncipal.panel2;
    frm_caduser.Align:= alClient;
    frm_caduser.BorderStyle:= bsNone;
    frm_caduser.WindowState :=wsMaximized;
    frm_caduser.Position :=poMainFormCenter;
    frm_caduser.Show;
  END;

            if sp4.Caption='ALTERA��O DE USU�RIOS' then
  BEGIN
     AltDelUser:=1;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

              if sp4.Caption='EXCLUS�O DE USU�RIOS' then
  BEGIN
    AltDelUser:=2;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

    begin
  gavandoo4:=edit1.Text;
  edit1.Visible:=false;
  edit1.Visible:=true;
  edit1.Text:=gavandoo4;
  end;

  panel6.Visible:=false;
end;

procedure Tfrm_prncipal.sp5Click(Sender: TObject);
var
gravandoongc5:string;
begin
 if sp5.Caption='CADASTRO DE MATR�CULAS' then
  BEGIN
    AltDelAluno:=3;

   frm_pqal := Tfrm_pqal.Create(Self);

  frm_pqal.Parent:= panel2;
  frm_pqal.Align:= alClient;
  frm_pqal.BorderStyle:= bsNone;
  frm_pqal.WindowState :=wsMaximized;
  frm_pqal.Position :=poMainFormCenter;
  frm_pqal.Show;

  END;

  if sp5.Caption='ALTERA��O DE MATR�CULAS' then
  BEGIN
         AltDelMatricula:=1;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;
  END;

  if sp5.Caption='EXCLUS�O DE MATR�CULAS' then
  BEGIN
    AltDelMatricula:=2;

     frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

    frm_pq_matricula.Parent:= panel2;
    frm_pq_matricula.Align:= alClient;
    frm_pq_matricula.BorderStyle:= bsNone;
    frm_pq_matricula.WindowState :=wsMaximized;
    frm_pq_matricula.Position :=poMainFormCenter;
    frm_pq_matricula.Show;

  END;

  if sp5.Caption='CADASTRO DE ALUNOS' then
  BEGIN

    frm_cadaluno := Tfrm_cadaluno.Create(Self);

    frm_cadaluno.Parent:= panel2;
    frm_cadaluno.Align:= alClient;
    frm_cadaluno.BorderStyle:= bsNone;
    frm_cadaluno.WindowState :=wsMaximized;
    frm_cadaluno.Position :=poMainFormCenter;
    frm_cadaluno.Show;
  END;

  if sp5.Caption='ALTERA��O DE ALUNOS' then
  BEGIN
      AltDelAluno:=1;

     frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;

  END;

  if sp5.Caption='EXCLUS�O DE ALUNOS' then
  BEGIN
     AltDelAluno:=2;

    frm_pqal := Tfrm_pqal.Create(Self);

    frm_pqal.Parent:= panel2;
    frm_pqal.Align:= alClient;
    frm_pqal.BorderStyle:= bsNone;
    frm_pqal.WindowState :=wsMaximized;
    frm_pqal.Position :=poMainFormCenter;
    frm_pqal.Show;
  END;

    if sp5.Caption='CADASTRO DE CURSOS' then
  BEGIN
    frm_cadcurso := Tfrm_cadcurso.Create(Self);

  frm_cadcurso.Parent:= panel2;
  frm_cadcurso.Align:= alClient;
  frm_cadcurso.BorderStyle:= bsNone;
  frm_cadcurso.WindowState :=wsMaximized;
  frm_cadcurso.Position :=poMainFormCenter;
  frm_cadcurso.Show;
  END;

    if sp5.Caption='ALTERA��O DE CURSOS' then
  BEGIN
    AltDelCurso:=1;

   frm_pqCurso := Tfrm_pqcurso.Create(self);
  frm_pqCurso.Parent:= panel2;
  frm_pqCurso.Align:= alClient;
  frm_pqCurso.BorderStyle:= bsNone;
  frm_pqCurso.WindowState :=wsMaximized;
  frm_pqCurso.show;
  END;

     if sp5.Caption='EXCLUS�O DE CURSOS' then
  BEGIN
         AltDelCurso:=2;

     frm_pqCurso := Tfrm_pqcurso.Create(self);
    frm_pqCurso.Parent:= panel2;
    frm_pqCurso.Align:= alClient;
    frm_pqCurso.BorderStyle:= bsNone;
    frm_pqCurso.WindowState :=wsMaximized;
    frm_pqCurso.show;
  END;

     if sp5.Caption='CADASTRO DE TURMAS' then
  BEGIN
   frm_cadturma := Tfrm_cadturma.Create(Self);

  frm_cadturma.Parent:= panel2;
  frm_cadturma.Align:= alClient;
  frm_cadturma.BorderStyle:= bsNone;
  frm_cadturma.WindowState :=wsMaximized;
  frm_cadturma.Position :=poMainFormCenter;
  frm_cadturma.Show;
  END;

     if sp5.Caption='ALTERA��O DE TURMAS' then
  BEGIN
    AltDelTurma:=1;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

     if sp5.Caption='EXCLUS�O DE TURMAS' then
  BEGIN
      AltDelTurma:=2;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

      if sp5.Caption='CADASTRO DE PROFESSORES' then
  BEGIN
   frm_cad_professor := Tfrm_cad_professor.Create(Self);

    frm_cad_professor.Parent:= frm_prncipal.panel2;
    frm_cad_professor.Align:= alClient;
    frm_cad_professor.BorderStyle:= bsNone;
    frm_cad_professor.WindowState :=wsMaximized;
    frm_cad_professor.Position :=poMainFormCenter;
    frm_cad_professor.Show;
  END;

      if sp5.Caption='ALTERE��O DE PROFESSORES' then
  BEGIN
     AltDelProfessor:=1;

    frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
    frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

    frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

    frm_pesquisa_professor.Parent:= panel2;
    frm_pesquisa_professor.Align:= alClient;
    frm_pesquisa_professor.BorderStyle:= bsNone;
    frm_pesquisa_professor.WindowState :=wsMaximized;
    frm_pesquisa_professor.Position :=poMainFormCenter;
    frm_pesquisa_professor.Show;
  END;

      if sp5.Caption='EXCLUS�O DE PROFESSORES' then
  BEGIN
      AltDelProfessor:=2;

      frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
      frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

      frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

      frm_pesquisa_professor.Parent:= panel2;
      frm_pesquisa_professor.Align:= alClient;
      frm_pesquisa_professor.BorderStyle:= bsNone;
      frm_pesquisa_professor.WindowState :=wsMaximized;
      frm_pesquisa_professor.Position :=poMainFormCenter;
      frm_pesquisa_professor.Show;
  END;

        if sp5.Caption='DOCUMENTOS' then
  BEGIN
   AltDelMatricula:=3;

  frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

  frm_pq_matricula.Parent:= panel2;
  frm_pq_matricula.Align:= alClient;
  frm_pq_matricula.BorderStyle:= bsNone;
  frm_pq_matricula.WindowState :=wsMaximized;
  frm_pq_matricula.Position :=poMainFormCenter;
  frm_pq_matricula.Show;

  END;

        if sp5.Caption='RELA��O ALUNOS/ TURMA' then
  BEGIN
     AltDelTurma:=3;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;
  END;

        if sp5.Caption='CADASTRO DE AVALIA��ES' then
  BEGIN
     CadAltDelAvaliacao:=1;
    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp5.Caption='ALTERA��O DE AVALIA��ES' then
  BEGIN
       CadAltDelAvaliacao:=2;

    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
  END;

          if sp5.Caption='EXCLUS�O DE AVALIA��ES' then
  BEGIN
        CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

          if sp5.Caption='LAN�AMENTO DE NOTAS' then
  BEGIN
       CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;
  END;

            if sp5.Caption='VIZUALIZA��O DE NOTAS' then
  BEGIN
   AltDelTurma:=4;

    frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

    frm_pqaltturma.Parent:= frm_prncipal.panel2;
    frm_pqaltturma.Align:= alClient;
    frm_pqaltturma.BorderStyle:= bsNone;
    frm_pqaltturma.WindowState :=wsMaximized;
    frm_pqaltturma.Position :=poMainFormCenter;
    frm_pqaltturma.Show;

  END;

            if sp5.Caption='CADASTRO DE USU�RIOS' then
  BEGIN
      frm_caduser := Tfrm_caduser.Create(Self);

    frm_caduser.Parent:= frm_prncipal.panel2;
    frm_caduser.Align:= alClient;
    frm_caduser.BorderStyle:= bsNone;
    frm_caduser.WindowState :=wsMaximized;
    frm_caduser.Position :=poMainFormCenter;
    frm_caduser.Show;
  END;

            if sp5.Caption='ALTERA��O DE USU�RIOS' then
  BEGIN
     AltDelUser:=1;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

              if sp5.Caption='EXCLUS�O DE USU�RIOS' then
  BEGIN
    AltDelUser:=2;

    frm_pqaluser := Tfrm_pqaluser.Create(Self);

    frm_pqaluser.Parent:= frm_prncipal.panel2;
    frm_pqaluser.Align:= alClient;
    frm_pqaluser.BorderStyle:= bsNone;
    frm_pqaluser.WindowState :=wsMaximized;
    frm_pqaluser.Position :=poMainFormCenter;
    frm_pqaluser.Show;
  END;

    begin
  gravandoongc5:=edit1.Text;
  edit1.Visible:=false;
  edit1.Visible:=true;
  edit1.Text:=gravandoongc5;
  end;

  panel6.Visible:=false;
end;

procedure Tfrm_prncipal.SpeedButton10Click(Sender: TObject);
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

AltDelTurma:=3;

frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

frm_pqaltturma.Parent:= frm_prncipal.panel2;
frm_pqaltturma.Align:= alClient;
frm_pqaltturma.BorderStyle:= bsNone;
frm_pqaltturma.WindowState :=wsMaximized;
frm_pqaltturma.Position :=poMainFormCenter;
frm_pqaltturma.Show;
end;

procedure Tfrm_prncipal.SpeedButton11Click(Sender: TObject);
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



frm_cadcurso := Tfrm_cadcurso.Create(Self);

frm_cadcurso.Parent:= panel2;
frm_cadcurso.Align:= alClient;
frm_cadcurso.BorderStyle:= bsNone;
frm_cadcurso.WindowState :=wsMaximized;
frm_cadcurso.Position :=poMainFormCenter;
frm_cadcurso.Show;
end;

procedure Tfrm_prncipal.SpeedButton12Click(Sender: TObject);
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

AltDelMatricula:=3;

 frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

frm_pq_matricula.Parent:= panel2;
frm_pq_matricula.Align:= alClient;
frm_pq_matricula.BorderStyle:= bsNone;
frm_pq_matricula.WindowState :=wsMaximized;
frm_pq_matricula.Position :=poMainFormCenter;
frm_pq_matricula.Show;

end;

procedure Tfrm_prncipal.SpeedButton13Click(Sender: TObject);
begin
AltDelCurso:=1;

 frm_pqCurso := Tfrm_pqcurso.Create(self);
frm_pqCurso.Parent:= panel2;
frm_pqCurso.Align:= alClient;
frm_pqCurso.BorderStyle:= bsNone;
frm_pqCurso.WindowState :=wsMaximized;
frm_pqCurso.show;

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

procedure Tfrm_prncipal.btn_turmasClick(Sender: TObject);
begin
 if bExpan then
  begin
  pnl_sub_menu_turmas.visible:= not pnl_sub_menu_turmas.Visible;
  pnl_sub_menu_turmas.Top:=202;
  pnl_sub_menu_turmas.Left:=160

  end
  else begin
  pnl_sub_menu_turmas.visible:= not pnl_sub_menu_turmas.Visible;
  pnl_sub_menu_turmas.Top:=202;
  pnl_sub_menu_turmas.Left:=40;
  end;
     pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
pnl_sub_usuarios.visible:=false;
end;

procedure Tfrm_prncipal.SpeedButton15Click(Sender: TObject);
begin

  frm_prncipal.pnl_matricula.visible:=false;

frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;

resultado.visible:= not resultado.visible;
origem.visible:= not origem.visible;
pnl_perfil.visible:= not pnl_perfil.Visible;



end;


procedure Tfrm_prncipal.SpeedButton16Click(Sender: TObject);
begin
 frm_meu_perfil := Tfrm_meu_perfil.Create(self);
frm_meu_perfil.Parent:= panel2;
frm_meu_perfil.Align:= alClient;
frm_meu_perfil.BorderStyle:= bsNone;
frm_meu_perfil.WindowState :=wsMaximized;
frm_meu_perfil.show;

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

procedure Tfrm_prncipal.SpeedButton17Click(Sender: TObject);
begin
  CadAltDelAvaliacao:=3;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
frm_pesq_turma_professor.Align:= alClient;
frm_pesq_turma_professor.BorderStyle:= bsNone;
frm_pesq_turma_professor.WindowState :=wsMaximized;
frm_pesq_turma_professor.Position :=poMainFormCenter;
frm_pesq_turma_professor.Show;

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

procedure Tfrm_prncipal.SpeedButton17MouseEnter(Sender: TObject);
begin
  pnl_sub_menu_notas.visible:= false;
end;

procedure Tfrm_prncipal.SpeedButton18Click(Sender: TObject);
begin
  CadAltDelAvaliacao:=4;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;

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


end;

procedure Tfrm_prncipal.btn_professorClick(Sender: TObject);
begin
 if bExpan then
  begin
  pnl_sub_menu_professor.visible:= not pnl_sub_menu_professor.Visible;
  pnl_sub_menu_professor.Top:=242;
  pnl_sub_menu_professor.Left:=160

  end
  else begin
  pnl_sub_menu_professor.visible:= not pnl_sub_menu_professor.Visible;
  pnl_sub_menu_professor.Top:=242;
  pnl_sub_menu_professor.Left:=40;
  end;
      pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;

pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
end;

procedure Tfrm_prncipal.btn_cursosClick(Sender: TObject);
begin
 if bExpan then
  begin
  pnl_sub_menu_cursos.Visible:= not pnl_sub_menu_cursos.Visible;
  pnl_sub_menu_cursos.Top:=162;
  pnl_sub_menu_cursos.Left:=160

  end
  else begin
  pnl_sub_menu_cursos.visible:= not pnl_sub_menu_cursos.Visible;
  pnl_sub_menu_cursos.Top:=162;
  pnl_sub_menu_cursos.Left:=40;
  end;
      pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;

pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
end;

procedure Tfrm_prncipal.SpeedButton1Click(Sender: TObject);
begin
    if bExpan then
      pnl_menu_lateral.Width:= 40
      else
      pnl_menu_lateral.Width:= 160;
      bExpan := not bExpan;

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

end;

procedure Tfrm_prncipal.btn_alunosClick(Sender: TObject);
begin
 if bExpan then
  begin
  pnl_sub_menu_alunos.visible:= not pnl_sub_menu_alunos.Visible;
  pnl_sub_menu_alunos.Top:=122;
  pnl_sub_menu_alunos.Left:=160

  end
  else begin
  pnl_sub_menu_alunos.visible:= not pnl_sub_menu_alunos.Visible;
  pnl_sub_menu_alunos.Top:=122;
  pnl_sub_menu_alunos.Left:=40;
  end;
  pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;

pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;
end;

procedure Tfrm_prncipal.SpeedButton21Click(Sender: TObject);
begin
frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

frm_cadturma := Tfrm_cadturma.Create(Self);

frm_cadturma.Parent:= panel2;
frm_cadturma.Align:= alClient;
frm_cadturma.BorderStyle:= bsNone;
frm_cadturma.WindowState :=wsMaximized;
frm_cadturma.Position :=poMainFormCenter;
frm_cadturma.Show;

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

procedure Tfrm_prncipal.SpeedButton22Click(Sender: TObject);
begin
AltDelTurma:=1;

frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

frm_pqaltturma.Parent:= frm_prncipal.panel2;
frm_pqaltturma.Align:= alClient;
frm_pqaltturma.BorderStyle:= bsNone;
frm_pqaltturma.WindowState :=wsMaximized;
frm_pqaltturma.Position :=poMainFormCenter;
frm_pqaltturma.Show;

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

procedure Tfrm_prncipal.SpeedButton23Click(Sender: TObject);
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

AltDelTurma:=2;

frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

frm_pqaltturma.Parent:= frm_prncipal.panel2;
frm_pqaltturma.Align:= alClient;
frm_pqaltturma.BorderStyle:= bsNone;
frm_pqaltturma.WindowState :=wsMaximized;
frm_pqaltturma.Position :=poMainFormCenter;
frm_pqaltturma.Show;
end;

procedure Tfrm_prncipal.SpeedButton24MouseEnter(Sender: TObject);
begin
if professor=true then
  begin
     if bExpan then
    begin
    pnl_sub_menu_notas.visible:= true;
    pnl_sub_menu_notas.Top:=83+(3*40);
    pnl_sub_menu_notas.Left:=338;

    end
   else

    begin
    pnl_sub_menu_notas.visible:= true;
    pnl_sub_menu_notas.Top:=83+(3*40);
    pnl_sub_menu_notas.Left:=177+40;
    end;

  end
  else
 if bExpan then
    begin
    pnl_sub_menu_notas.visible:= true;
    pnl_sub_menu_notas.Top:=444;
    pnl_sub_menu_notas.Left:=338;

    end
   else

    begin
    pnl_sub_menu_notas.visible:= true;
    pnl_sub_menu_notas.Top:=444;
    pnl_sub_menu_notas.Left:=177+40;
    end;
end;

procedure Tfrm_prncipal.SpeedButton25Click(Sender: TObject);
begin
frm_cad_professor := Tfrm_cad_professor.Create(Self);

frm_cad_professor.Parent:= frm_prncipal.panel2;
frm_cad_professor.Align:= alClient;
frm_cad_professor.BorderStyle:= bsNone;
frm_cad_professor.WindowState :=wsMaximized;
frm_cad_professor.Position :=poMainFormCenter;
frm_cad_professor.Show;

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

procedure Tfrm_prncipal.SpeedButton26Click(Sender: TObject);
begin
 with dm.qprofessor do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores');
    open;
    if recordcount=0 then

    begin

     SHOWMESSAGE('ERRO: Dados insuficientes.');
    end
    else
    begin
     AltDelProfessor:=1;

    frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
    frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

    frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

    frm_pesquisa_professor.Parent:= panel2;
    frm_pesquisa_professor.Align:= alClient;
    frm_pesquisa_professor.BorderStyle:= bsNone;
    frm_pesquisa_professor.WindowState :=wsMaximized;
    frm_pesquisa_professor.Position :=poMainFormCenter;
    frm_pesquisa_professor.Show;


    end;

  end;
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

procedure Tfrm_prncipal.SpeedButton27Click(Sender: TObject);
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

with dm.qprofessor do
    begin
    close;
    sql.clear;
    sql.Add('select * from professores');
    open;
    if recordcount=0 then

    begin

     SHOWMESSAGE('ERRO: Dados insuficientes.');
    end
    else
    begin
          AltDelProfessor:=2;

      frm_prncipal.pnl_sub_menu_alunos.Visible:=false;
      frm_prncipal.pnl_sub_menu_relatorios.Visible:=false;

      frm_pesquisa_professor := Tfrm_pesquisa_professor.Create(Self);

      frm_pesquisa_professor.Parent:= panel2;
      frm_pesquisa_professor.Align:= alClient;
      frm_pesquisa_professor.BorderStyle:= bsNone;
      frm_pesquisa_professor.WindowState :=wsMaximized;
      frm_pesquisa_professor.Position :=poMainFormCenter;
      frm_pesquisa_professor.Show;
    end;

  end;

end;

procedure Tfrm_prncipal.SpeedButton28Click(Sender: TObject);
begin
    AltDelCurso:=2;

 frm_pqCurso := Tfrm_pqcurso.Create(self);
frm_pqCurso.Parent:= panel2;
frm_pqCurso.Align:= alClient;
frm_pqCurso.BorderStyle:= bsNone;
frm_pqCurso.WindowState :=wsMaximized;
frm_pqCurso.show;

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

procedure Tfrm_prncipal.SpeedButton29Click(Sender: TObject);
begin
frm_alteracao_senha := Tfrm_alteracao_senha.Create(Self);

frm_alteracao_senha.Parent:= frm_prncipal.panel2;
frm_alteracao_senha.Align:= alClient;
frm_alteracao_senha.BorderStyle:= bsNone;
frm_alteracao_senha.WindowState :=wsMaximized;
frm_alteracao_senha.Position :=poMainFormCenter;
frm_alteracao_senha.Show;

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

procedure Tfrm_prncipal.SpeedButton2Click(Sender: TObject);
begin

  pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;

  if professor=true then
   begin
    frm_principal_professor := Tfrm_principal_professor.Create(self);
    frm_principal_professor.Parent:= panel2;
    frm_principal_professor.Align:= alClient;
    frm_principal_professor.BorderStyle:= bsNone;
    frm_principal_professor.WindowState :=wsMaximized;
    frm_principal_professor.show;

   end
   else
   begin
     frm_inicio := Tfrm_inicio.Create(self);
    frm_inicio.Parent:= panel2;
    frm_inicio.Align:= alClient;
    frm_inicio.BorderStyle:= bsNone;
    frm_inicio.WindowState :=wsMaximized;
    frm_inicio.show;
   end;


end;

procedure Tfrm_prncipal.SpeedButton30Click(Sender: TObject);
begin
form_pricipal_ativo:=true;
application.CreateForm(Tfrm_login, frm_login );
frm_login.Show;




end;

procedure Tfrm_prncipal.SpeedButton31Click(Sender: TObject);
begin
 AltDelAluno:=3;

 frm_pqal := Tfrm_pqal.Create(Self);

frm_pqal.Parent:= panel2;
frm_pqal.Align:= alClient;
frm_pqal.BorderStyle:= bsNone;
frm_pqal.WindowState :=wsMaximized;
frm_pqal.Position :=poMainFormCenter;
frm_pqal.Show;

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

procedure Tfrm_prncipal.SpeedButton32Click(Sender: TObject);
begin
 AltDelMatricula:=1;
  frm_prncipal.pnl_matricula.visible:=false;
 frm_prncipal.pnl_perfil.visible:=false;
frm_prncipal.pnl_sub_menu_alunos.visible:=false;
frm_prncipal.pnl_sub_menu_avaliacoes.visible:=false;
frm_prncipal.pnl_sub_menu_cursos.visible:=false;
frm_prncipal.pnl_sub_menu_professor.visible:=false;
frm_prncipal.pnl_sub_menu_relatorios.visible:=false;
frm_prncipal.pnl_sub_menu_turmas.visible:=false;
frm_prncipal.pnl_sub_usuarios.visible:=false;

 frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

frm_pq_matricula.Parent:= panel2;
frm_pq_matricula.Align:= alClient;
frm_pq_matricula.BorderStyle:= bsNone;
frm_pq_matricula.WindowState :=wsMaximized;
frm_pq_matricula.Position :=poMainFormCenter;
frm_pq_matricula.Show;
end;

procedure Tfrm_prncipal.SpeedButton33Click(Sender: TObject);
begin
 AltDelMatricula:=2;

 frm_pq_matricula := Tfrm_pq_matricula.Create(Self);

frm_pq_matricula.Parent:= panel2;
frm_pq_matricula.Align:= alClient;
frm_pq_matricula.BorderStyle:= bsNone;
frm_pq_matricula.WindowState :=wsMaximized;
frm_pq_matricula.Position :=poMainFormCenter;
frm_pq_matricula.Show;

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

procedure Tfrm_prncipal.btn_usuariosClick(Sender: TObject);
begin
if adm=false then
begin


 if bExpan then
  begin
  pnl_sub_usuarios.visible:= not pnl_sub_usuarios.Visible;
  pnl_sub_usuarios.Top:=402;
  pnl_sub_usuarios.Left:=160

  end
  else begin
  pnl_sub_usuarios.visible:= not pnl_sub_usuarios.Visible;
  pnl_sub_usuarios.Top:=402;
  pnl_sub_usuarios.Left:=40;
  end;

end;

  if adm=true then
  begin


   if bExpan then
    begin
    pnl_sub_usuarios.visible:= not pnl_sub_usuarios.Visible;
    pnl_sub_usuarios.Top:=364;
    pnl_sub_usuarios.Left:=160

    end
    else begin
    pnl_sub_usuarios.visible:= not pnl_sub_usuarios.Visible;
    pnl_sub_usuarios.Top:=364;
    pnl_sub_usuarios.Left:=40;
    end;

  end;

   pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;

end;

procedure Tfrm_prncipal.btn_usuariosMouseEnter(Sender: TObject);
begin
  pnl_sub_menu_notas.visible:= false;
end;

procedure Tfrm_prncipal.SpeedButton35Click(Sender: TObject);
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

  frm_caduser := Tfrm_caduser.Create(Self);

frm_caduser.Parent:= frm_prncipal.panel2;
frm_caduser.Align:= alClient;
frm_caduser.BorderStyle:= bsNone;
frm_caduser.WindowState :=wsMaximized;
frm_caduser.Position :=poMainFormCenter;
frm_caduser.Show;
end;

procedure Tfrm_prncipal.SpeedButton36Click(Sender: TObject);
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

AltDelUser:=1;

frm_pqaluser := Tfrm_pqaluser.Create(Self);

frm_pqaluser.Parent:= frm_prncipal.panel2;
frm_pqaluser.Align:= alClient;
frm_pqaluser.BorderStyle:= bsNone;
frm_pqaluser.WindowState :=wsMaximized;
frm_pqaluser.Position :=poMainFormCenter;
frm_pqaluser.Show;
end;

procedure Tfrm_prncipal.SpeedButton37Click(Sender: TObject);
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

AltDelUser:=2;

frm_pqaluser := Tfrm_pqaluser.Create(Self);

frm_pqaluser.Parent:= frm_prncipal.panel2;
frm_pqaluser.Align:= alClient;
frm_pqaluser.BorderStyle:= bsNone;
frm_pqaluser.WindowState :=wsMaximized;
frm_pqaluser.Position :=poMainFormCenter;
frm_pqaluser.Show;
end;

procedure Tfrm_prncipal.SpeedButton38Click(Sender: TObject);
begin
CadAltDelAvaliacao:=1;
frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
frm_pesq_turma_professor.Align:= alClient;
frm_pesq_turma_professor.BorderStyle:= bsNone;
frm_pesq_turma_professor.WindowState :=wsMaximized;
frm_pesq_turma_professor.Position :=poMainFormCenter;
frm_pesq_turma_professor.Show;

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

procedure Tfrm_prncipal.btn_notasClick(Sender: TObject);
begin
if professor = true then
 begin
      CadAltDelAvaliacao:=10;

    frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

    frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
    frm_pesq_turma_professor.Align:= alClient;
    frm_pesq_turma_professor.BorderStyle:= bsNone;
    frm_pesq_turma_professor.WindowState :=wsMaximized;
    frm_pesq_turma_professor.Position :=poMainFormCenter;
    frm_pesq_turma_professor.Show;
 end;

 if professor = false then
 begin
   AltDelTurma:=4;

  frm_pqaltturma := Tfrm_pqaltturma.Create(Self);

  frm_pqaltturma.Parent:= frm_prncipal.panel2;
  frm_pqaltturma.Align:= alClient;
  frm_pqaltturma.BorderStyle:= bsNone;
  frm_pqaltturma.WindowState :=wsMaximized;
  frm_pqaltturma.Position :=poMainFormCenter;
  frm_pqaltturma.Show;
 end;



  pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;


end;

procedure Tfrm_prncipal.SpeedButton3Click(Sender: TObject);
begin
  CadAltDelAvaliacao:=2;

frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
frm_pesq_turma_professor.Align:= alClient;
frm_pesq_turma_professor.BorderStyle:= bsNone;
frm_pesq_turma_professor.WindowState :=wsMaximized;
frm_pesq_turma_professor.Position :=poMainFormCenter;
frm_pesq_turma_professor.Show;

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

procedure Tfrm_prncipal.SpeedButton4Click(Sender: TObject);
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



frm_cadaluno := Tfrm_cadaluno.Create(Self);

frm_cadaluno.Parent:= panel2;
frm_cadaluno.Align:= alClient;
frm_cadaluno.BorderStyle:= bsNone;
frm_cadaluno.WindowState :=wsMaximized;
frm_cadaluno.Position :=poMainFormCenter;
frm_cadaluno.Show;

end;

procedure Tfrm_prncipal.SpeedButton5Click(Sender: TObject);
begin
  pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;

application.CreateForm(Tfrm_periodo_valorizacao, frm_periodo_valorizacao);
frm_periodo_valorizacao.showmodal;
end;

procedure Tfrm_prncipal.SpeedButton6Click(Sender: TObject);
begin
 CadAltDelAvaliacao:=5;
  frm_pesq_turma_professor := Tfrm_pesq_turma_professor.Create(Self);

  frm_pesq_turma_professor.Parent:= frm_prncipal.panel2;
  frm_pesq_turma_professor.Align:= alClient;
  frm_pesq_turma_professor.BorderStyle:= bsNone;
  frm_pesq_turma_professor.WindowState :=wsMaximized;
  frm_pesq_turma_professor.Position :=poMainFormCenter;
  frm_pesq_turma_professor.Show;

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
end;

procedure Tfrm_prncipal.btn_financeiroClick(Sender: TObject);
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

frm_financeiro := Tfrm_financeiro.Create(Self);

frm_financeiro.Parent:= panel2;
frm_financeiro.Align:= alClient;
frm_financeiro.BorderStyle:= bsNone;
frm_financeiro.WindowState :=wsMaximized;
frm_financeiro.Position :=poMainFormCenter;
frm_financeiro.Show;
end;

procedure Tfrm_prncipal.btn_financeiroMouseEnter(Sender: TObject);
begin
  pnl_sub_menu_notas.visible:= false;
end;

procedure Tfrm_prncipal.btn_avaliacaoClick(Sender: TObject);
begin
saiu:=false;

if professor=true then
  begin
   if bExpan then
    begin
    pnl_sub_menu_avaliacoes.visible:= not pnl_sub_menu_avaliacoes.Visible;
    pnl_sub_menu_avaliacoes.Top:=82;
    pnl_sub_menu_avaliacoes.Left:=160

    end
    else
    begin
    pnl_sub_menu_avaliacoes.visible:= not pnl_sub_menu_avaliacoes.Visible;
    pnl_sub_menu_avaliacoes.Top:=82;
    pnl_sub_menu_avaliacoes.Left:=40;
    end;

  end
  else
  begin
  if bExpan then
    begin
    pnl_sub_menu_avaliacoes.visible:= not pnl_sub_menu_avaliacoes.Visible;
    pnl_sub_menu_avaliacoes.Top:=322;
    pnl_sub_menu_avaliacoes.Left:=160

    end
   else

    begin
    pnl_sub_menu_avaliacoes.visible:= not pnl_sub_menu_avaliacoes.Visible;
    pnl_sub_menu_avaliacoes.Top:=322;
    pnl_sub_menu_avaliacoes.Left:=40;
    end;
  end;

    pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;

pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;

end;

procedure Tfrm_prncipal.btn_relatorioClick(Sender: TObject);
begin
   if bExpan then
  begin
  pnl_sub_menu_relatorios.visible:= not pnl_sub_menu_relatorios.Visible;
  pnl_sub_menu_relatorios.Top:=282;
  pnl_sub_menu_relatorios.Left:=160

  end
  else begin
  pnl_sub_menu_relatorios.visible:= not pnl_sub_menu_relatorios.Visible;
  pnl_sub_menu_relatorios.Top:=282;
  pnl_sub_menu_relatorios.Left:=40;
  end;

      pnl_matricula.visible:=false;
 pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;

pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;

end;

procedure Tfrm_prncipal.btn_matriculaClick(Sender: TObject);
begin
if bExpan then
  begin
  pnl_matricula.visible:= not pnl_matricula.Visible;
  pnl_matricula.Top:=82;
  pnl_matricula.Left:=160

  end

  else begin
  pnl_matricula.visible:= not pnl_matricula.Visible;
  pnl_matricula.Top:=82;
  pnl_matricula.Left:=40;
  end;


pnl_perfil.visible:=false;
pnl_sub_menu_alunos.visible:=false;
pnl_sub_menu_avaliacoes.visible:=false;
pnl_sub_menu_cursos.visible:=false;
pnl_sub_menu_professor.visible:=false;
pnl_sub_menu_relatorios.visible:=false;
pnl_sub_menu_turmas.visible:=false;
pnl_sub_usuarios.visible:=false;
frm_prncipal.pnl_sub_menu_notas.Visible:=false;


end;

procedure Tfrm_prncipal.SpeedButton8Click(Sender: TObject);
begin
AltDelAluno:=1;

 frm_pqal := Tfrm_pqal.Create(Self);

frm_pqal.Parent:= panel2;
frm_pqal.Align:= alClient;
frm_pqal.BorderStyle:= bsNone;
frm_pqal.WindowState :=wsMaximized;
frm_pqal.Position :=poMainFormCenter;
frm_pqal.Show;

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

procedure Tfrm_prncipal.SpeedButton9Click(Sender: TObject);
begin
AltDelAluno:=2;

frm_pqal := Tfrm_pqal.Create(Self);

frm_pqal.Parent:= panel2;
frm_pqal.Align:= alClient;
frm_pqal.BorderStyle:= bsNone;
frm_pqal.WindowState :=wsMaximized;
frm_pqal.Position :=poMainFormCenter;
frm_pqal.Show;

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

procedure Tfrm_prncipal.Timer1Timer(Sender: TObject);
begin
//statusbar1.Panels[2].Text:= ('Data: ')+FormatDateTime ('dddd,dd "de" mmmm "de" yyyy',now);
//statusbar1.Panels[1].Text:= ('Hor�rio: ')+FormatDateTime ('hh:mm:ss',now);
end;

end.
