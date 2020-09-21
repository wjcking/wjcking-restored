unit IDAL;

interface

uses
  SysUtils, Classes, ADODB, DB,
  Person;

type
    IPersonInfo = interface

        function  ListPersonInfo(KeyWords:string;const PersonType:string;const ConType:string):TDataSource;
        function  GetPersonInfo(ID:Integer):TPerson;

        procedure InsertPersonInfo(Perinfo:TPerson);
        procedure UpdatePersonInfo(ID:Integer;Perinfo:TPerson);
        procedure DeletePersonInfo;
    end;

implementation

end.
