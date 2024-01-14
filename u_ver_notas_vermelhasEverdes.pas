unit u_ver_notas_vermelhasEverdes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  Tfrm_ver_notas_vermelhasEverdes = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ver_notas_vermelhasEverdes: Tfrm_ver_notas_vermelhasEverdes;

implementation

{$R *.dfm}
uses
u_dm;

end.
