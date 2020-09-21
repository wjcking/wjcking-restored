unit Proj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,Mask,IniFiles;

type
  TfrmProject = class(TForm)
    GroupBox1: TGroupBox;
    rbBaseDb: TRadioButton;
    rbNewDb: TRadioButton;
    rbOpenDb: TRadioButton;
    Image1: TImage;
    cbDb: TCheckBox;
    ODG: TOpenDialog;
    SDG: TSaveDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  iniCon:Tinifile;
  strPath:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProject: TfrmProject;

implementation
uses pimis,login;
{$R *.dfm}
procedure IsDbCon(IsCon:boolean);
begin
with frmmain do
begin
if(IsCon) then
 begin
    ADOCon.open;
    ADOQuery.Active:=true;
    ADOQuery.open;
    ADOTable.Active:=true;
    ADOTable.open ;
    ADOQueryCount.Open;
    ADOQueryCount.Active:=true;
    ToolButton27.Enabled:=true;
    ToolButton28.Enabled:=true;
    ToolButton2.Enabled:=true;
    ToolButton12.Enabled:=true;
    ToolButton22.Enabled:=true;
    ToolButton19.Enabled:=true;
    ToolButton26.Enabled:=true;
    ToolButton25.Enabled:=true;
    ToolButton24.Enabled:=true;
    ToolButton13.Enabled:=true;
    ToolButton14.Enabled:=true;
    ToolButton15.Enabled:=true;
    ToolButton16.Enabled:=true;
    ToolButton17.Enabled:=true;
    ToolButton20.Enabled:=true;
    Notebook.Visible:=true;
  end
  else
  begin
    ADOCon.Close;
    ADOQuery.Active:=false;
    ADOQuery.Close;
    Adochart.Active:=false     ;
    adochart.close;
    ADOTable.Active:=false;
    ADOTable.Close;
    ADOQueryCount.Close;
    ADOQueryCount.Active:=false;
    ToolButton27.Enabled:=false;
    ToolButton28.Enabled:=false;
    ToolButton2.Enabled:=false;
    ToolButton12.Enabled:=false;
    ToolButton22.Enabled:=false;
    ToolButton19.Enabled:=false;
    ToolButton26.Enabled:=false;
    ToolButton25.Enabled:=false;
    ToolButton24.Enabled:=false;
    ToolButton13.Enabled:=false;
    ToolButton14.Enabled:=false;
    ToolButton15.Enabled:=false;
    ToolButton16.Enabled:=false;
    ToolButton17.Enabled:=false;
    ToolButton20.Enabled:=false;
    Notebook.Visible:=false;
  end;
 end;
end;
//***********************function**********************************
procedure TfrmProject.Button1Click(Sender: TObject);
var
strConPath:string;
begin
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);
strConPath:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=';
if not(cbdb.Checked) then iniCon.WriteBool('DbaseCon','IsCon',true)
else iniCon.WriteBool('DbaseCon','IsCon',false);
//********************here is Ini file control*****************
with frmmain do
begin

if(self.rbBaseDb.Checked) then
begin
    iniCon.WriteString('DbaseCon','DbCon',strConPath+'Dbase\DB_DATA.MDB;');
    if not(Notebook.Visible) then
    begin
    IsDbCon(true);
   // Caption:=Caption+'--['+iniCon.ReadString('DbaseCon','Path','')+']';
    frmmain.ToolButton27.Enabled:=false;
    self.Close;
    end
    else
    Application.MessageBox('请先关闭这个项目','职工信息管理系统v1.0',MB_ICONASTERISK);
    proj.frmProject.Close;
end
else if(rbNewdb.Checked) then
begin

   if frmmain.Notebook.Visible=false then
  begin
  sdg.Execute;
  if(sdg.FileName<>'') then
    CopyFile('backup\db_data.mdb',pchar(sdg.FileName),true);
   // IsDbCon(true);
 //   frmmain.ToolButton27.Enabled:=false;
//    Caption:=Caption+'--['+iniCon.ReadString('DbaseCon','Path','')+']';
 //   self.Close;
//  end
 //   else
  //  Application.MessageBox('请先关闭这个项目','职工信息管理系统v1.0',MB_ICONASTERISK);

end
else if(rbOpendb.Checked) then
begin
  //  if Notebook.Visible=false then
 //   begin
   self.ODG.Execute;
   iniCon.WriteString('DbaseCon','DbCon',strConPath+self.ODG.FileName);
   iniCon.WriteString('DbaseCon','Path',self.ODG.FileName);

    IsDbCon(true);
    //Caption:=Caption+'--['+iniCon.ReadString('DbaseCon','Path','')+']';
    frmmain.ToolButton27.Enabled:=false;
    self.Close;
  //  end
 //   else
 //   Application.MessageBox('请先关闭这个项目','职工信息管理系统v1.0',MB_ICONASTERISK);

//  iniCon.WriteBool('DbaseCon','IsCon',false);
end;
end;
 end;
end;

procedure TfrmProject.FormCreate(Sender: TObject);
begin
//strPath:=ExtractFilePath(paramstr(0))+'config.ini';
//iniCon:=Tinifile.Create(strPath);
end;


end.
