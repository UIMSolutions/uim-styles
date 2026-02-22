module uim.react.helpers.app;

import std.array : appender;

struct ReactAppOptions {
  string mountSelector = "#app";
  string headingText = "React 19.2 + D + vibe.d";
  string reactUrl = react192EsmUrl();
  string reactDomClientUrl = reactDom192ClientEsmUrl();
}

@safe pure nothrow @nogc
string react192EsmUrl() {
  return "https://esm.sh/react@19.2.0";
}

@safe pure nothrow @nogc
string reactDom192ClientEsmUrl() {
  return "https://esm.sh/react-dom@19.2.0/client";
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
string createReactBootstrapScript(ReactAppOptions options) {
  auto script = appender!string();

  script.put("import React from \"");
  script.put(jsStringEscape(options.reactUrl));
  script.put("\";\n");

  script.put("import { createRoot } from \"");
  script.put(jsStringEscape(options.reactDomClientUrl));
  script.put("\";\n");

  script.put("const mountNode = document.querySelector(\"");
  script.put(jsStringEscape(options.mountSelector));
  script.put("\");\n");

  script.put("if (!mountNode) throw new Error(\"React mount node not found\");\n");

  script.put("function App() {\n");
  script.put("  return React.createElement(\"main\", null, ");
  script.put("React.createElement(\"h1\", null, \"");
  script.put(jsStringEscape(options.headingText));
  script.put("\"));\n");
  script.put("}\n");

  script.put("createRoot(mountNode).render(React.createElement(App));\n");

  return script.data;
}
