unit ProjCon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask;

type
  TfrmProjectOpen = class(TForm)
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    mtxtPass2: TMaskEdit;
    mtxtPass1: TMaskEdit;
    SpeedButton4: TSpeedButton;
    SDG: TSaveDialog;
    ODG: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjectOpen: TfrmProjectOpen;

implementation

{$R *.dfm}

procedure TfrmProjectOpen.SpeedButton1Click(Sender: TObject);
begin
self.height:=350;
end;

procedure TfrmProjectOpen.SpeedButton3Click(Sender: TObject);
begin
self.SDG.Execute;
if(SDG.FileName<>'') then
self.height:=350;
end;

procedure TfrmProjectOpen.SpeedButton2Click(Sender: TObject);
begin
self.height:=211;
self.ODG.Execute;
end;

procedure TfrmProjectOpen.SpeedButton4Click(Sender: TObject);
begin
if(mtxtPass1.Text<>mtxtPass2.Text) then
begin
  Application.MessageBox('密码验证错误,请重新输入','职工信息管理系统v1.0',MB_IConERROR);
  mtxtPass1.clear;
  mtxtPass2.clear;
end
else if(mtxtPass1.text='')and(mtxtPass2.text='') then
begin
  Application.MessageBox('请输入密码','职工信息管理系统v1.0',MB_IConERROR);
end;
end;

end.
