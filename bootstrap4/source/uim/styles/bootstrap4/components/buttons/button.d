module uim.bootstrap.bs4.components.buttons.button;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Button : BS4ButtonObj {
  mixin(H5This!("button", ["btn"], `["type":"button"]`));

  // Set button to active state
  O active(bool mode = true){ if (mode) _classes ~= "active"; return this; }
  ///
unittest {
    assert(BS4Button.active(true) == `<button class="active btn" type="button"></button>`);
  }

  O block(bool mode = true){ if (mode) this.addClasses("btn-block"); return this; }
  ///
unittest {
    assert(BS4Button.block(true) == `<button class="btn btn-block" type="button"></button>`);
  }

  auto color(string value){ this.addClasses("btn-"~value); return this; }
  ///
unittest {
    assert(BS4Button.color("primary") == `<button class="btn btn-primary" type="button"></button>`);
  }

  // Set button to disabled
  O disabled(bool mode = true){ if (mode) this.addClasses("disabled"); return this; }
  ///
unittest {
    assert(BS4Button.disabled(true) == `<button class="btn disabled" type="button"></button>`);
  }

  // Set outline color
  O outline(string value){ this.addClasses("btn-outline-"~value); return this; }
  ///
unittest {
    assert(BS4Button.outline("primary") == `<button class="btn btn-outline-primary" type="button"></button>`);
  }

  O size(string value){ this.addClasses("btn-"~value); return this; }
  ///
unittest {
    assert(BS4Button.size("lg") == `<button class="btn btn-lg" type="button"></button>`);
  }
}
static BS4Button");

///
unittest {
  assert(BS4Button == `<button class="btn" type="button"></button>`);
}}
