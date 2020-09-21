unit PIMIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, TeeProcs, TeEngine, Chart, DbChart, ComCtrls,
  Grids, DBGrids, Tabs, ExtCtrls, Buttons, ImgList, StdActns, ActnList,
  Menus, ToolWin, ADODB, DB, Provider,shellapi,IniFiles,jpeg,Series;

type
  TfrmMain = class(TForm)
    StatusBar: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton12: TToolButton;
    ToolButton19: TToolButton;
    ToolButton22: TToolButton;
    ToolButton3: TToolButton;
    ToolButton18: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton23: TToolButton;
    ToolButton7: TToolButton;
    ToolButton26: TToolButton;
    ToolButton25: TToolButton;
    ToolButton24: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    N5: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    FileCloseItem: TMenuItem;
    FileExitItem: TMenuItem;
    Edit1: TMenuItem;
    Z1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    Delete1: TMenuItem;
    N24: TMenuItem;
    SelectAll1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N20: TMenuItem;
    N13: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    Window1: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowMinimizeItem: TMenuItem;
    T1: TMenuItem;
    N14: TMenuItem;
    N25: TMenuItem;
    N10: TMenuItem;
    Help1: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    ActionList1: TActionList;
    FileNew1: TAction;
    EditUndo1: TEditUndo;
    FileOpen1: TAction;
    FileClose1: TWindowClose;
    FileSave1: TAction;
    FileSaveAs1: TAction;
    FileExit1: TAction;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrangeAll1: TWindowArrange;
    HelpAbout1: TAction;
    New: TAction;
    EditDelete1: TEditDelete;
    EditSelectAll1: TEditSelectAll;
    Update: TAction;
    Delete: TAction;
    First: TAction;
    Prev: TAction;
    Next: TAction;
    Last: TAction;
    ImageList1: TImageList;
    Timer: TTimer;
    SaveDlgData: TSaveDialog;
    Notebook: TNotebook;
    Splitter1: TSplitter;
    Label31: TLabel;
    Label32: TLabel;
    Panel1: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    Splitter4: TSplitter;
    tvInfo: TTreeView;
    Panel5: TPanel;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    TabSheet2: TTabSheet;
    Splitter2: TSplitter;
    lvSearch: TListView;
    Notebook2: TNotebook;
    Label2: TLabel;
    sbtnSearch: TSpeedButton;
    cbxSeaInfo: TComboBox;
    Panel2: TPanel;
    TabSet: TTabSet;
    ScrollBox1: TScrollBox;
    PanelSearch: TPanel;
    Splitter3: TSplitter;
    Splitter6: TSplitter;
    Panel3: TPanel;
    Label34: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cbxSeaIDC: TComboBox;
    txtSeaIDC: TEdit;
    txtSeaAge: TEdit;
    cbxSeaSex: TComboBox;
    cbxSeaNation: TComboBox;
    cbxSeaFace: TComboBox;
    cbxSeaDt: TComboBox;
    cbxSeaPrincipalship: TComboBox;
    cbxSeaKl: TComboBox;
    MemoSeaInfo: TMemo;
    Panel6: TPanel;
    DBGrid: TDBGrid;
    PanelSource: TPanel;
    DBChart: TDBChart;
    PanelInfo: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    txtName: TEdit;
    txtIdCard: TEdit;
    txtAge: TEdit;
    DBPhoto: TDBImage;
    dtBrithDay: TDateTimePicker;
    cbxNation: TComboBox;
    MemoNativePlace: TMemo;
    txtID: TEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cbxPoliticsFace: TComboBox;
    cbxTitleTechPost: TComboBox;
    cbxPrincipalship: TComboBox;
    cbxPaylevel: TComboBox;
    txtHeatlh: TEdit;
    dtMemberTime: TDateTimePicker;
    dtTongTime: TDateTimePicker;
    dtStartWorkTime: TDateTimePicker;
    cbxknowledge: TComboBox;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    MemoIShortation: TMemo;
    MemoIsPunish: TMemo;
    MemoComment: TMemo;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    txtPhone: TEdit;
    txtZip: TEdit;
    txtAddress: TEdit;
    cbxPhoneType: TComboBox;
    ADOTable: TADOTable;
    ADOCon: TADOConnection;
    ADOQuery: TADOQuery;
    dsSearch: TDataSource;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ADOQueryCount: TADOQuery;
    ToolButton27: TToolButton;
    ADOQueryPass: TADOQuery;
    cbxSex: TComboBox;
    ToolButton28: TToolButton;
    ToolButton30: TToolButton;
    PopMenuSQL: TPopupMenu;
    SQL1: TMenuItem;
    N26: TMenuItem;
    ADOTableTv: TADOTable;
    lbZhengzhi: TLabel;
    lbZhiwei: TLabel;
    lbGongZi: TLabel;
    lbShenTi: TLabel;
    lbZhiCheng: TLabel;
    lbXueLi: TLabel;
    ToolButton33: TToolButton;
    ImageList2: TImageList;
    GroupBox6: TGroupBox;
    rbSeaID: TRadioButton;
    rbSeaName: TRadioButton;
    rbSeaIdCard: TRadioButton;
    txtSeaDt: TEdit;
    lbOut: TLabel;
    Label43: TLabel;
    Label28: TLabel;
    Label44: TLabel;
    N27: TMenuItem;
    popMenuTv: TPopupMenu;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    adoChart: TADOQuery;
    Series1: TBarSeries;
    Series2: TPieSeries;
    N31: TMenuItem;
    N32: TMenuItem;
    odgPic: TOpenDialog;
    Rundo: TAction;
    procedure TabSetChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cbxPoliticsFaceChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure FileCloseItemClick(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure WindowCascadeItemClick(Sender: TObject);
    procedure WindowTileItemClick(Sender: TObject);
    procedure WindowMinimizeItemClick(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure ToolButton28Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure tvInfoClick(Sender: TObject);
    procedure sbtnSearchClick(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure FileExitItemClick(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure HelpAboutItemClick(Sender: TObject);
    procedure lvSearchClick(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure txtSeaIDCClick(Sender: TObject);
    procedure txtSeaAgeClick(Sender: TObject);
    procedure txtSeaDtClick(Sender: TObject);
    procedure cbxSeaDtChange(Sender: TObject);
    procedure Label43Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure DBChartDblClick(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure SQL1Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure DBPhotoDblClick(Sender: TObject);
    procedure FirstExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure LastExecute(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure RundoExecute(Sender: TObject);
    procedure FileSave1Execute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
  

  private
  nodeRecName,nodeRecID,nodeRecIDCard,nodeRecAll:TTreeNode;
  iniCon:TiniFile;
  strPath:string;

    { Private declarations }
  public

  strID:string;
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
    JPG:TJPEGImage;
  MS:TMemoryStream;
implementation
uses login,about,Sql,Proj, option;
{$R *.dfm}
//******************************************************************************

//******************************************************************************
procedure IsMDbCon(IsCon:boolean);
begin
with frmmain do
begin

if(IsCon) then
 begin
    ADOCon.open;
    ADOchart.Active:=true;
//    ADOchart.open;
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
    ADOchart.Active:=false;
    ADOchart.close;
    ADOQuery.Close;
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
//******************************************************************************
procedure QuitCom; //quit confiem
begin
with frmmain do
if(frmmain.Toolbutton27.Enabled)or(toolbutton18.Enabled) then
begin
with frmmain do
case Application.MessageBox('数据记录已经更改是否保存？','职工信息管理系统v1.0',
  MB_YESNOCANCEL + MB_ICONQUESTION) of
    ID_YES :
    begin
    adoquery.Edit;
    adoquery.UpdateRecord;

    if(frmmain.TabSet.TabIndex=1) then
    frmmain.adoquery.UpdateBatch;
    close;
    end;
    ID_NO : Application.Terminate;
    ID_CANCEL:
   end;

 end
else
close;
end;
//******************************************************************************
function RecMaxMin(IsMaxMin:boolean):string; //here is Max or Min count of 'ID'
var strMinCount,strMaxCount:string;
begin
with frmmain do
begin
  if(IsMaxMin) then
  begin
    ADOQueryCount.SQL.Text:='select max(ID) from tb_proinfor';
    ADOQueryCount.ExecSQL;
    ADOQueryCount.Active:=true;
    strMaxCount:=ADOQueryCount.Fields.Fields[0].AsString;
    Result:=strMaxCount;
    ADOQueryCount.Active:=false;
  end
  else
  begin
    ADOQueryCount.SQL.Text:='select min(ID) from tb_proinfor';
    ADOQueryCount.ExecSQL;
    ADOQueryCount.Active:=true;
    strMinCount:=ADOQueryCount.Fields.Fields[0].AsString;
    Result:=strMinCount;
    ADOQueryCount.Active:=false;
  end;
end;
end;
//******************************************************************************
procedure RecTreeViewBind;    //TreeView DataBind;
begin
with pimis.frmMain do
begin
  ADOTableTv.Active:=true;
  ADOTable.open;
  tvInfo.Items.Clear;
  nodeRecAll:=tvInfo.Items.Add(nil,'所有职工');
  tvInfo.Items.AddChild(nodeRecAll,'按编号升序');
  tvInfo.Items.AddChild(nodeRecAll,'按编号降序');
  tvInfo.Items.AddChild(nodeRecAll,'按身份证号');
  nodeRecName:=tvInfo.Items.Add(nil,'职工姓名');
  nodeRecID:=tvInfo.Items.Add(nil,'职工编号');
  nodeRecIdCard:=tvInfo.Items.Add(nil,'职工身份证');
  while not ADOTableTv.Eof  do
  begin
    tvInfo.Items.AddChild(nodeRecName,ADOTableTv.FieldByName('Name').AsString);
    tvInfo.Items.AddChild(nodeRecID,ADOTableTv.FieldByName('ID').AsString);
    tvInfo.Items.AddChild(nodeRecIdCard,ADOTableTv.FieldByName('IdCard').AsString);
    ADOTableTv.Next;
  end;
//  tvInfo.FullCollapse;
  //  tvInfo.FullExpand;
  tvInfo.Items.Item[0].Expand(true);
  ADOTableTv.Active:=false;
  ADOTableTv.Close;
end;
end;
//******************************************************************************

function RecClear:Boolean;  //if add a record,the function first run clear txt & memo
//var
//strCount:string;
begin
with Pimis.frmMain do
begin
  //  ADOQuery.Sql.text:='select max(ID) from tb_proinfor';
 //   ADOQuery.ExecSQL;
 //   strcount:=ADOQueryCount.Fields.Fields[0].AsString;
 //   if(txtID.Text<>'') then
    txtID.Text:=ADOQuery.Fields.Fields[0].AsString;
   // else
    txtID.Text:='自动编号';
    txtName.Clear;
    txtIdCard.Clear;
    cbxSex.Text:='男';
    txtage.Clear;
    cbxNation.text:='汉族';
    MemoNativePlace.Clear;
    cbxKnowledge.Text:='';
    cbxPayLevel.Text:='';
    cbxPoliticsFace.Text:='';
    cbxPrincipalship.Text:='';
    cbxTitleTechPost.Text:='';
    txtHeatlh.Text:='良好';
    MemoComment.Text:='无';
    MemoIShortation.Text:='无';
    MemoIsPunish.Text:='无';
    txtAddress.Clear;
    txtphone.Clear;
    txtZip.Clear;
end;
  Result:=true;
end;
//******************************************************************************
function RecBaseInfoVd:boolean; //BASE VD
begin
with Pimis.frmMain do
begin
  if(txtID.text<>'')and(txtName.Text<>'')and(txtIdCard.Text<>'')and(txtAge.Text<>'')and
  (cbxNation.Text<>'')and(MemoNativePlace.Text<>'') then
  Result:=true
  else
  Result:=false;
 end;
end;
//******************************************************************************
function RecKnowPoliVd:boolean;    //KPVD
begin
with Pimis.frmMain do
begin
 if(cbxKnowledge.Text<>'')and(cbxPaylevel.Text<>'')and
 (cbxPoliticsFace.Text<>'')and(cbxPrincipalship.Text<>'')and
 (cbxTitleTechPost.Text<>'')and(txtHeatlh.Text<>'')
 then
 Result:=true
 else
 Result:=false;
end;
end;
//******************************************************************************
function RecUpdate():boolean; //data update......
begin
with frmmain do
begin
  ADOQuery.Edit;
 // ADOQuery.FieldByName('ID').AsString:=txtID.Text;
  ADOQuery.FieldByName('IdCard').AsString:=txtIdCard.Text;
  ADOQuery.FieldByName('Name').AsString:=txtName.Text;
  ADOQuery.FieldByName('Sex').AsString:=cbxSex.Text;
  ADOQuery.FieldByName('birthDtime').AsDateTime:=dtBrithDay.Date;
  ADOQuery.FieldByName('Age').AsString:=txtAge.Text;
  ADOQuery.FieldByName('Nation').AsString:=cbxNation.Text;
  ADOQuery.FieldByName('NativePlace').AsString:=MemoNativePlace.Text;
  ADOQuery.FieldByName('PoliticsFace').AsString:=cbxPoliticsFace.Text;
  ADOQuery.FieldByName('TitleTechPost').AsString:=cbxTitleTechPost.Text;
  ADOQuery.FieldByName('principalship').AsString:=cbxPrincipalship.Text;
  ADOQuery.FieldByName('Paylevel').AsString:=cbxPaylevel.Text;
  ADOQuery.FieldByName('knowledge').AsString:=cbxknowledge.Text;
  ADOQuery.FieldByName('Heatlh').ASString:=txtHeatlh.Text;

  ADOQuery.FieldByName('birthDtime').AsString:=formatdatetime('yyyy-M-d',dtBrithDay.DateTime);
  ADOQuery.FieldByName('MemberTime').AsString:=formatdatetime('yyyy-M-d',dtMemberTime.DateTime);
  ADOQuery.FieldByName('TongTime').AsString:=formatdatetime('yyyy-M-d',dtTongTime.DateTime);
  ADOQuery.FieldByName('StartWorkTime').AsString:=formatdatetime('yyyy-M-d',dtStartWorkTime.DateTime);

  ADOQuery.FieldByName('IShortation').AsString:=MemoIShortation.Text;
  ADOQuery.FieldByName('IsPunish').AsString:=MemoIsPunish.Text;
  ADOQuery.FieldByName('Comment').AsString:=MemoComment.Text;
  ADOQuery.FieldByName('Phone').AsString:=cbxPhonetype.Text+txtPhone.Text;
  ADOQuery.FieldByName('Zip').AsString:=txtZip.Text;
  ADOQuery.FieldByName('Address').AsString:=txtAddress.Text;
  ADOQuery.Post;
Result:=true;
end;
end;
//******************************************************************************
procedure RecCon;//database record..... data show....
var
JPG:TJPEGImage;
MS:TMemoryStream;
begin
with Pimis.frmMain do
begin
ADOQuery.Active:=true;
    txtID.Text:=ADOQuery.Fields.Fields[0].AsString;
    txtName.Text:=ADOQuery.Fields.Fields[1].AsString;
    txtIdCard.Text:=ADOQuery.Fields.Fields[2].AsString;
    if ADOQuery.FieldByName('Sex').AsString='男' then
        cbxSex.Text:='男';
    if ADOQuery.FieldByName('Sex').AsString='女' then
        cbxSex.Text:='女';
  //  dtBrithDay.DateTime:=formatdatetime('yyyy-M-d',ADOQuery.Fields.Fields[4].AsDateTime);

  if(adoquery.FieldByName('Photo').Value<>'') then
  begin
   JPG:=TJPEGImage.Create ;
    MS:=TMemoryStream.Create ;
    TBlobField(ADOquery.FieldByName('photo')).SaveToStream(ms);
    ms.Position :=0;
    JPG.LoadFromStream(ms);
    dbphoto.Picture.Assign(JPG);
     ms.Free;
    jpg.Free;
  end
  else
  dbphoto.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'images/d.jpg');
    //******************************
    txtAge.Text:=ADOQuery.Fields.Fields[5].AsString;
    cbxNation.Text:=(ADOQuery.Fields.Fields[6].AsString);
    MemoNativePlace.Text:=ADOQuery.Fields.Fields[7].AsString;
    cbxPoliticsFace.Text:=ADOQuery.FieldByName('PoliticsFace').AsString;
 //   if(ADOQuery.FieldByName('MemberTime').AsString<>'') then
    dtMemberTime.DateTime:= ADOQuery.FieldByName('MemberTime').AsDateTime;

   // if(ADOQuery.FieldByName('TongTime').AsString<>'') then
    dtTongTime.DateTime:= ADOQuery.FieldByName('TongTime').AsDateTime;

    if(ADOQuery.FieldByName('StartWorkTime').AsString<>'') then
    dtStartWorkTime.DateTime:=ADOQuery.FieldByName('StartWorkTime').AsDateTime;

  //  if(ADOQuery.FieldByName('birthDtime').AsString<>'') then
    dtBrithDay.DateTime:=ADOQuery.FieldByName('birthDtime').AsDateTime;

    cbxknowledge.Text:=ADOQuery.FieldByName('Knowledge').AsString;
    cbxPrincipalship.Text:=ADOQuery.FieldByName('principalship').AsString;
    cbxTitleTechPost.Text:=ADOQuery.FieldByName('TitleTechPost').AsString;
    cbxPaylevel.Text:=ADOQuery.FieldByName('Paylevel').AsString;
    txtHeatlh.Text:=ADOQuery.FieldByName('Heatlh').AsString;
    MemoIShortation.Text:=ADOQuery.FieldByName('Ishortation').AsString;
    MemoIsPunish.Text:=ADOQuery.FieldByName('IsPunish').AsString;
    MemoComment.Text:=ADOQuery.FieldByName('comment').AsString;
    txtPhone.Text:=ADOQuery.FieldByName('Phone').AsString;
    txtZip.Text:=ADOQuery.FieldByName('Zip').AsString;
    txtAddress.Text:=ADOQuery.FieldByName('Address').AsString;
    lbZhengZhi.Caption:=ADOQuery.FieldByName('PoliticsFace').AsString;
    lbZhiWei.Caption:=ADOQuery.FieldByName('principalship').AsString;
    lbZhiCheng.Caption:=ADOQuery.FieldByName('TitleTechPost').AsString;
    lbGongZi.Caption:=ADOQuery.FieldByName('Paylevel').AsString;
    lbShenTi.Caption:=ADOQuery.FieldByName('Heatlh').AsString;
    lbXueLi.Caption:=ADOQuery.FieldByName('Knowledge').AsString;

end;
end;

//*****************************here is my database functions***********************
procedure TfrmMain.TabSetChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
case NewTab of
0:
  begin

    self.PanelInfo.height:=1103;
    ToolButton20.Enabled:=false;
    if not(ToolButton27.Enabled) then
    ToolButton26.Enabled:=true;
    if(ToolButton26.Enabled) then
    ToolButton25.Enabled:=true
    else
    ToolButton25.Enabled:=false;
    PanelInfo.Visible:=true;
    PanelSearch.Visible:=false;
    PanelSource.Visible:=false;
  end;
1:
  begin
    ToolButton25.Enabled:=false;
    ToolButton20.Enabled:=true;
    ToolButton26.Enabled:=false;
    PanelInfo.Visible:=false;
    PanelSearch.Visible:=true;
    PanelSource.Visible:=false;
  end;
2:
  begin
    ToolButton25.Enabled:=false;  
    ToolButton20.Enabled:=false;
    ToolButton26.Enabled:=false;
    PanelInfo.Visible:=false;
    PanelSearch.Visible:=false;
    PanelSource.Visible:=true;
  end;
  else
  begin

   case NewTab of
0:
  begin
    self.PanelInfo.height:=1103;
    PanelInfo.Visible:=true;
    PanelSearch.Visible:=false;
    PanelSource.Visible:=false;
  end;
1:
  begin
    PanelInfo.Visible:=false;
    PanelSearch.Visible:=true;
    PanelSource.Visible:=false;
  end;
2:
  begin
    ToolButton20.Enabled:=true;
    PanelInfo.Visible:=false;
    PanelSearch.Visible:=false;
    PanelSource.Visible:=true;
  end;
  else
  begin
   ToolButton20.Enabled:=true;
  end;
end;

end;
end;
end;
//******************************************************************************
procedure TfrmMain.cbxPoliticsFaceChange(Sender: TObject);
begin
if (cbxPoliticsFace.ItemIndex=0) or(cbxPoliticsFace.ItemIndex=3) then
 begin
    self.dtMemberTime.Enabled:=false;
    self.dtTongTime.Enabled:=false;
 end
 else
 begin
    self.dtMemberTime.Enabled:=true;
    self.dtTongTime.Enabled:=true;
 end;
 if cbxPoliticsFace.ItemIndex=1 then
    self.dtTongTime.Enabled:=false
 else
    self.dtTongTime.Enabled:=true;
 if cbxPoliticsFace.ItemIndex=2 then
    self.dtMemberTime.Enabled:=false
 else
    self.dtMemberTime.Enabled:=true;
end;
//******************************************************************************
procedure TfrmMain.FormCreate(Sender: TObject);
begin
try
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);
//ADOCon.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\Delphi项目\PIMISV1.0\Dbase\DB_DATA.MDB;Persist Security Info=False';
//*******************ini file control**********************
ADOCon.ConnectionString:=iniCon.ReadString('DbaseCon','DbCon','');       //图表
//***************here is ini file control*****************
if iniCon.ReadBool('DbaseCon','IsCon',true)<>false then
   IsMDBcon(false);

if iniCon.ReadBool('System','ShowLogin',true) then
ShowLoginForm;


self.PanelInfo.Height:=1103;
MemoSeaInfo.Clear;
except
//on ElnOutError do
MessageDlg('连接路径错误',mtError,[mbOk],0);
iniCon.WriteString('DbaseCon','DbCon','Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Dbase\DB_DATA.MDB;');
end;
//******************************************************************************

RecCon ;
RecTreeViewBind;
if(strID='Administrator') then
    StatusBar.Panels[1].Text:='超级用户:'+strID
else if(strID='') then
    statusbar.Panels[1].Text:=''
else
    StatusBar.Panels[1].Text:='普通用户:'+strID;
iniCon.Free;
end;
//******************************************************************************
procedure TfrmMain.TimerTimer(Sender: TObject);
begin
StatusBar.Panels[2].Text:='日期时间:'+DateToStr(date)+' '+TimeToStr(time);

end;

procedure TfrmMain.ToolButton15Click(Sender: TObject);
//var intCount:integer;
begin

  if(txtID.Text<>RecMaxMin(true)) then
  begin
    ADOQuery.SQL.Text:='select * from tb_proinfor where ID>:ID order by ID';
    ADOQuery.Parameters.ParamByName('ID').Value:=txtID.Text;
    ADOQuery.ExecSQL;
    RecCon;
  end
  else
  Application.MessageBox('记录指针已经到头','职工信息管理系统V1.0',MB_ICONASTERISK);
end;

procedure TfrmMain.ToolButton14Click(Sender: TObject);
begin
  if(txtID.Text<>RecMaxMin(false)) then
  begin
  ADOQuery.SQL.Text:='select * from tb_proinfor where ID<:ID order by ID desc';
  ADOQuery.Parameters.ParamByName('ID').Value:=txtID.Text;
  ADOQuery.ExecSQL;
  RecCon;
  end
  else
  Application.MessageBox('记录指针已经到头','职工信息管理系统V1.0',MB_ICONASTERISK);
end;

procedure TfrmMain.ToolButton13Click(Sender: TObject);
begin

ADOQuery.SQL.Text:='select * from tb_proinfor where ID=:MinID';
ADOQuery.Parameters.ParamByName('MinID').Value:=RecMaxMin(false);
ADOQuery.ExecSQL;
RecCon;
end;

procedure TfrmMain.ToolButton16Click(Sender: TObject);
begin
ADOQuery.SQL.Text:='select * from tb_proinfor where ID=:MaxID';
ADOQuery.Parameters.ParamByName('MaxID').Value:=RecMaxMin(true);
ADOQuery.ExecSQL;
RecCon;
end;

procedure TfrmMain.FileCloseItemClick(Sender: TObject);
begin
end;
//******************************************************************************
procedure TfrmMain.ToolButton24Click(Sender: TObject);
var strTemp:string;
begin
strTemp:='('+ADOQuery.Fields.Fields[0].AsString+')';
  if MessageDlg ('确定删除  '+pchar(strTemp)+' 这条记录吗?？',mtConfirmation,[mbYes, mbNo], 0)= mrYes then
  begin
  if not(ADOQuery.Eof) then
  begin
    ADOQuery.Delete;
    ADOQuery.SQL.Text:='select * from tb_proinfor order by ID';
    ADOQuery.ExecSQL;
    RecCon;
    RecTreeViewBind;
    ADOQuery.Next;
  end
  else
    txtID.Text:='10001';
  end;
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
begin
if not(Toolbutton26.Enabled) and (self.TabSet.TabIndex<>1) then
begin
if(RecBaseInfoVd)and(RecKnowPoliVd) then
begin;
  ADOQuery.Append;
  RecUpdate;
 // ADOQueryCount.Active:=false;
 // ADOQueryCount.Close;
//  RecTreeViewBind;
  self.TabSet.Enabled:=true;
  ToolButton26.Enabled:=true;
end
else
begin
  if not(RecBaseInfoVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','基本信息',MB_ICONWARNING)
  else if not(RecKnowPoliVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','学历背景',MB_ICONWARNING)
end;
end;

end;
procedure TfrmMain.WindowCascadeItemClick(Sender: TObject);
begin
self.WindowState:=wsNormal;

end;

procedure TfrmMain.WindowTileItemClick(Sender: TObject);
begin
self.WindowState:=wsMaximized;

end;

procedure TfrmMain.WindowMinimizeItemClick(Sender: TObject);
begin
self.WindowState:=wsMinimized;
end;

procedure TfrmMain.ToolButton8Click(Sender: TObject);
begin
self.WindowState:=wsMaximized;
end;

procedure TfrmMain.ToolButton10Click(Sender: TObject);
begin
self.WindowState:=wsNormal;
end;

procedure TfrmMain.ToolButton11Click(Sender: TObject);
begin
self.WindowState:=wsMinimized;
end;

procedure TfrmMain.N26Click(Sender: TObject);
begin
Toolbutton26.Enabled:=true;
MainMenu1.Items.Items[3].Items[1].Enabled:=false;
Tabset.Enabled:=true;
ADOQuery.First;
RecCon;
end;

procedure TfrmMain.ToolButton27Click(Sender: TObject);
begin
ToolButton26.Enabled:=true;
ToolButton27.Enabled:=false;
ToolButton25.Enabled:=true;
RecCon;
Statusbar.Panels[0].Text:='';
self.TabSet.Enabled:=true;
ADOQueryCount.Active:=false;
end;

procedure TfrmMain.N7Click(Sender: TObject);
begin
if(CoolBar1.Height=56) then
  begin

  CoolBar1.Height:=26;
  Toolbar2.Visible:=false;
  end
else
  begin
  CoolBar1.Height:=56;
  ToolBar2.Visible:=true;
  end;
end;

procedure TfrmMain.N8Click(Sender: TObject);
begin
if(statusbar.Visible) then
   begin
   statusbar.Visible:=false;
   end
else
   begin
   statusbar.Visible:=true;
   end;
end;

procedure TfrmMain.N9Click(Sender: TObject);
begin
if(Panel1.Visible) then
   begin
   Panel1.Visible:=false;
   ToolButton28.down:=false;
   //MainMenu1.Items.items[2].Items[1].Checked:=false;
   end
else
   begin
   Panel1.Visible:=true;
   ToolButton28.down:=true;
   //MainMenu1.Items.items[2].Items[1].Checked:=true;
   end;

end;

procedure TfrmMain.ToolButton28Click(Sender: TObject);
begin
if( self.Panel1.Visible) then
    begin
    ToolButton28.down:=false;
    self.Panel1.Visible:=false;
    end
else
    begin
    ToolButton28.down:=true;
    self.Panel1.Visible:=true;
    end;
end;

procedure TfrmMain.N14Click(Sender: TObject);
begin
ShellExecute(Handle,nil,'notepad.exe',nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMain.N25Click(Sender: TObject);
begin
ShellExecute(Handle,nil,'calc.exe',nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMain.tvInfoClick(Sender: TObject);
var intCount:integer;
begin
ToolButton27.Enabled:=false;
//if self.TabSet.TabIndex<>2 then
ToolButton26.Enabled:=true;
ToolButton25.Enabled:=true;
if(self.nodeRecAll.Item[0].Selected) then
    begin
      ADOQuery.SQL.Text:='select * from tb_proinfor order by ID';
      ADOQuery.ExecSQL;
      RecCon;
    end
else  if(self.nodeRecAll.Item[1].Selected) then
   Begin
      ADOQuery.SQL.Text:='select * from tb_proinfor order by ID desc';
      ADOQuery.ExecSQL;
      RecCon;
   end
else if(self.nodeRecAll.Item[2].Selected) then
   begin
      ADOQuery.SQL.Text:='select * from tb_proinfor order by IdCard';
      ADOQuery.ExecSQL;
      RecCon;
   end
else
   begin
      ADOQuery.SQL.Text:='select * from tb_proinfor order by ID';
      ADOQuery.ExecSQL;
      RecCon;
   end;
for intCount:=0 to self.nodeRecID.Count-1 do
begin
    if self.nodeRecID.Item[intCount].Selected then
    begin
      ADOQuery.SQL.Text:='select * from tb_proinfor where ID=:ID';
      ADOQuery.Parameters.ParamByName('ID').Value:=nodeRecID.Item[intCount].Text;
      ADOQuery.ExecSQL;
      RecCon;
    end
    else if self.nodeRecName.Item[intCount].Selected then
    begin
      ADOQuery.SQL.Text:='select * from tb_proinfor where Name=:Name';
      ADOQuery.Parameters.ParamByName('Name').Value:=nodeRecName.Item[intCount].Text;
      ADOQuery.ExecSQL;
      RecCon;
    end
    else if self.nodeRecIdCard.Item[intCount].Selected then
    begin
      ADOQuery.SQL.Text:='select * from tb_proinfor where IdCard=:IdCard';
      ADOQuery.Parameters.ParamByName('IdCard').Value:=nodeRecIdCard.Item[intCount].Text;
      ADOQuery.ExecSQL;
      RecCon;
    end

end;

end;

procedure TfrmMain.sbtnSearchClick(Sender: TObject);
var i:integer;
begin
if(rbSeaID.Checked) then
begin
  lvSearch.Items.Clear;
  if(cbxSeaInfo.Text<>'') then
  begin
     ADOQuery.SQL.Text:='select * from tb_proinfor where ID like :ID';     ADOQuery.Parameters.ParamByName('ID').Value:='%'+cbxSeaInfo.Text+'%';
  end
  else
  begin
    ADOQuery.SQL.Text:='select * from tb_proinfor order by ID';
//     ADOQuery.Parameters.ParamByName('ID').Value:='%'+cbxSeaInfo.Text+'%';
  end;
end
//-----------------------------------------------
else if(rbSeaName.Checked) then
begin
  lvSearch.Items.Clear;
  if(cbxSeaInfo.Text<>'') then
  begin
    ADOQuery.SQL.Text:='select * from tb_proinfor where Name like :Name';    ADOQuery.Parameters.ParamByName('Name').Value:='%'+cbxSeaInfo.Text+'%';
  end
  else
  ADOQuery.SQL.Text:='select * from tb_proinfor order by ID desc';
end
//-----------------------------------------------
else if(rbSeaIdCard.Checked) then
begin
  lvSearch.Items.Clear;
  if(cbxSeaInfo.Text<>'') then
  begin
     ADOQuery.SQL.Text:='select * from tb_proinfor where IdCard like :IdCard';     ADOQuery.Parameters.ParamByName('IdCard').Value:='%'+cbxSeaInfo.Text+'%';
  end
  else
  ADOQuery.SQL.Text:='select * from tb_proinfor order by IdCard';
end
//-----------------------------------------------
else
ADOQuery.SQL.Text:='select * from tb_proinfor order by ID';
//ADOquery.Active:=true;
//ADOQuery.ExecSQL;
lvSearch.Columns.Clear;
ADOQuery.Active:=true;
 for i:=0 to 4 do
  begin
    with lvSearch.Columns.Add do
    begin
    if i=0 then
    Caption:='职工编号'
    else
     Caption:=ADOQuery.Fields[i].DisplayLabel;
    end
  end;
  lvSearch.Columns.Items[0].Width:=60;
  lvSearch.Columns.Items[2].Width:=120;
  lvSearch.Columns.Items[3].Width:=40;
  lvSearch.Columns.Items[4].Width:=75;
  lvSearch.Columns.Items[1].Caption:='姓名';
  lvSearch.Columns.Items[2].Caption:='身份证号';
  lvSearch.Columns.Items[3].Caption:='性别';
  lvSearch.Columns.Items[4].Caption:='出生年月';
while not(ADOQuery.Eof) do
begin
    with lvSearch.Items.Add do
    begin
      Caption:=ADOQuery.FieldByName('ID').AsString;
      for i:=1 to 4 do
        SubItems.Add(ADOQuery.Fields[i].AsString);
    end;
  ADOQuery.Next;
end;

if cbxSeaInfo.Text<>'' then
  cbxSeaInfo.Items.Add(cbxSeaInfo.Text);
end;

procedure TfrmMain.ToolButton25Click(Sender: TObject);
begin

if(RecBaseInfoVd)and(RecKnowPoliVd) then
begin;
  RecUpdate;
  RecTreeViewBind;
  self.TabSet.Enabled:=true;
  ToolButton26.Enabled:=true;
end
else
begin
  if not(RecBaseInfoVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','基本信息',MB_ICONWARNING)
  else if not(RecKnowPoliVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','学历背景',MB_ICONWARNING)
end;

end;

procedure TfrmMain.FileExitItemClick(Sender: TObject);
begin
QuitCom;
end;

procedure TfrmMain.ToolButton33Click(Sender: TObject);
begin
QuitCom;
end;

procedure TfrmMain.HelpAboutItemClick(Sender: TObject);
begin
frmAbout.ShowModal;
end;

procedure TfrmMain.lvSearchClick(Sender: TObject);
var ic:integer;
begin
toolbutton27.enabled:=false;
toolbutton26.enabled:=true;
for ic:=0 to lvSearch.Items.Count-1 do
begin
  if(lvSearch.Items.Item[ic].Selected) then
     begin
     ADOQuery.SQL.Text:='select * from tb_proinfor where ID=:ID';
     ADOQuery.Parameters.ParamByName('ID').Value:=lvSearch.Items.Item[ic].Caption;
     ADOQuery.ExecSQL;
     RecCon;
  end;
end;
end;

procedure TfrmMain.ToolButton20Click(Sender: TObject);
var
strSQL:string;
begin
try
ADOQuery.Active:=false;
ADOQuery.SQL.Clear;
lbOUt.Caption:='查询结果：';
strSQL:='select * from tb_proinfor ';
if(txtSeaIDC.Text<>'') then
  strSQL:=strSQL+' where '+txtSeaIDC.Text+''
else
  strSQL:=strSQL+' where ID>0';
//-------------------------------------------
if(cbxSeaSex.ItemIndex<>0) then
  strSQL:=strSQL+' and  Sex='''+cbxSeaSex.Text+'''' ;
//-------------------------------------------
if(txtSeaAge.Text<>'') then
  strSQL:=strSQL+' and '+txtSeaAge.Text+'';
//-------------------------------------------
if(cbxSeaNation.ItemIndex<>0) then
  strSQL:=strSQL+' and Nation='''+cbxSeaNation.Text+'''' ;

if(cbxSeaDt.ItemIndex<>0 )and(self.txtSeaDt.Text<>'')then
  strSQL:=strSQL+' and '+txtSeadt.Text+'';

if(self.cbxSeaPrincipalship.ItemIndex<>0) then
   strSQL:=strSQL+' and principalship='''+self.cbxSeaPrincipalship.Text+'''';

if(self.cbxSeaFace.ItemIndex<>0) then
   strSQL:=strSQL+' and PoliticsFace='''+self.cbxSeaFace.Text+'''';

if(self.cbxSeaKl.ItemIndex<>0) then
   strSQL:=strSQL+' and knowledge='''+self.cbxSeaKl.Text+'''';   
//-------------------------------------------


//-------------------------------------------
//*************************************************************************

ADOQuery.SQL.Text:=strSQL;
ADOQuery.ExecSQL;
ADOQuery.Active:=true;
DbGrid.DataSource:=self.dsSearch;
lbOUt.Caption:=lbOUt.Caption+self.cbxSeaIDC.Text+':'+frmsql.txtIdcValue.Text+' 性别:'+cbxSeaSex.Text;
lbOUt.Caption:=lbOUt.Caption+' 年龄:'+frmsql.txtSeaAge.Text+' 民族:'+cbxSeaNation.Text;
lbOUt.Caption:=lbOUt.Caption+' 日期'+formatdatetime('yyyy-M-d',frmsql.dt.datetime)+' 政治面貌:'+cbxSeaFace.Text;
lbOUt.Caption:=lbOUt.Caption+' 职务:'+cbxSeaPrincipalship.Text+'  学历:'+cbxSeaKl.Text;

MemoSeaInfo.Text:=strSQL;
except
//Application.MessageBox('SQL语句错误','出错了',MB_IConERROR);
end;
end;

procedure TfrmMain.txtSeaIDCClick(Sender: TObject);
begin
frmsql.PageControl1.TabIndex:=0;
frmSQL.lbSeaIDC.Caption:=self.cbxSeaIDC.Text;
frmSql.lvDtTypes.Caption:=self.cbxSeaDt.Text;
frmSQL.ShowModal;
end;

procedure TfrmMain.txtSeaAgeClick(Sender: TObject);
begin
frmsql.PageControl1.TabIndex:=0;
frmSQL.lbSeaIDC.Caption:=self.cbxSeaIDC.Text;
frmSql.lvDtTypes.Caption:=self.cbxSeaDt.Text;
frmSqL.ShowModal;
end;

procedure TfrmMain.txtSeaDtClick(Sender: TObject);
begin
frmsql.PageControl1.TabIndex:=0;
frmSQL.lbSeaIDC.Caption:=self.cbxSeaIDC.Text;
frmSql.lvDtTypes.Caption:=self.cbxSeaDt.Text;
frmsql.ShowModal;
end;

procedure TfrmMain.cbxSeaDtChange(Sender: TObject);
begin
if(self.cbxSeaDt.ItemIndex<>0) then
   self.txtSeaDt.Enabled:=true
else
   self.txtSeaDt.Enabled:=false;
end;

procedure TfrmMain.Label43Click(Sender: TObject);
begin
proj.frmProject.ShowModal;
end;

procedure TfrmMain.N27Click(Sender: TObject);
begin
proj.frmProject.ShowModal;
end;

procedure TfrmMain.N28Click(Sender: TObject);
begin
self.tvInfo.FullExpand;
end;

procedure TfrmMain.N29Click(Sender: TObject);
begin
self.tvInfo.FullCollapse;
end;

procedure TfrmMain.N30Click(Sender: TObject);
begin
RecTreeViewBind;
end;



procedure TfrmMain.DBChartDblClick(Sender: TObject);
begin
frmsql.PageControl1.TabIndex:=2;
frmsql.ShowModal;

end;

procedure TfrmMain.N31Click(Sender: TObject);
begin
frmsql.PageControl1.TabIndex:=1;
frmsql.ShowModal;
end;

procedure TfrmMain.SQL1Click(Sender: TObject);
begin

iniCon:=Tinifile.Create(strPath);
iniCon.WriteString('Sql','key',self.MemoSeaInfo.Text);

end;

procedure TfrmMain.N32Click(Sender: TObject);
begin
strPath:=ExtractFilePath(paramstr(0))+'config.ini';
iniCon:=Tinifile.Create(strPath);
if(iniCon.ReadString('sql','key','')<>'') then
begin
  ADOQuery.Active:=false;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Text:=iniCon.ReadString('sql','key','');
  ADOQuery.ExecSQL;
  ADOQuery.Active:=true;
  DbGrid.DataSource:=self.dsSearch;
end;
end;
procedure TfrmMain.N10Click(Sender: TObject);
begin
frmOption.ShowModal;
end;

procedure TfrmMain.DBPhotoDblClick(Sender: TObject);


begin
odgpic.Execute;
if odgpic.FileName<>'' then
begin
 dbphoto.Picture.LoadFromFile(odgpic.FileName);
  JPG:=TJPEGImage.Create;
  MS:=TMemoryStream.Create ;
  JPG.Assign(dbphoto.Picture.Graphic);
  JpG.SaveToStream(MS);
  MS.Position :=0;
  AdOquery.edit;
  TBlobField(ADOQuery.FieldByName('Photo')).LoadFromStream(ms);
  ADOquery.updaterecord ;

end;
  MS.Free ;
  jpg.Free ;
end;


procedure TfrmMain.FirstExecute(Sender: TObject);
begin
ADOQuery.SQL.Text:='select * from tb_proinfor where ID=:MinID';
ADOQuery.Parameters.ParamByName('MinID').Value:=RecMaxMin(false);
ADOQuery.ExecSQL;
RecCon;
end;

procedure TfrmMain.PrevExecute(Sender: TObject);
begin
  if(txtID.Text<>RecMaxMin(false)) then
  begin
  ADOQuery.SQL.Text:='select * from tb_proinfor where ID<:ID order by ID desc';
  ADOQuery.Parameters.ParamByName('ID').Value:=txtID.Text;
  ADOQuery.ExecSQL;
  RecCon;
  end
  else
  Application.MessageBox('记录指针已经到头','职工信息管理系统V1.0',MB_ICONASTERISK);

end;

procedure TfrmMain.NextExecute(Sender: TObject);
begin
  if(txtID.Text<>RecMaxMin(true)) then
  begin
    ADOQuery.SQL.Text:='select * from tb_proinfor where ID>:ID order by ID';
    ADOQuery.Parameters.ParamByName('ID').Value:=txtID.Text;
    ADOQuery.ExecSQL;
    RecCon;
  end
  else
  Application.MessageBox('记录指针已经到头','职工信息管理系统V1.0',MB_ICONASTERISK);
end;

procedure TfrmMain.LastExecute(Sender: TObject);
begin
ADOQuery.SQL.Text:='select * from tb_proinfor where ID=:MaxID';
ADOQuery.Parameters.ParamByName('MaxID').Value:=RecMaxMin(true);
ADOQuery.ExecSQL;
RecCon;
end;

procedure TfrmMain.UpdateExecute(Sender: TObject);
begin
if(RecBaseInfoVd)and(RecKnowPoliVd) then
begin;
  RecUpdate;
  RecTreeViewBind;
  self.TabSet.Enabled:=true;
  ToolButton26.Enabled:=true;
end
else
begin
  if not(RecBaseInfoVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','基本信息',MB_ICONWARNING)
  else if not(RecKnowPoliVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','学历背景',MB_ICONWARNING)
end;
end;

procedure TfrmMain.NewExecute(Sender: TObject);
begin
ADOQueryCount.Active:=false;
RecClear;
 //dbphoto.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'images/d.jpg');
ToolButton26.Enabled:=false;
ToolButton27.Enabled:=true;
ToolButton25.Enabled:=false;

StatusBar.Panels[0].Text:='资料填写完毕,点保存(cirl+s)按钮即可，如想撤销点撤销按钮';
end;

procedure TfrmMain.RundoExecute(Sender: TObject);
begin
ToolButton26.Enabled:=true;
ToolButton27.Enabled:=false;
ToolButton25.Enabled:=true;
RecCon;
Statusbar.Panels[0].Text:='';
self.TabSet.Enabled:=true;
ADOQueryCount.Active:=false;
end;

procedure TfrmMain.FileSave1Execute(Sender: TObject);
begin
if not(Toolbutton26.Enabled) and (self.TabSet.TabIndex=0) then
begin
if(RecBaseInfoVd)and(RecKnowPoliVd) then
begin;
  ADOQuery.Append;
  RecUpdate;
 // ADOQueryCount.Active:=false;
 // ADOQueryCount.Close;
//  RecTreeViewBind;
  self.TabSet.Enabled:=true;
  ToolButton26.Enabled:=true;
end
else
begin
  if not(RecBaseInfoVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','基本信息',MB_ICONWARNING)
  else if not(RecKnowPoliVd) then
    Application.MessageBox('数据录入不完整,请把数据录入完整','学历背景',MB_ICONWARNING)
end;
end;
if(self.TabSet.TabIndex=1) then
adoquery.UpdateBatch;
end;

procedure TfrmMain.DeleteExecute(Sender: TObject);
 var strTemp:string;
begin
strTemp:='('+ADOQuery.Fields.Fields[0].AsString+')';
  if MessageDlg ('确定删除  '+pchar(strTemp)+' 这条记录吗?？',mtConfirmation,[mbYes, mbNo], 0)= mrYes then
  begin
  if not(ADOQuery.Eof) then
  begin
    ADOQuery.Delete;
    ADOQuery.SQL.Text:='select * from tb_proinfor order by ID';
    ADOQuery.ExecSQL;
    RecCon;
    RecTreeViewBind;
    ADOQuery.Next;
  end
  else
    txtID.Text:='10001';
  end;
end;

procedure TfrmMain.N23Click(Sender: TObject);
begin
shellExecute(handle,'open',PChar('www.cs-aspx.net'),'','',sw_Show);

end;

procedure TfrmMain.N22Click(Sender: TObject);
begin
shellExecute(handle,'open',PChar('mailto:wjcking@sohu.com'),'','',sw_Show); 

end;

end.



