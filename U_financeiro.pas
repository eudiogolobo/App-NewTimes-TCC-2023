unit U_financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,DateUtils, Vcl.ComCtrls;

type
  Tfrm_financeiro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lb_total: TLabel;
    txt_buscar: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_financeiro: Tfrm_financeiro;

implementation

{$R *.dfm}
uses
u_dm, u_principalpas,U_lancamento_financeiro;

procedure Tfrm_financeiro.DBGrid1CellClick(Column: TColumn);
begin
frm_lancamento_financeiro := Tfrm_lancamento_financeiro.Create(Self);

frm_lancamento_financeiro.Parent:= frm_prncipal.panel2;
frm_lancamento_financeiro.Align:= alClient;
frm_lancamento_financeiro.BorderStyle:= bsNone;
frm_lancamento_financeiro.WindowState :=wsMaximized;
frm_lancamento_financeiro.Position :=poMainFormCenter;
frm_lancamento_financeiro.Show;
end;

procedure Tfrm_financeiro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with dbgrid1 do
  begin
    if dm.qmensalidadestatus.value='INADIMPLENTE' then
    begin
      canvas.Brush.Color := clred;
      canvas.Font.Color:= clwhite;

    end;
     if dm.qmensalidadestatus.value='� VENCER' then
    begin
      canvas.Brush.Color := clblue;
      canvas.Font.Color:= clwhite;

    end;
     if dm.qmensalidadestatus.value='PAGO' then
    begin
      canvas.Brush.Color := clgreen;
      canvas.Font.Color:= clwhite;

    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);


  end;
end;

procedure Tfrm_financeiro.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_financeiro.dtp1Change(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.DataPagamento,a.MatriculaCod,a.valorpago, a.ValorMensalidade, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome ');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.DataPagamento,a.MatriculaCod,a.valorpago, a.ValorMensalidade, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;



end;


procedure Tfrm_financeiro.dtp2Change(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%''  Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.valorpago,a.ValorMensalidade, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.valorpago,a.ValorMensalidade, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod,a.valorpago,a.DataPagamento, a.ValorMensalidade, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;



end;


procedure Tfrm_financeiro.FormCreate(Sender: TObject);
var
dia,mes,qtddias,calculo:integer;
begin
dbgrid1.Visible:=false;
dia:= dayof(date) ;
mes:= monthof(date);
qtddias:= daysinmonth(mes);

calculo:=((qtddias-1)-dia);

dtp1.Date:= (date()+1)- dia;
dtp2.Date:= incyear(dtp1.date);

  with dm.qmensalidade do
  begin
  close;
  sql.Clear;
  sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.valorpago,a.ValorMensalidade, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
  sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
  sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id Order by c.nome');
  open;
  end;

  dm.qmensalidade.First;

  while not dm.qmensalidade.Eof do
  begin
  if (dm.qmensalidadestatus.Value='� VENCER') and ((date())>(dm.qmensalidadedataVencimento.Value))then
   begin
      with dm.tbmensalidade do
      begin
      close;
      sql.Clear;
      sql.Add('update mensalidade set status = :satatus where MensalidadeId = :id');
      parambyname('id').AsInteger := dm.qmensalidadeMensalidadeId.value ;
      parambyname('satatus').AsString :='INADIMPLENTE' ;
      execsql;
      end;
   end;

    dm.qmensalidade.next;
  end;

/////
  with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;
    end;


  dbgrid1.Visible:=true;
end;

procedure Tfrm_financeiro.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
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

procedure Tfrm_financeiro.RadioButton1Click(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome ');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;





radiobutton1.Checked:=true;

radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
end;

procedure Tfrm_financeiro.RadioButton2Click(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome ');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;



radiobutton2.Checked:=true;

radiobutton1.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
end;

procedure Tfrm_financeiro.RadioButton3Click(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;





radiobutton3.Checked:=true;

radiobutton2.Checked:=false;
radiobutton1.Checked:=false;
radiobutton4.Checked:=false;
end;

procedure Tfrm_financeiro.RadioButton4Click(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod, a.DataPagamento,a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;

radiobutton4.Checked:=true;

radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton1.Checked:=false;
end;

procedure Tfrm_financeiro.SpeedButton1Click(Sender: TObject);
var
status, cpf1:string;
i:integer;

begin

  if radiobutton1.Checked=true then
    begin
    with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    open;

     if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



        with dm.qmensalidade do
            begin
            close;
            sql.Clear;
            sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
            sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
            sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF Order by c.nome');
            parambyname('DataInicio').AsDate:=  dtp1.Date;
            parambyname('DataFinal').AsDate:=  dtp2.Date;
            parambyname('CPF').Asstring:=  cpf1;
            open;
         end;
     end;
    end;
  end
  else
  begin
   if radiobutton2.Checked=true then
   begin
    status:='INADIMPLENTE';
   end;
    if radiobutton3.Checked=true then
   begin
    status:='� VENCER';
   end;
    if radiobutton4.Checked=true then
   begin
    status:='PAGO';
   end;

      with dm.qmensalidade do
    begin
    close;
    sql.Clear;
    sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
    sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
    sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and c.nome like ''%'+txt_buscar.text+'%'' and a.status= :status Order by c.nome');
    parambyname('DataInicio').AsDate:=  dtp1.Date;
    parambyname('DataFinal').AsDate:=  dtp2.Date;
    parambyname('status').asstring:= status;
    open;

    if recordcount=0 then
     begin
        cpf1:='';

         for i:=1 to length(txt_buscar.Text) do
           begin
              if (i<>4) and (i<>7) and(i<>10)  then
              begin
              cpf1:= cpf1+txt_buscar.text[i];
              end;

              if i=4 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=7 then
              begin
                 cpf1:= cpf1+'.'+txt_buscar.text[i];
              end;
              if i=10 then
              begin
                 cpf1:= cpf1+'-'+txt_buscar.text[i];
              end;

           end;



          with dm.qmensalidade do
          begin
          close;
          sql.Clear;
          sql.Add('select a.MensalidadeId,a.MatriculaCod,a.DataPagamento, a.ValorMensalidade,a.valorpago, a.DataVencimento, a.status,a.FormaPagamento,a.n_parcela, b.id, b.AlunoCod,c.id,c.nome,c.data_nasc,d.AlunoCod,d.cpf');
          sql.Add('from mensalidade as a, matricula as b, alunos as c, documentos as d');
          sql.Add('where a.MatriculaCod = b.id and b.AlunoCod = c.id and d.AlunoCod = c.id and a.DataVencimento between :DataInicio and :DataFinal and d.cpf = :CPF and a.status= :status Order by c.nome');
          parambyname('DataInicio').AsDate:=  dtp1.Date;
          parambyname('DataFinal').AsDate:=  dtp2.Date;
          parambyname('status').asstring:= status;
          parambyname('CPF').Asstring:=  cpf1;
          open;
           end;
    end;
  end;



 end;



end;

end.
