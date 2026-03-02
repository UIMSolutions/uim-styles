module uim.bootstrap5.basic.components.buttons.submit;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5ButtonSubmit : H5Button {
  mixin BS5This!(["btn"], ["type": "submit"]);

  // Set button to active state
  BS5ButtonSubmit active(bool mode = true) {
    if (mode)
      _classes ~= "active";
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.active(true) == `<button class="active btn" type="submit"></button>`);
  }

  BS5ButtonSubmit block(bool mode = true) {
    if (mode)
      this.addClasses("btn-block");
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.block(true) == `<button class="btn btn-block" type="submit"></button>`);
  }

  auto color(string value) {
    this.addClasses("btn-" ~ value);
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.color("primary") == `<button class="btn btn-primary" type="submit"></button>`);
  }

  // Set button to disabled
  BS5ButtonSubmit disabled(bool mode = true) {
    if (mode)
      this.addClasses("disabled");
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.disabled(true) == `<button class="btn disabled" type="submit"></button>`);
  }

  // Set outline color
  BS5ButtonSubmit outline(string value) {
    this.addClasses("btn-outline-" ~ value);
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.outline("primary") == `<button class="btn btn-outline-primary" type="submit"></button>`);
  }

  BS5ButtonSubmit size(string value) {
    this.addClasses("btn-" ~ value);
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.size("lg") == `<button class="btn btn-lg" type="submit"></button>`);
  }

  mixin(BS5Calls!("ButtonSubmit"));
}
///
unittest {
  // // assert(BS5ButtonSubmit == `<button class="btn" type="button"></button>`);
}
