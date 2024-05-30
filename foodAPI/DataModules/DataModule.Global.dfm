object Dm: TDm
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object Conn: TFDConnection
    Params.Strings = (
      'Database=C:\Users\igorm\Documents\foodAPI\DB\banco.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    ConnectedStoredUsage = []
    LoginPrompt = False
    BeforeConnect = ConnBeforeConnect
    Left = 144
    Top = 112
  end
end
