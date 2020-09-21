unit PersonInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms,Dialogs, StdCtrls,
  ExtCtrls,  ConfigTools,Shellapi,ComCtrls,
  Person,BllPerson,Database;

type
  TPersonInfoForm = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    txtPhone: TEdit;
    txtHP: TEdit;
    ddlSex: TComboBox;
    txtName: TEdit;
    txtComPhone: TEdit;
    txtQQ: TEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    txtAddress: TEdit;
    txtWebSite: TEdit;
    txtMail: TEdit;
    btnUrl: TButton;
    btnMail: TButton;
    btnCancel: TButton;
    btnOK: TButton;
    ddlPersonType: TComboBox;
    Label2: TLabel;
    procedure ButtonSet(Sender:TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
  procedure ClearTextBox;
  end;

var
  PersonInfoForm: TPersonInfoForm;
  CtrlPerson    : TBllPerson;
const
     ZERO = 0;
implementation

{$R *.dfm}
procedure  TPersonInfoForm.ClearTextBox;
var
    i:integer;
begin
    for i:=0 to ComponentCount-1 Do
    begin
           if Components[i] is TEdit then
              (Components[i]as TEdit).Text := Empty;

    end;
        txtName.SetFocus;
end;

procedure TPersonInfoForm.ButtonSet(Sender:TObject);
var
    btnTemp : TButton;
begin
    TConfigTool.playsound( SOUND_PUSH );
    btnTemp := (Sender as TButton);
    if      (btnTemp = btnCancel ) then Close
    else if (btnTemp = btnUrl    ) then ShellExecute(Handle,nil,Pchar(txtWebSite.Text),nil,nil,SW_SHOWNORMAL)
    else if (btnTemp = btnMail   ) then ShellExecute(Handle,nil,Pchar('Mailto:'+txtMail.Text),nil,nil,SW_SHOWNORMAL);

end;

procedure TPersonInfoForm.EditKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then  btnOK.Click;
    if key = #27 then  close;
end;

procedure TPersonInfoForm.btnOKClick(Sender: TObject);
var
    PerInfo  : TPerson;
    Sex         : string;
    PersonType  : string;
begin
    TConfigTool.playsound( SOUND_PUSH );
    Sex := ddlSex.Items.Strings[ddlSex.ItemIndex];
    PersonType := ddlPersonType.Items.Strings[ddlPersonType.ItemIndex];
    PerInfo := TPerson.Create(txtName.Text,Sex,txtHP.Text,txtComPhone.Text,
                              txtQQ.Text,txtPhone.Text,txtWebSite.Text,
                              txtMail.Text,txtAddress.Text,PersonType);

    if not(DataAccess.Query.Active) then
    begin
        CtrlPerson.InsertPersonInfo(PerInfo);
        ClearTextBox;
    end else begin
        CtrlPerson.UpdatePersonInfo(CtrlPerson.ID,PerInfo);
    end;
end;
procedure TPersonInfoForm.FormCreate(Sender: TObject);
begin
    KeyPreview  := true;
    CtrlPerson  := TBllPerson.Create;
end;

procedure TPersonInfoForm.FormActivate(Sender: TObject);
var
    PerInfo  : TPerson;
const
    BTN_TITLE_MODIFY = '¸üÐÂ';
    BTN_TITLE_NEW = 'Ìí¼Ó';
begin

    if (DataAccess.Query.Active) then
    begin
        btnOK.Caption       := BTN_TITLE_MODIFY;
        PerInfo             := CtrlPerson.GetPersonInfo(CtrlPerson.ID);
        txtName.Text        := PerInfo.Name;
        ddlSex.Text         := perInfo.Sex;
        ddlPersonType.Text  := Perinfo.PersonType;
        txtHP.Text          := PerInfo.HP;
        txtPhone.Text       := PerInfo.Phone;
        txtQQ.Text          := PerInfo.QQ;
        txtComPhone.Text    := PerInfo.ComPhone;
        txtWebSite.Text     := PerInfo.WebSite;
        txtMail.Text        := PerInfo.Mail;
        txtAddress.Text     := PerInfo.Address;
        
    end else begin
        btnOK.Caption :=  BTN_TITLE_NEW ;
        clearTextBox;
    end;
end;

end.
