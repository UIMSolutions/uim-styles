module uim.bootstrap5.basic.components.buttons.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

@CssClass("active") // active state
@CssClass("block", "btn-block") // block level button

class BS5Button : H5Button {
  mixin H5Template!(BS5Button, ["btn"], ["type": "button"]);

  // BS5Button color(string value) {
  //   this.addClasses("btn-" ~ value);
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5Button.color("primary") == `<button class="btn btn-primary" type="button"></button>`);
  // }

  // Set outline color
  // BS5Button outline(string value) {
  //   this.addClasses("btn-outline-" ~ value);
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5Button.outline("primary") == `<button class="btn btn-outline-primary" type="button"></button>`);
  // }

  // BS5Button size(string value) {
  //   this.addClasses("btn-" ~ value);
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5Button.size("lg") == `<button class="btn btn-lg" type="button"></button>`);
  // }

}

///
unittest {
  assert(BS5Button() == `<button class="btn" type="button"></button>`);
  assert(BS5Button(["testclass"]) == `<button class="btn testclass" type="button"></button>`);
  assert(BS5Button(["a":"b"]) == `<button class="btn" a="b" type="button"></button>`);
  assert(BS5Button(["testclass"], ["a":"b"]) == `<button class="btn testclass" a="b" type="button"></button>`);

  assert(BS5Button("Hello") == `<button class="btn" type="button">Hello</button>`);
  assert(BS5Button(["testclass"], "Hello") == `<button class="btn testclass" type="button">Hello</button>`);
  assert(BS5Button(["a":"b"], "Hello") == `<button class="btn" a="b" type="button">Hello</button>`);
  assert(BS5Button(["testclass"], ["a":"b"], "Hello") == `<button class="btn testclass" a="b" type="button">Hello</button>`);
  }
