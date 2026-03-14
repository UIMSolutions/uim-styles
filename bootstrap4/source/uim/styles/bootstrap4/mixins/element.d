module uim.bootstrap4.mixins.element;

import uim.html;

mixin(ShowModule!());

@safe:

template BS4This(string[] thisClasses = null, string[string] thisAttributes = null, string thisContent = "", IHtmlElement[] thisElements = null) {
  this() {
    super(thisClasses, thisAttributes, thisContent);
  }

  this(string content) {
    super(thisClasses, thisAttributes, thisContent ~ content);
  }

  this(string[] classes, string content = "") {
    super(thisClasses ~ classes, thisAttributes, thisContent ~ content);
  }

  this(string[] classes, IHtmlElement[] elements) {
    super(thisClasses ~ classes, thisAttributes, thisContent);
    this.addContent(elements);
  }

  this(string[string] attributes, string content = "") {
    super(thisClasses, thisAttributes.setMap(attributes), thisContent ~ content);
  }

  this(string[string] attributes, IHtmlElement[] elements) {
    super(thisClasses, thisAttributes.setMap(attributes), thisContent);
    this.addContent(elements);
  }

  this(string[] classes, string[string] attributes, string content = "") {
    super(thisClasses ~ classes, thisAttributes.setMap(attributes), thisContent ~ content);
  }

  this(string[] classes, string[string] attributes, IHtmlElement[] elements) {
    super(thisClasses ~ classes, thisAttributes.setMap(attributes), thisContent);
    this.addContent(elements);
  }
}

string tabCalls(string name) {
  if (name.length > 0) {
    name = "BS4" ~ name[0..1].capitalize ~ name[1 .. $];
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

template BS4Calls(string name) {
  const char[] BS4Calls = tabCalls(name);
}

template BS4Template(string name) {
  const char[] BS4Template = tabCalls(name);
}