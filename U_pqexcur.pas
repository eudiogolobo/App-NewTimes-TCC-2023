unit U_pqexcur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pqex = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label15: TLabel;
    Image1: TImage;
    Label2: TLabel;
    lb_total: TLabel;
    txt_buscar: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel34: TPanel;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pqex: Tfrm_pqex;


implementation

{$R *.dfm}
uses
U_dm, U_excurso;

procedure Tfrm_pqex.DBGrid1CellClick(Column: TColumn);
begin

frm_pqex.Close;
end;

procedure Tfrm_pqex.SpeedButton1Click(Sender: TObject);
begin
 with dm.qcursos do
    begin
    close;
    sql.clear;
    sql.Add('select * from cursos where nome like ''%'+txt_buscar.Text+'%''');
    open;
    fetchall;
    lb_total.Caption:=inttostr(dm.qalunos.RecordCount);
  end;
end;

end.
