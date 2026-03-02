module uim.style.mixins.element;

import uim.style;

@safe:

template H5This(string[] thisClasses = null, string[string] thisAttributes = null, string thisContent = "", IHtmlElement[] thisElements = null) {
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

template H5Calls(string name) {
  const char[] H5Calls = tabCalls(name);
}

template H5Template(alias T, string[] thisClasses = null, string[string] thisAttributes = null, string thisContent = "", IHtmlElement[] thisElements = null) {
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

  static T opCall() {
    return new T();
  }
  static T opCall(string content) {
    return new T(content);
  }

  static T opCall(string[] classes, string content = "") {
    return new T(classes, content);
  }

  static T opCall(string[string] attributes, string content = "") {
    return new T(attributes, content);
  }

  static T opCall(string[] classes, string[string] attributes, string content = "") {
    return new T(classes, attributes, content);
  }

  mixin(HtmlMethods!T);
}
