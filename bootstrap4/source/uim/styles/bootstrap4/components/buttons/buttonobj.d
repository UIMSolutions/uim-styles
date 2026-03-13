module uim.bootstrap.bs4.components.buttons.buttonobj;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ButtonObj : BS4Obj {
  mixin(H5This!("BUTTON", null, `["type":"button"]`));

  // mixin(MyAttribute!("buttonType", "type"));
  mixin(TProperty!("string", "colorMode"));
  mixin(TProperty!("bool", "outline"));
  mixin(TProperty!("bool", "block"));
  mixin(TProperty!("bool", "active"));
  mixin(TProperty!("bool", "disabled"));
  mixin(TProperty!("bool", "dataToggle"));
  mixin(TProperty!("string", "role"));
  mixin(TProperty!("string", "sizeMode"));

  override string renderHTML(string[string] bindings = null) {
    if (colorMode) {
      if (outline) this.addClasses("btn-outline-"~colorMode);
      else this.addClasses("btn-"~colorMode);
    }
    if (sizeMode.length > 0) this.addClasses("btn-"~sizeMode);
    if (block) this.addClasses("btn-block");
    if (active) this.addClasses("active");
    if (disabled) this.addClasses("disabled");
    if (dataToggle) attribute("data-toggle"]="button"; else _attributes.remove("data-toggle");

    return super.renderHTML;
  }
}
static BS4ButtonObj");

///
unittest {
  // TODO
}}
