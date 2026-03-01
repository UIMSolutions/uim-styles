module app;

import vibe.core.core : runApplication;
import vibe.core.log : logInfo;
import vibe.http.server : HTTPServerSettings, listenHTTP;

import uim.react : createReactDemoRouter;

void main(string[] args)
{
  auto router = createReactDemoRouter();

  auto settings = new HTTPServerSettings;
  settings.port = 8080;
  settings.bindAddresses = ["127.0.0.1", "::1"];

  auto listener = listenHTTP(settings, router);

  logInfo("React demo server running at http://127.0.0.1:8080/");
  runApplication(&args);
}
