module uim.vue.components.demo;

import vibe.http.router : URLRouter;
import vibe.http.server : HTTPServerResponse;
import vibe.web.web : path, registerWebInterface;

import uim.vue.helpers.app : VueAppOptions, createVueBootstrapScript, vue3RuntimeProdUrl;

class VueDemoService {
  @path("/")
  void getIndex(scope HTTPServerResponse res)
  {
    res.writeBody(createVueDemoHtml(), "text/html; charset=UTF-8");
  }
}

URLRouter createVueDemoRouter()
{
  auto router = new URLRouter;
  router.registerWebInterface(new VueDemoService);
  return router;
}

string createVueDemoHtml()
{
  auto bootstrapScript = createVueBootstrapScript(VueAppOptions(
    mountSelector: "#app",
    templateMarkup: "<main><h1>Vue 3 + D + vibe.d</h1></main>"
  ));

  return "<!doctype html>\n"
    ~ "<html lang=\"en\">\n"
    ~ "  <head>\n"
    ~ "    <meta charset=\"utf-8\">\n"
    ~ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
    ~ "    <title>uim-vue demo</title>\n"
    ~ "  </head>\n"
    ~ "  <body>\n"
    ~ "    <div id=\"app\"></div>\n"
    ~ "    <script src=\"" ~ vue3RuntimeProdUrl() ~ "\"></script>\n"
    ~ "    <script>\n"
    ~ bootstrapScript
    ~ "    </script>\n"
    ~ "  </body>\n"
    ~ "</html>\n";
}
