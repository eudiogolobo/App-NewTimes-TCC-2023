unit U_busca_img_rg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs,
  Vcl.Buttons, db,JPEG,DBTables, Vcl.Imaging.pngimage;

  const
  OffsetMemoryStream : Int64 = 0;

type
  Tfrm_busca_img_rg = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    Panel34: TPanel;
    Label16: TLabel;
    Panel36: TPanel;
    Label1: TLabel;
    Panel31: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    Panel32: TPanel;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_busca_img_rg: Tfrm_busca_img_rg;
  save_rg, save_cpf, save_crt_nasc, save_foto,save_comp_residencia,save_crt_vacina:boolean;
  salvo1,salvo2,salvo3,salvo4,salvo5,salvo6,dtr1,dtr2,dtr3,dtr4,dtr5,dtr6:string;
  salvo11,salvo22,salvo33,salvo44,salvo55,salvo66,dtr11,dtr22,dtr33,dtr44,dtr55,dtr66:string;
   save_rg2, save_cpf2, save_crt_nasc2, save_foto2,save_comp_residencia2,save_crt_vacina2:boolean;
  codseg:integer;



implementation

{$R *.dfm}
uses
u_dm,U_cadastroAluno,U_altCadAluno;

procedure Tfrm_busca_img_rg.FormCreate(Sender: TObject);
begin
 with dm.qanexo do
 begin
   close;
   sql.clear;
   sql.add('select * from anexo_documentos where AlunoCod = :codseguranca ');
   parambyname('codseguranca').AsInteger:=codseg;
   open;
 end;


       case indice_img_alt of
  1:
      begin
        if frm_altcadaluno.opd_rg.filename<>'' then
        begin
         image1.Picture.LoadFromFile(frm_altcadaluno.opd_rg.FileName);
        end
        else
        begin

        image1.Picture.Assign( TGraphicField(dm.qanexorg) );
        end;
      end;

  2:
      begin
       begin
         if (frm_altcadaluno.opd_cpf.filename<>'')  then
        begin
         image1.Picture.LoadFromFile(frm_altcadaluno.opd_cpf.FileName);
        end
        else
        begin

         image1.Picture.Assign( TGraphicField(dm.qanexocpf) );
        end;

      end;
    end;

  3:
      begin
       begin
         if frm_altcadaluno.opd_certidao_nasc.FileName<>'' then
        begin
          image1.Picture.LoadFromFile(frm_altcadaluno.opd_certidao_nasc.FileName);
        end
        else
        begin
        image1.Picture.Assign( TGraphicField(dm.qanexocertidaonasc) );
        end;
       end;
      end;

  4:
      begin
       begin
        if frm_altcadaluno.opd_foto.filename<>'' then
        begin
          image1.Picture.LoadFromFile(frm_altcadaluno.opd_foto.FileName);
        end
        else
        begin
        image1.Picture.Assign( TGraphicField(dm.qanexofotopessoal) );
        end;


       end;

      end;

  5:
      begin
       begin
       if frm_altcadaluno.opd_comp_residencia.filename<>'' then
        begin
          image1.Picture.LoadFromFile(frm_altcadaluno.opd_comp_residencia.FileName);
        end
        else
        begin

         image1.Picture.Assign( TGraphicField(dm.qanexocompresidencia) );
        end;

       end;

      end;

  6:
      begin
       begin
        if frm_altcadaluno.opd_vacina.FileName<>'' then
        begin
         image1.Picture.LoadFromFile(frm_altcadaluno.opd_vacina.FileName);
        end
        else
        begin

         image1.Picture.Assign( TGraphicField(dm.qanexocrtvacina) );
        end;
      end;
     end;



  end;

  case indice_img of
  1:
      begin
      if (frm_cadaluno.label100.visible=true) and (frm_cadaluno.image7.visible=true) then
        begin
        image1.Picture.LoadFromFile(frm_cadaluno.opd_rg.FileName);
        end;
      end;

  2:
      begin
       if (frm_cadaluno.label101.visible=true) and (frm_cadaluno.image8.visible=true) then
       BEGIN
       image1.Picture.LoadFromFile(frm_cadaluno.opd_cpf.FileName);
       END;
      end;

  3:
      begin
       if (frm_cadaluno.label102.visible=true) and (frm_cadaluno.image9.visible=true) then
       BEGIN
       image1.Picture.LoadFromFile(frm_cadaluno.opd_certidao_nasc.FileName);
       END;
      end;

  4:
      begin
       if (frm_cadaluno.label103.visible=true) and (frm_cadaluno.image10.visible=true) then
       begin
       image1.Picture.LoadFromFile(frm_cadaluno.opd_foto.FileName);
       end;

      end;

  5:
      begin
       if (frm_cadaluno.label104.visible=true) and (frm_cadaluno.image11.visible=true) then
       begin
       image1.Picture.LoadFromFile(frm_cadaluno.opd_comp_residencia.FileName);
       end;

      end;

  6:
      begin
       if (frm_cadaluno.label105.visible=true) and (frm_cadaluno.image12.visible=true) then
       begin
       image1.Picture.LoadFromFile(frm_cadaluno.opd_vacina.FileName);
       end;
        end;


  end;

 
  
end;

procedure Tfrm_busca_img_rg.SpeedButton1Click(Sender: TObject);
begin
  case indice_img of
  1:
      begin
      if frm_cadaluno.opd_rg.execute then
      image1.Picture.LoadFromFile(frm_cadaluno.opd_rg.FileName);
      end;

  2:
      begin
      if frm_cadaluno.opd_cpf.execute then
       image1.Picture.LoadFromFile(frm_cadaluno.opd_cpf.FileName);
      end;

  3:
      begin
      if frm_cadaluno.opd_certidao_nasc.execute then
      image1.Picture.LoadFromFile(frm_cadaluno.opd_certidao_nasc.FileName);
      end;

  4:
      begin
      if frm_cadaluno.opd_foto.execute then
      image1.Picture.LoadFromFile(frm_cadaluno.opd_foto.FileName);

      end;

  5:
      begin
      if frm_cadaluno.opd_comp_residencia.execute then
      image1.Picture.LoadFromFile(frm_cadaluno.opd_comp_residencia.FileName);

      end;

  6:
      begin
      if frm_cadaluno.opd_vacina.execute then
      image1.Picture.LoadFromFile(frm_cadaluno.opd_vacina.FileName);
        end;


  end;

   case indice_img_alt of
  1:
      begin
      if frm_altcadaluno.opd_rg.execute then
      image1.Picture.LoadFromFile(frm_altcadaluno.opd_rg.FileName);
      end;

  2:
      begin
      if frm_altcadaluno.opd_cpf.execute then
       image1.Picture.LoadFromFile(frm_altcadaluno.opd_cpf.FileName);
      end;

  3:
      begin
      if frm_altcadaluno.opd_certidao_nasc.execute then
      image1.Picture.LoadFromFile(frm_altcadaluno.opd_certidao_nasc.FileName);
      end;

  4:
      begin
      if frm_altcadaluno.opd_foto.execute then
      image1.Picture.LoadFromFile(frm_altcadaluno.opd_foto.FileName);

      end;

  5:
      begin
      if frm_altcadaluno.opd_comp_residencia.execute then
      image1.Picture.LoadFromFile(frm_altcadaluno.opd_comp_residencia.FileName);

      end;

  6:
      begin
      if frm_altcadaluno.opd_vacina.execute then
      image1.Picture.LoadFromFile(frm_altcadaluno.opd_vacina.FileName);
        end;


  end;




end;





procedure Tfrm_busca_img_rg.SpeedButton2Click(Sender: TObject);
begin
    case indice_img of
    1:
      begin
      if (frm_cadaluno.opd_rg.FileName<>'') then
         begin
        save_rg:=true;
        dtr1:=frm_cadaluno.opd_rg.InitialDir;
        salvo1:=frm_cadaluno.opd_rg.FileName;
        frm_cadaluno.label100.visible:=true;
        frm_cadaluno.image7.visible:=true;
        end
        else
        showmessage('Nenhuma imagem escolhida!')
      end;

    2:
      begin
      if (frm_cadaluno.OPD_cpf.FileName<>'') then
        begin
        save_cpf:=true;
        dtr2:=frm_cadaluno.opd_cpf.InitialDir;
        salvo2:=frm_cadaluno.opd_cpf.FileName;
        frm_cadaluno.label101.visible:=true;
        frm_cadaluno.image8.visible:=true;
        end
        else
        showmessage('Nenhuma imagem escolhida!')
      end;

    3:
     begin
     if (frm_cadaluno.opd_certidao_nasc.FileName<>'') then
      begin
      save_crt_nasc:=true;
      dtr3:=frm_cadaluno.opd_certidao_nasc.InitialDir;
      salvo3:=frm_cadaluno.opd_certidao_nasc.FileName;
      frm_cadaluno.label102.visible:=true;
      frm_cadaluno.image9.visible:=true;
      end
      else
      showmessage('Nenhuma imagem escolhida!')
     end;

    4:
    begin
      if (frm_cadaluno.opd_foto.FileName<>'') then
      begin
      save_foto:=true;
      dtr4:=frm_cadaluno.opd_foto.InitialDir;
      salvo4:=frm_cadaluno.opd_foto.FileName;
      frm_cadaluno.label103.visible:=true;
      frm_cadaluno.image10.visible:=true;
      end
      else
      showmessage('Nenhuma imagem escolhida!')
    end;

    5:
    begin
      if (frm_cadaluno.opd_comp_residencia.FileName<>'') then
        begin
        save_comp_residencia:=true;
        dtr5:=frm_cadaluno.opd_comp_residencia.InitialDir;
        salvo5:=frm_cadaluno.opd_comp_residencia.FileName;
        frm_cadaluno.label104.visible:=true;
        frm_cadaluno.image11.visible:=true;
        end
        else
    showmessage('Nenhuma imagem escolhida!')
    end;

    6:
    begin
      if (frm_cadaluno.opd_vacina.FileName<>'') then
      begin
      save_crt_vacina:=true;
      dtr6:=frm_cadaluno.opd_vacina.InitialDir;
      salvo6:=frm_cadaluno.opd_vacina.FileName;
      frm_cadaluno.label105.visible:=true;
      frm_cadaluno.image12.visible:=true;
      end
      else
    showmessage('Nenhuma imagem escolhida!')
    end;


  end;

   case indice_img_alt of
    1:
      begin
      if (frm_altcadaluno.opd_rg.FileName<>'') then
         begin
        save_rg2:=true;
        dtr11:=frm_altcadaluno.opd_rg.InitialDir;
        salvo11:=frm_altcadaluno.opd_rg.FileName;
        frm_altcadaluno.label100.visible:=true;
        frm_altcadaluno.image7.visible:=true;
        end
        else
        showmessage('Nenhuma imagem escolhida!')
      end;

    2:
      begin
      if (frm_altcadaluno.OPD_cpf.FileName<>'') then
        begin
        save_cpf2:=true;
        dtr22:=frm_altcadaluno.opd_cpf.InitialDir;
        salvo22:=frm_altcadaluno.opd_cpf.FileName;
        frm_altcadaluno.label101.visible:=true;
        frm_altcadaluno.image8.visible:=true;
        end
        else
        showmessage('Nenhuma imagem escolhida!')
      end;

    3:
     begin
     if (frm_altcadaluno.opd_certidao_nasc.FileName<>'') then
      begin
      save_crt_nasc2:=true;
      dtr33:=frm_altcadaluno.opd_certidao_nasc.InitialDir;
      salvo33:=frm_altcadaluno.opd_certidao_nasc.FileName;
      frm_altcadaluno.label102.visible:=true;
      frm_altcadaluno.image9.visible:=true;
      end
      else
      showmessage('Nenhuma imagem escolhida!')
     end;

    4:
    begin
      if (frm_altcadaluno.opd_foto.FileName<>'') then
      begin
      save_foto2:=true;
      dtr44:=frm_altcadaluno.opd_foto.InitialDir;
      salvo44:=frm_altcadaluno.opd_foto.FileName;
      frm_altcadaluno.label103.visible:=true;
      frm_altcadaluno.image10.visible:=true;
      end
      else
      showmessage('Nenhuma imagem escolhida!')
    end;

    5:
    begin
      if (frm_altcadaluno.opd_comp_residencia.FileName<>'') then
        begin
        save_comp_residencia2:=true;
        dtr55:=frm_altcadaluno.opd_comp_residencia.InitialDir;
        salvo55:=frm_altcadaluno.opd_comp_residencia.FileName;
        frm_altcadaluno.label104.visible:=true;
        frm_altcadaluno.image11.visible:=true;
        end
        else
    showmessage('Nenhuma imagem escolhida!')
    end;

    6:
    begin
      if (frm_altcadaluno.opd_vacina.FileName<>'') then
      begin
      save_crt_vacina2:=true;
      dtr66:=frm_altcadaluno.opd_vacina.InitialDir;
      salvo66:=frm_altcadaluno.opd_vacina.FileName;
      frm_altcadaluno.label105.visible:=true;
      frm_altcadaluno.image12.visible:=true;
      end
      else
    showmessage('Nenhuma imagem escolhida!')
    end;


  end;

  close;
end;

procedure Tfrm_busca_img_rg.SpeedButton3Click(Sender: TObject);

  begin
    case indice_img of
  1:
      begin
      frm_cadaluno.opd_rg.InitialDir:=dtr1;
      frm_cadaluno.opd_rg.FileName:=salvo1;
      end;

  2:
      begin
      frm_cadaluno.opd_cpf.InitialDir:=dtr2;
      frm_cadaluno.opd_cpf.FileName:=salvo2;
      end;

  3:
      begin
      frm_cadaluno.opd_certidao_nasc.InitialDir:=dtr3;
      frm_cadaluno.opd_certidao_nasc.FileName:=salvo3;
      end;

  4:
      begin
      frm_cadaluno.opd_foto.InitialDir:=dtr4;
      frm_cadaluno.opd_foto.FileName:=salvo4;

      end;

  5:
      begin
      frm_cadaluno.opd_comp_residencia.InitialDir:=dtr5;
      frm_cadaluno.opd_comp_residencia.FileName:=salvo5;

      end;

  6:
      begin
      frm_cadaluno.opd_vacina.InitialDir:=dtr6;
      frm_cadaluno.opd_vacina.FileName:=salvo6;
        end;


  end;

   close;
 end;


end.
