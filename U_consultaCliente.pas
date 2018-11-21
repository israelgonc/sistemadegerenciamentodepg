unit U_consultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmConsultaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btn_alt: TButton;
    btn_canc: TButton;
    btn_exc: TButton;
    btn_sav: TButton;
    btn_ant: TButton;
    btn_pro: TButton;
    procedure btn_altClick(Sender: TObject);
    procedure btn_cancClick(Sender: TObject);
    procedure btn_excClick(Sender: TObject);
    procedure btn_savClick(Sender: TObject);
    procedure btn_antClick(Sender: TObject);
    procedure btn_proClick(Sender: TObject);
    procedure habilitarcampos;
    procedure desabilitarcampos;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

uses U_datamodulo;

procedure TfrmConsultaCliente.btn_altClick(Sender: TObject);
begin
  dm.tb_cliente.Edit;
  habilitarcampos;
end;

procedure TfrmConsultaCliente.btn_antClick(Sender: TObject);
begin
  dm.tb_cliente.Prior;
end;

procedure TfrmConsultaCliente.btn_cancClick(Sender: TObject);
begin
  dm.tb_cliente.Cancel;
  habilitarcampos;
end;

procedure TfrmConsultaCliente.btn_excClick(Sender: TObject);
begin
  dm.tb_cliente.Delete;
end;

procedure TfrmConsultaCliente.btn_proClick(Sender: TObject);
begin
  dm.tb_cliente.Next;
end;

procedure TfrmConsultaCliente.btn_savClick(Sender: TObject);
begin
  dm.tb_cliente.Post;
  desabilitarcampos;
end;

procedure TfrmConsultaCliente.desabilitarcampos;
begin
  btn_alt.Enabled:=true;
  btn_exc.Enabled:=true;
  btn_sav.Enabled:=false;
  btn_canc.Enabled:=false;
end;

procedure TfrmConsultaCliente.FormShow(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmConsultaCliente.habilitarcampos;
begin
  btn_alt.Enabled:=false;
  btn_exc.Enabled:=false;
  btn_sav.Enabled:=true;
  btn_canc.Enabled:=true;
end;

end.
