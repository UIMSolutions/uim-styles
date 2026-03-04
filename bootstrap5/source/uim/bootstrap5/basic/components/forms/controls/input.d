module uim.bootstrap5.basic.components.forms.controls.input;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

@StringAttribute("value")
@StringAttribute("placeholder")
class BS5Input : H5Input {
  mixin H5Template!(BS5Input, ["form-control"]);  

  // auto color(string newColor) {
  //   this.addClasses("bg-"~newColor);
  //   return this;
  // }
}
///
unittest {
  assert(BS5Input() == `<input class="form-control" type="text" />`);
  assert(BS5Input(["testclass"]) == `<input class="form-control testclass" type="text" />`);
  assert(BS5Input(["a":"b"]) == `<input class="form-control" a="b" type="text" />`);
  assert(BS5Input(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="text" />`);
}
