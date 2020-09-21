unit Sql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls,iniFiles;

type
  TfrmSQL = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    MemoSql: TMemo;
    Button1: TButton;
    GroupBox1: TGroupBox;
    cbxIS: TComboBox;
    lbSeaIDC: TLabel;
    txtIdcValue: TEdit;
    GroupBox2: TGroupBox;
    lvDtTypes: TLabel;
    cbxDtIs: TComboBox;
    dt: TDateTimePicker;
    GroupBox3: TGroupBox;
    lbAge: TLabel;
    cbxAgeIS: TComboBox;
    txtSeaAge: TEdit;
    Button2: TButton;
    cbDT: TCheckBox;
    TabSheet3: TTabSheet;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    rbChart: TRadioGroup;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbDTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
    strPath:string;
  public
  strIDC:string;
    { Public declarations }
  end;

var
  frmSQL: TfrmSQL;

implementation
uses pimis;
{$R *.dfm}
procedure DataCharClear;
begin
with frmmain do
begin
  adochart.active:=false;
  adoChart.SQL.Clear;
  DBChart.Series[0].Active:=false;
  DBChart.Series[1].Active:=false;
  DBChart.Series[0].Clear;
  DBChart.Series[1].Clear;
  //dbchart.Series[0].f
  dbchart.Series[0].XLabelsSource:='';
  dbchart.Series[1].XLabelsSource:='';
end;
end;
//**********************************************************************

procedure DataChartShow(strSQL,strTitle,strField:string;intCount:integer);
begin
with frmmain do
begin
  adochart.SQL.Clear;
  adochart.SQL.Text:=strSQL;
  adochart.ExecSQL;
  dbchart.Series[intCount].DataSource:=adochart;
  dbchart.Series[intCount].clear;
  dbchart.Series[intCount].Active:=true;
  dbchart.Title.Text.Clear;
  dbchart.Title.Text.Add(strTitle);
  dbchart.Series[intCount].XLabelsSource:=strField;
  adochart.Active:=true;
end;
end;
//**********************************************************************
procedure TfrmSQL.Button2Click(Sender: TObject);
begin
close;
end;

procedure TfrmSQL.Button1Click(Sender: TObject);
var strValue1,strValue2,strValue3:string;
begin
if (pos('''',self.txtIdcValue.Text)>0)or(pos('''',self.txtSeaAge.Text)>0)then
   begin
      Application.MessageBox('不准有非法字符','职工信息管理系统v1.0',MB_IConERROR);
      self.txtIdcValue.Clear;
      self.txtSeaAge.Clear;
   end;
if (pos('%',txtIdcValue.Text)>0)or(pos('%',self.txtSeaAge.Text)>0)then
   begin
      Application.MessageBox('不准有非法字符','职工信息管理系统v1.0',MB_IConERROR);
      self.txtIdcValue.Clear;
      self.txtSeaAge.Clear;
   end;
if (pos('"',txtIdcValue.Text)>0)or(pos('"',self.txtSeaAge.Text)>0) then
   begin
      Application.MessageBox('不准有非法字符','职工信息管理系统v1.0',MB_IConERROR);
      self.txtIdcValue.Clear;
      self.txtSeaAge.Clear;
   end ;
if (pos('#',txtIdcValue.Text)>0)or(pos('#',self.txtSeaAge.Text)>0) then
   begin
      Application.MessageBox('不准有非法字符','职工信息管理系统v1.0',MB_IConERROR);
      self.txtIdcValue.Clear;
      self.txtSeaAge.Clear;
   end ;

if self.lbSeaIDC.Caption='姓名' then lbSeaIDC.Caption:='Name'
else if lbSeaIDC.Caption='职工编号'then lbSeaIDC.Caption:='ID'
else if lbSeaIDC.Caption='身份证号' then lbSeaIDC.Caption:='IdCard';
if(txtIdcValue.Text<>'') then
begin
  if(cbxIs.ItemIndex<>2) then
    strValue1:=lbSeaIDC.Caption+' '+self.cbxIS.Text+''''+self.txtIdcValue.Text+''''
  else
    strValue1:=lbSeaIDC.Caption+' '+self.cbxIS.Text+'''%'+self.txtIdcValue.Text+'%''';
  end
else
  strValue1:='';
if(txtSeaAge.Text<>'') then
strValue2:='Age'+' '+self.cbxAgeIS.Text+''''+self.txtSeaAge.Text+''''
else
strValue2:='';

if(self.lvDtTypes.Caption='入团时间') then lvDtTypes.Caption:='MemberTime'
else if(lvDtTypes.Caption='入党时间') then lvDtTypes.Caption:='Tongtime'
else if(lvDtTypes.Caption='工作时间') then lvDtTypes.Caption:='StartWorkTime';

if(dt.Enabled) then
   strValue3:=lvDtTypes.Caption+' '+self.cbxDtIs.Text+''''+formatdatetime('yyyy-M-d',dt.datetime)+''''
else
   strValue3:='';
with frmmain do
begin
  txtSeaIDC.Text:=strValue1;
  txtSeaAge.Text:=strValue2;
  txtSeaDt.Text:=strValue3;
end;

close;

end;
procedure TfrmSQL.cbDTClick(Sender: TObject);
begin
if (self.cbDT.Checked) then
   self.dt.Enabled:=false
else
   self.dt.Enabled:=true;
if not( self.cbDT.Checked)and(self.lvDtTypes.Caption='无')then
  begin
   self.dt.Enabled:=false;
   Application.MessageBox('您没有选择字段名,不能被激活','职工信息管理系统v1.0',MB_IConERROR);
   self.cbDT.Checked;
  end;
end;

procedure TfrmSQL.FormCreate(Sender: TObject);
var iniCon:TiniFile;
begin
if lvDtTypes.Caption='无' then cbDt.Enabled:=false;
MemoSql.Text:=frmmain.MemoSeaInfo.Text;
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);
MemoSql.Text:=iniCon.ReadString('sql','key','');
end;

procedure TfrmSQL.Button4Click(Sender: TObject);
var strSexSql:string;
begin
DataCharClear;
strSexSql:='SELECT count(sex),sex AS 性别 FROM tb_proinfor GROUP BY sex';
DataChartShow(strSexSql,'职工人数统计(性别)','性别',rbChart.itemindex);


end;

procedure TfrmSQL.RadioButton1Click(Sender: TObject);
begin
frmmain.DBChart.View3D:=true;
end;

procedure TfrmSQL.RadioButton2Click(Sender: TObject);
begin
frmmain.DBChart.View3D:=false;
end;

procedure TfrmSQL.Button5Click(Sender: TObject);
var strklSql:string;
begin
DataCharClear;
strKlSql:='SELECT count(knowledge),knowledge AS 学历 FROM tb_proinfor GROUP BY knowledge';
DataChartShow(strklSql,'职工人数统计(学历)','学历',rbChart.itemindex);

end;

procedure TfrmSQL.Button6Click(Sender: TObject);
var strPpsSql:string;
begin
DataCharClear;
strPpsSql:='SELECT count(principalship),principalship AS 职务 FROM tb_proinfor GROUP BY principalship';
DataChartShow(strPpsSql,'职工人数统计(职务)','职务',rbChart.itemindex);

end;
procedure TfrmSQL.Button3Click(Sender: TObject);
var strTTSql:string ;
begin
DataCharClear;
strTTSql:='SELECT count(TitleTechPost),TitleTechPost AS 职称 FROM tb_proinfor GROUP BY TitleTechPost';
DataChartShow(strTTSql,'职工人数统计(职称)','职称',rbChart.itemindex);
end;

procedure TfrmSQL.Button8Click(Sender: TObject);
var strFaceSql:string;
begin
 DataCharClear;
strFaceSql:='SELECT count(PoliticsFace),PoliticsFace AS 政治面貌 FROM tb_proinfor GROUP BY PoliticsFace';
DataChartShow(strFaceSql,'职工人数统计(政治面貌)','政治面貌',rbChart.itemindex);
end;

procedure TfrmSQL.Button7Click(Sender: TObject);
var strPlSql:string;
begin
DataCharClear;
strPlSql:='SELECT count(Paylevel),Paylevel AS 工资 FROM tb_proinfor GROUP BY Paylevel';
DataChartShow(strPlSql,'职工人数统计(工资等级)','工资',rbChart.itemindex);
end;

procedure TfrmSQL.Button9Click(Sender: TObject);
var iniCon:TiniFile;
begin
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);
with frmmain do
begin
if(iniCon.ReadString('sql','key','')<>'') then
begin
  ADOQuery.Active:=false;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Text:=iniCon.ReadString('sql','key','');
  ADOQuery.ExecSQL;
  ADOQuery.Active:=true;
  DbGrid.DataSource:=dsSearch;
end;
end;
end;

end.
