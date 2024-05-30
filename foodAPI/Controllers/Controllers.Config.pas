unit Controllers.Config;

interface

uses Horse,
     System.JSON,
     System.SysUtils,
     DataModule.Global;

procedure RegistrarRotas;
procedure ListarConfig(Req: ThorseRequest; Res: ThorseResponse; Next: TProc);

implementation

procedure RegistrarRotas;
begin
   THorse.Get('/config', ListarConfig);
end;


procedure ListarConfig(Req: ThorseRequest; Res: ThorseResponse; Next: TProc);
var
     dm: Tdm;

begin
    try
        dm := TDm.Create(nil);

        Res.Send(dm.ListarConfig).Status(200);
    finally
        FreeAndNil(dm);
    end;


end;


end.
