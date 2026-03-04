module uim.bootstrap5.basic.components.buttons.buttonobj;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ButtonObj : H5Button {
  mixin H5Template!(BS5ButtonObj, null, ["type":"button"]);

  // // mixin(MyAttribute!("buttonType", "type"));
  // mixin(TProperty!("string", "colorMode"));
  // mixin(TProperty!("bool", "outline"));
  // mixin(TProperty!("bool", "block"));
  // mixin(TProperty!("bool", "active"));
  // mixin(TProperty!("bool", "disabled"));
  // mixin(TProperty!("bool", "dataToggle"));
  // mixin(TProperty!("string", "role"));
  // mixin(TProperty!("string", "sizeMode"));

  // override string renderHTML(string[string] bindings = null) {
  //   if (colorMode) {
  //     if (outline) this.addClasses("btn-outline-"~colorMode);
  //     else this.addClasses("btn-"~colorMode);
  //   }
  //   if (sizeMode.length > 0) this.addClasses("btn-"~sizeMode);
  //   if (block) this.addClasses("btn-block");
  //   if (active) this.addClasses("active");
  //   if (disabled) this.addClasses("disabled");
  //   if (dataToggle) attribute("data-toggle"]="button"; else _attributes.remove("data-toggle");

  //   return super.renderHTML;
  // }
  mixin(BS5Calls!("ButtonObj"));
}
///
unittest {
  // TODO
}
