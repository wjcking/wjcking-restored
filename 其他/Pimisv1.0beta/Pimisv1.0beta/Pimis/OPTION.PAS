unit option;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask,IniFiles, DB, ADODB, ExtCtrls, DBCtrls,
  Grids, DBGrids;

type
  TfrmOption = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button3: TButton;
    Button4: TButton;
    Memo: TMemo;
    cbShowLogin: TCheckBox;
    procedure Button4Click(Sender: TObject);

    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOption: TfrmOption;

implementation
uses pimis;
{$R *.dfm}
procedure DataUpdate;
begin
with frmmain do
begin

  ADOQueryPass.Active:=false;
  AdOQueryPass.SQL.Clear;
  AdoQueryPass.SQL.Text:='select UserId from tb_pass';
  ADOQueryPass.ExecSQL;
  ADOQueryPass.Active:=true;
  while not(AdoQueryPass.Eof) do
  begin

   AdOQueryPass.Next;
  end;
end;
end;
procedure TfrmOption.Button4Click(Sender: TObject);
begin
self.Close;

end;

procedure TfrmOption.Button3Click(Sender: TObject);
var
strPath:string;
iniCon:Tinifile;
begin
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);


if(self.cbShowLogin.Checked) then
iniCon.WriteBool('System','ShowLogin',true)
else
iniCon.WriteBool('System','ShowLogin',false);

self.Close;
end;

procedure TfrmOption.FormCreate(Sender: TObject);
var
strPath:string;
iniCon:Tinifile;
begin
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);
self.cbShowLogin.Checked:=iniCon.ReadBool('System','ShowLogin',true);
//self.cbIsShowBro.Checked:=iniCon.ReadBool('System','ShowBrowser',true);
memo.Text:='测试中,应聘用,由于太累了不写了,过年再说';
{
self.Atable.Connection:=frmmain.ADOCon;
self.ATable.TableName:='tb_pass';
self.dsPassShow.dataset:=ATable;
atable.Active:=true;
self.DBGrid.Columns[0].Width:=40;
self.DBGrid.Columns[0].Width:=30;
self.DBGrid.DataSource:=self.dsPassShow;
}
end;

end.
