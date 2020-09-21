unit Database;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataAccess = class(TDataModule)
    Con: TADOConnection;
    Query: TADOQuery;
    DSource: TDataSource;
    ExcuteQuery: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private

  public
  function ExcuteSource(sqlQuery:string):TDataSource;
  function ExcuteNonQuery(sqlQuery:string):boolean;

  end;

var
  DataAccess: TDataAccess;

const
    CONNECT = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%slib\combox.mdb;Persist Security Info=False';
implementation

{$R *.dfm}
function TDataAccess.ExcuteSource(sqlQuery:string):TDataSource;
begin
     try
        self.Query.Active := false;
        self.Query.Close;
        self.Query.SQL.Clear;
        self.Query.SQL.Add(sqlQuery);
        self.Query.Active := true;
        self.Query.Open;
        self.Query.ExecSQL;
        DSource.DataSet := Query;
     Except

     end;
    Result := DSource;
end;

function TDataAccess.ExcuteNonQuery(sqlQuery:string):boolean;
begin
    try
        self.ExcuteQuery.Active := false;
        self.ExcuteQuery.Close;
        self.ExcuteQuery.SQL.Clear;
        self.ExcuteQuery.SQL.Add(sqlQuery);
       //self.ExcuteQuery.Active := true;
      // self.ExcuteQuery.Open;
        self.ExcuteQuery.ExecSQL;

    finally
        self.ExcuteQuery.Active := false;
        self.ExcuteQuery.Close;
    end;
    Result := true;
end;

procedure TDataAccess.DataModuleCreate(Sender: TObject);
begin
    Con.ConnectionString:=Format(CONNECT,[ExtractFilePath(paramstr(0))]);
end;

end.
