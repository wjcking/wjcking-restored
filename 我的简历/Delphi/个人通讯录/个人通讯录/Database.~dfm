object DataAccess: TDataAccess
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 400
  Top = 121
  Height = 212
  Width = 253
  object Con: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 20
  end
  object Query: TADOQuery
    Connection = Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PersonInfo')
    Left = 60
    Top = 20
  end
  object DSource: TDataSource
    DataSet = Query
    Left = 112
    Top = 20
  end
  object ExcuteQuery: TADOQuery
    Connection = Con
    Parameters = <>
    Prepared = True
    Left = 172
    Top = 20
  end
end
