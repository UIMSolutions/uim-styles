module uim.react.components.demo;

import vibe.http.router : URLRouter;
import vibe.http.server : HTTPServerResponse;
import vibe.web.web : path, registerWebInterface;

import uim.react.helpers.app : ReactAppOptions, createReactBootstrapScript;

class ReactDemoService {
  @path("/")
  void getIndex(scope HTTPServerResponse res)
  {
    res.writeBody(createReactDemoHtml(), "text/html; charset=UTF-8");
  }
}

URLRouter createReactDemoRouter()
{
  auto router = new URLRouter;
  router.registerWebInterface(new ReactDemoService);
  return router;
}

string createReactDemoHtml()
{
  auto bootstrapScript = createReactBootstrapScript(ReactAppOptions(
    mountSelector: "#app",
    headingText: "React 19.2 + D + vibe.d"
  ));

  return "<!doctype html>\n"
    ~ "<html lang=\"en\">\n"
    ~ "  <head>\n"
    ~ "    <meta charset=\"utf-8\">\n"
    ~ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
    ~ "    <title>uim-react demo</title>\n"
    ~ "  </head>\n"
    ~ "  <body>\n"
    ~ "    <div id=\"app\"></div>\n"
    ~ "    <script type=\"module\">\n"
    ~ bootstrapScript
    ~ "    </script>\n"
    ~ "  </body>\n"
    ~ "</html>\n";
}
