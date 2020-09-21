unit DALPerson;

interface

uses
    Windows, Messages, SysUtils, Variants,
    Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, ComCtrls, ExtCtrls,
    Database, DB, ADODB , Person, IDAL,ConfigTools;

type
    TDALPerson = class(TDataModule,IPersonInfo)

    private

    public

    function  ListPersonInfo(KeyWords:string;const PersonType:string;const ConType:string):TDataSource;
    function  GetPersonInfo(ID:Integer):TPerson;

    procedure InsertPersonInfo(Perinfo:TPerson);
    procedure UpdatePersonInfo(ID:Integer;Perinfo:TPerson);
    procedure DeletePersonInfo;

    constructor Create;
    end;
const
    RECORD_ALL                 = 'È«²¿¼ÇÂ¼';
    PERSON_SELECT              = 'SELECT * FROM PersonInfo WHERE ID = %s';
    PERSON_SELECT_ALL          = 'SELECT * FROM PersonInfo ORDER BY ID DESC';
    PERSON_KEY_PERSONTYPE_NULL = 'SELECT * FROM PersonInfo WHERE PersonType = ''%s''  ORDER BY ID DESC';
    PERSON_KEY_CONTYPE         = 'SELECT * FROM PersonInfo WHERE %s = ''%s'' ORDER BY ID DESC';
    PERSON_KEY_ALL             = 'SELECT * FROM PersonInfo WHERE PersonType = ''%s'' AND %s = ''%s'' ORDER BY ID DESC';

    PERSON_INSERT              = 'INSERT INTO PersonInfo(Name,Sex,HP,Phone,ComPhone,QQ,WebSite,Mail,Address,PersonType) VALUES(:Name,:Sex,:HP,:Phone,:ComPhone,:QQ,:WebSite,:Mail,:Address,:PersonType)';
    PERSON_UPDATE              = 'UPDATE PersonInfo SET Name=:Name,Sex=:Sex,HP=:HP,Phone=:Phone,ComPhone=:ComPhone,QQ=:QQ,WebSite=:WebSite,Mail=:Mail,Address=:Address,PersonType=:PersonType WHERE ID=:ID';


    PERSON_ID           = 'ID';
    PERSON_NAME         = 'Name';
    PERSON_SEX          = 'Sex';
    PERSON_HP           = 'HP';
    PERSON_PHONE        = 'Phone';
    PERSON_COMPHONE     = 'ComPhone';
    PERSON_QQ           = 'QQ';
    PERSON_WEBSITE      = 'WebSite';
    PERSON_MAIL         = 'Mail';
    PERSON_ADDRESS      = 'Address';
    PERSON_PERSONTYPE   = 'PersonType';
implementation
constructor TDALPerson.Create;
begin
   // Inherited Create(self);
  //  Inherited Create(AOwner:TCommpent);
end;

function TDALPerson.ListPersonInfo(KeyWords:string;const PersonType:string;const ConType:string):TDataSource;
var
    sqlQuery : string;
begin

    if      ( KeyWords = Empty ) and (PersonType = RECORD_ALL)  then sqlQuery := PERSON_SELECT_ALL
    else if ( KeyWords = Empty ) and (PersonType <> RECORD_ALL) then sqlQuery := Format(PERSON_KEY_PERSONTYPE_NULL,[PersonType])
    else if ( KeyWords <> Empty) and (PersonType = RECORD_ALL)  then sqlQuery := Format(PERSON_KEY_CONTYPE,[ConType,KeyWords])
    else if ( KeyWords <> Empty) and (PersonType <> RECORD_ALL) then sqlQuery := Format(PERSON_KEY_ALL,[PersonType,ConType,KeyWords])
    else sqlQuery := PERSON_SELECT_ALL;
    Result  := DataAccess.ExcuteSource(sqlQuery)
end;

function TDALPerson.GetPersonInfo(ID:Integer):TPerson;
var
    PerInfo : TPerson;
begin
     
    with (DataAccess.Query) do begin if(Active) then
    begin
        PerInfo := TPerson.Create(
        FieldByName(DALPerson.PERSON_NAME  ).AsString,
        FieldByName(DALPerson.PERSON_SEX   ).AsString,
        FieldByName(DALPerson.PERSON_HP    ).AsString,
        FieldByName(DALPerson.PERSON_PHONE ).AsString,
        FieldByName(DALPerson.PERSON_COMPHONE).AsString,
        FieldByName(DALPerson.PERSON_QQ).AsString,
        FieldByName(DALPerson.PERSON_WEBSITE).AsString,
        FieldByName(DALPerson.PERSON_MAIL).AsString,
        FieldByName(DALPerson.PERSON_ADDRESS).AsString,
        FieldByName(DALPerson.PERSON_PERSONTYPE).AsString
        );
            Result := PerInfo ;
    end else
            Result := nil ;
    end;
end;

procedure TDALPerson.InsertPersonInfo(Perinfo:TPerson);
begin

  with (DataAccess.ExcuteQuery) do begin
        Active := false;
        Close;
        SQL.Clear;
        SQL.Add(PERSON_INSERT);
        Parameters.ParamByName(DALPerson.PERSON_NAME).Value         := Perinfo.Name;
        Parameters.ParamByName(DALPerson.PERSON_SEX).Value          := Perinfo.Sex;
        Parameters.ParamByName(DALPerson.PERSON_HP).Value           := Perinfo.HP;
        Parameters.ParamByName(DALPerson.PERSON_PHONE).Value        := Perinfo.Phone;
        Parameters.ParamByName(DALPerson.PERSON_COMPHONE).Value     := Perinfo.ComPhone;
        Parameters.ParamByName(DALPerson.PERSON_QQ).Value           := Perinfo.QQ;
        Parameters.ParamByName(DALPerson.PERSON_WEBSITE).Value      := Perinfo.WebSite;
        Parameters.ParamByName(DALPerson.PERSON_MAIL).Value         := Perinfo.Mail;
        Parameters.ParamByName(DALPerson.PERSON_ADDRESS).Value      := Perinfo.Address;
        Parameters.ParamByName(DALPerson.PERSON_PERSONTYPE).Value   := Perinfo.PersonType;
        ExecSQL;
    end;
end;
procedure TDALPerson.UpdatePersonInfo(ID:Integer;Perinfo:TPerson);
begin
  with (DataAccess.ExcuteQuery) do begin
        Active := false;
        Close;
        SQL.Clear;
        SQL.Add(PERSON_UPDATE);
        Parameters.ParamByName(DALPerson.PERSON_ID).Value           := ID;
        Parameters.ParamByName(DALPerson.PERSON_NAME).Value         := Perinfo.Name;
        Parameters.ParamByName(DALPerson.PERSON_SEX).Value          := Perinfo.Sex;
        Parameters.ParamByName(DALPerson.PERSON_HP).Value           := Perinfo.HP;
        Parameters.ParamByName(DALPerson.PERSON_PHONE).Value        := Perinfo.Phone;
        Parameters.ParamByName(DALPerson.PERSON_COMPHONE).Value     := Perinfo.ComPhone;
        Parameters.ParamByName(DALPerson.PERSON_QQ).Value           := Perinfo.QQ;
        Parameters.ParamByName(DALPerson.PERSON_WEBSITE).Value      := Perinfo.WebSite;
        Parameters.ParamByName(DALPerson.PERSON_MAIL).Value         := Perinfo.Mail;
        Parameters.ParamByName(DALPerson.PERSON_ADDRESS).Value      := Perinfo.Address;
        Parameters.ParamByName(DALPerson.PERSON_PERSONTYPE).Value   := Perinfo.PersonType;
        ExecSQL;
    end;
end;
procedure TDALPerson.DeletePersonInfo;
begin
    if(DataAccess.Query.Active = true ) then DataAccess.Query.Delete;
end;

end.
