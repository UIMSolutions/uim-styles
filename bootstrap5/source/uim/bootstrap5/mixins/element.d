module uim.bootstrap5.mixins.element;

import uim.html;

mixin(ShowModule!());

@safe:



string bs5Calls(string name) {
  if (name.length > 0) {
    name = "BS5" ~ name[0..1].capitalize ~ name[1 .. $];
  }  

  return `
    static {name} opCall() {
      return new {name}();
    }
    static {name} opCall(string content) {
      return new {name}(content);
    }
    static {name} opCall(string[] classes, string content = "") {
      return new {name}(classes, content);
    }
    static {name} opCall(string[string] attributes, string content = "") {
      return new {name}(attributes, content);
    }
    static {name} opCall(string[] classes, string[string] attributes, string content = "") {
      return new {name}(classes, attributes, content);
    }
    `.mustache("name", name);
}

template BS5Calls(string name) {
  const char[] BS5Calls = bs5Calls(name);
}
