unit ComBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms,Dialogs, ComCtrls, ToolWin,
  Menus, ImgList,WinSkinData, StdCtrls, ExtCtrls, Grids,
  shellapi,BllPerson,DBGrids,ConfigTools;

type
  TForm1 = class(TForm)
    ImageList2: TImageList;
    MainMenu1: TMainMenu;
    miNew: TMenuItem;
    miRelease: TMenuItem;
    miPageset: TMenuItem;
    miPrintView: TMenuItem;
    miPrint: TMenuItem;
    N1: TMenuItem;
    miQuit: TMenuItem;
    miNotepad: TMenuItem;
    miCale: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    SkinData1: TSkinData;
    sBar: TStatusBar;
    D1: TMenuItem;
    miBackup: TMenuItem;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    ddlConType: TComboBox;
    txtQuery: TEdit;
    btnQuery: TButton;
    GroupBox3: TGroupBox;
    btnModify: TButton;
    btnSave: TButton;
    btnDelete: TButton;
    Splitter1: TSplitter;
    ddlPersonType: TComboBox;
    Panel2: TPanel;
    Panel5: TPanel;
    btnRelease: TButton;
    btnadd: TButton;
    btnLast: TButton;
    btnNext: TButton;
    btnPrev: TButton;
    btnFirst: TButton;
    lblRecCount: TLabel;
    GroupBox1: TGroupBox;
    btnAbout: TButton;
    btnExit: TButton;
    dgList: TDBGrid;
    C1: TMenuItem;
    procedure ButtonSet(Sender:TObject);
    procedure MenuItemSet (Sender:TObject);
    procedure RecordLeader(Sender:TObject);
    procedure FormCreate(Sender: TObject);
    procedure dgListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgListDblClick(Sender: TObject);

  private

  public
  end;

var
  Form1: TForm1;
  CtrlPerson :TBllPerson;
implementation

uses About,PersonInfo,Database;
{$R *.dfm}

procedure TForm1.ButtonSet(Sender:TObject);
var
    btnTemp     : TButton;
    PersonType  : string;
    ConType     : string;

begin
    btnTemp     := (Sender as TButton);
    PersonType  := ddlPersonType.Items.Strings[ddlPersonType.ItemIndex];
    ConType     := ddlConType.Items.Strings[ddlConType.ItemIndex];

    if(btnTemp = btnAbout)or(btnTemp = btnAdd) then
    TConfigTool.playsound(SOUND_MOVE) else TConfigTool.playsound(SOUND_PUSH);

    if      (btnTemp = btnDelete)  then CtrlPerson.DeletePersonInfo
    else if (btnTemp = btnAdd)     then begin DataAccess.Query.Active :=false ;PersoninfoForm.ShowModal; end
    else if (btnTemp = btnRelease) then dgList.DataSource := CtrlPerson.ListPersonInfo(Empty,ddlPersonType.Items.Strings[0],Empty)
    else if (btnTemp = btnExit)    then Application.Terminate
    else if (btnTemp = btnAbout)   then AboutBox.ShowModal
    else if (btnTemp = btnQuery)   then dgList.DataSource := CtrlPerson.ListPersonInfo(txtQuery.Text,PersonType,ConType)
    else if (btnTemp = btnModify)  then PersonInfoForm.ShowModal
    else if (btnTemp = btnSave)    then begin dgList.Options := dgList.Options - [dgRowSelect];
                                              dgList.Options := dgList.Options + [dgEditing] end;
end;
procedure TForm1.RecordLeader(Sender : TObject);
var
    btnText : string;
const
    RECORD_COUNT = '第[%d]条';
begin
    TConfigTool.playsound(SOUND_PUSH);
    btnText := (Sender as TButton).Caption;
    lblRecCount.Caption := Format(RECORD_COUNT,[CtrlPerson.RecordLeader(btnText)]);
end;
procedure TForm1.FormCreate(Sender: TObject);
const
    NOWDATE = ' 日期:';
begin
    CtrlPerson := TBllPerson.Create;
    sbar.Panels[1].Text := NOWDATE + DateToStr(Date);
    
end;
procedure TForm1.MenuItemSet (Sender:TObject);
var
    MItem : TMenuItem;
const
    CALC = 'calc.exe';
    NOTE = 'Notepad.exe';
    MDB  = 'lib\combox.mdb';
    BACK = 'backup\combox.bak';
begin
    MItem := (Sender as TMenuItem);
    TConfigTool.playsound(SOUND_PUSH);
    if      (MItem = miCale )   then ShellExecute(Handle,nil,CALC,nil,nil,SW_SHOWNORMAL)
    else if (MItem = miNotepad) then ShellExecute(Handle,nil,NOTE,nil,nil,SW_SHOWNORMAL)
    else if (MItem = miNew )    then begin DataAccess.Query.Active:= false; PersonInfoForm.ShowModal; end
    else if (MItem = miRelease) then dgList.DataSource := CtrlPerson.ListPersonInfo(Empty,ddlPersonType.Items.Strings[0],Empty)
    else if (MItem = miBackup)  then TConfigTool.myCopyFile(MDB,BACK)
    else if (MItem = miQuit ) then Application.Terminate;

end;

procedure TForm1.dgListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if key=46 then btnDelete.Click;
end;

procedure TForm1.dgListDblClick(Sender: TObject);
begin
    CtrlPerson.ID := 0;
    TConfigTool.playsound(SOUND_MOVE);
    PersonInfoForm.ShowModal;

end;

end.
