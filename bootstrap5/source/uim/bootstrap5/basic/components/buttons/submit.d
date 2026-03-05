module uim.bootstrap5.basic.components.buttons.submit;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5ButtonSubmit : BS5Button {
  mixin H5Template!(BS5ButtonSubmit, ["btn"], ["type": "submit"]);

  auto color(string value) {
    this.addClasses("btn-" ~ value);
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.color("primary") == `<button class="btn btn-primary" type="submit"></button>`);
  }

    // Set outline color
  // BS5ButtonSubmit outline(string value) {
  //   this.addClasses("btn-outline-" ~ value);
  //   return this;
  // }

  BS5ButtonSubmit size(string value) {
    this.addClasses("btn-" ~ value);
    return this;
  }
  ///
  unittest {
    // assert(BS5ButtonSubmit.size("lg") == `<button class="btn btn-lg" type="submit"></button>`);
  }
}
///
unittest {
  assert(BS5ButtonSubmit() == `<button class="btn" type="submit"></button>`);
  assert(BS5ButtonSubmit(["testclass"]) == `<button class="btn testclass" type="submit"></button>`);
  assert(BS5ButtonSubmit(["a": "b"]) == `<button class="btn" a="b" type="submit"></button>`);
  assert(BS5ButtonSubmit(["testclass"], ["a": "b"]) == `<button class="btn testclass" a="b" type="submit"></button>`);

  assert(BS5ButtonSubmit("Hello") == `<button class="btn" type="submit">Hello</button>`);
  assert(BS5ButtonSubmit(["testclass"], "Hello") == `<button class="btn testclass" type="submit">Hello</button>`);
  assert(BS5ButtonSubmit(["a": "b"], "Hello") == `<button class="btn" a="b" type="submit">Hello</button>`);
  assert(BS5ButtonSubmit(["testclass"], ["a": "b"], "Hello") == `<button class="btn testclass" a="b" type="submit">Hello</button>`);

  // assert(BS5ButtonSubmit.active(true) == `<button class="active btn" type="submit"></button>`);
  // assert(BS5ButtonSubmit.block(true) == `<button class="btn btn-block" type="submit"></button>`);
  // assert(BS5ButtonSubmit.color("primary") == `<button class="btn btn-primary" type="submit"></button>`);
  // assert(BS5ButtonSubmit.disabled(true) == `<button class="btn disabled" type="submit"></button>`);
  // assert(BS5ButtonSubmit.outline("primary") == `<button class="btn btn-outline-primary" type="submit"></button>`);
  // assert(BS5ButtonSubmit.size("lg") == `<button class="btn btn-lg" type="submit"></button>`);
}
