unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    gpbox: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    mtxtPass: TMaskEdit;
    btnClose: TButton;
    btnLogin: TButton;
    cbxID: TComboBox;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  
  Times:integer;
    { Private declarations }
  public
    { Public declarations }
  FCanClose:Boolean;
  end;

function ShowLoginForm: Boolean;
var
  frmLogin: TfrmLogin;

implementation
uses pimis;
{$R *.dfm}
function ShowLoginForm: Boolean;
begin
  with TfrmLogin.Create(Application) do
  try
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var strTemp:string;
begin
if(mtxtPass.Text<>'') then
begin
  with pimis.frmMain do
  begin
    ADOQueryPass.SQL.Clear;
    ADOQueryPass.SQL.Add('select UserID,PassWord from tb_pass where UserID=:UserID');
    ADOQueryPass.SQL.Add('and Password=:Password');
    ADOQueryPass.Parameters.Items[0].Value:=cbxID.Items.Strings[cbxID.ItemIndex];
    ADOQueryPass.Parameters.Items[1].Value:=self.mtxtPass.Text;
    ADOQueryPass.Active:=true;
    ADOQueryPass.ExecSQL;
    if not(ADOQueryPass.eof) then
      begin
        ADOQueryPass.Close;
        frmmain.ADOTable.Close;
        self.FCanClose:=true;
        self.Close;
        frmmain.strID:=cbxID.Items.Strings[cbxID.ItemIndex];
      end
    else
    begin
    if(self.Times<>1) then
      begin
      strTemp:='密码错误您还有 '+inttostr(Times-1)+' 机会';
      application.MessageBox(PChar(strTemp),'出错了',MB_IConERROR);
      Times:=Times-1;
      mtxtPass.Clear;
      end
    else
    begin
       Application.Terminate;
    end;
  end ;
end;

end;
end;
procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose := FCanClose;
end;


procedure TfrmLogin.btnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
FCanClose:=false;//窗体是否登陆开关
Times:=4;//密码错误率
frmmain.ADOTable.Open;
while not(frmmain.ADOTable.Eof) do
begin
    self.cbxID.Items.Add(frmmain.ADOTable.Fields[0].AsString);
    frmmain.ADOTable.Next;
end;
cbxID.ItemIndex:=0;
end;

end.
