module uim.vue.helpers.app;

import std.array : appender;

struct VueAppOptions {
  string mountSelector = "#app";
  string componentName = "App";
  string templateMarkup;
  string[] plugins;
}

@safe pure nothrow @nogc
string vue3RuntimeProdUrl() {
  return "https://unpkg.com/vue@3/dist/vue.global.prod.js";
}

@safe pure nothrow @nogc
string vue3RuntimeDevUrl() {
  return "https://unpkg.com/vue@3/dist/vue.global.js";
}

@safe
string jsStringEscape(string input) {
  auto escaped = appender!string();

  foreach (ch; input) {
    switch (ch) {
      case '\\':
        escaped.put("\\\\");
        break;
      case '"':
        escaped.put("\\\"");
        break;
      case '\n':
        escaped.put("\\n");
        break;
      case '\r':
        escaped.put("\\r");
        break;
      case '\t':
        escaped.put("\\t");
        break;
      default:
        escaped.put(ch);
        break;
    }
  }

  return escaped.data;
}

@safe
string createVueBootstrapScript(VueAppOptions options) {
  auto script = appender!string();

  script.put("const { createApp } = Vue;\n");
  script.put("const app = createApp({");

  if (options.templateMarkup.length > 0) {
    script.put(" template: \"");
    script.put(jsStringEscape(options.templateMarkup));
    script.put("\"");
  }

  script.put(" });\n");

  foreach (plugin; options.plugins) {
    script.put("app.use(window[");
    script.put('"');
    script.put(jsStringEscape(plugin));
    script.put('"');
    script.put("]);\n");
  }

  script.put("app.mount(\"");
  script.put(jsStringEscape(options.mountSelector));
  script.put("\");\n");

  return script.data;
}
