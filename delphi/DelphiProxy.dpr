program DelphiProxy;

{$APPTYPE CONSOLE}

uses
  SysUtils, IdHTTPServer, IdCustomHTTPServer, IdContext, Classes;

var
  HTTPServer: TIdHTTPServer;

procedure OnCommandGet(AContext: TIdContext; ARequestInfo: TIdHTTPRequestInfo;
  AResponseInfo: TIdHTTPResponseInfo);
begin
  AResponseInfo.ContentText := 'IPTV proxy placeholder';
end;

begin
  HTTPServer := TIdHTTPServer.Create(nil);
  try
    HTTPServer.DefaultPort := 8080;
    HTTPServer.OnCommandGet := OnCommandGet;
    HTTPServer.Active := True;
    Writeln('IPTV proxy running on port 8080');
    Readln;
  finally
    HTTPServer.Free;
  end;
end.
