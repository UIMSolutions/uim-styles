module uim.bootstrap5.basic.components.forms.customcontrols.radio;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CustomRadio : BS5CustomControl {
  mixin H5Template!(BS5CustomRadio, ["custom-control", "custom-radio"]);
}
///
unittest {
  assert(BS5CustomRadio() == `<div class="custom-control custom-radio"></div>`);
  assert(BS5CustomRadio(["testclass"]) == `<div class="custom-control custom-radio testclass"></div>`);
  assert(BS5CustomRadio(["a":"b"]) == `<div class="custom-control custom-radio" a="b"></div>`);
  assert(BS5CustomRadio(["testclass"], ["a":"b"]) == `<div class="custom-control custom-radio testclass" a="b"></div>`);

  assert(BS5CustomRadio("SomeContent") == `<div class="custom-control custom-radio">SomeContent</div>`);
  assert(BS5CustomRadio(["testclass"], "SomeContent") == `<div class="custom-control custom-radio testclass">SomeContent</div>`);
  assert(BS5CustomRadio(["a":"b"], "SomeContent") == `<div class="custom-control custom-radio" a="b">SomeContent</div>`);
  assert(BS5CustomRadio(["testclass"], ["a":"b"], "SomeContent") == `<div class="custom-control custom-radio testclass" a="b">SomeContent</div>`);
}
