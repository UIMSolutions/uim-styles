module uim.bootstrap5.basic.components.forms.customcontrols.input;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CustomInput : H5Input {
  mixin H5Template!(BS5CustomInput, ["custom-control-input"]);
}
///
unittest {
  assert(BS5CustomInput() == `<input class="custom-control-input">`);
  assert(BS5CustomInput(["testclass"]) == `<input class="custom-control-input testclass">`);
  assert(BS5CustomInput(["a":"b"]) == `<input class="custom-control-input" a="b">`);
  assert(BS5CustomInput(["testclass"], ["a":"b"]) == `<input class="custom-control-input testclass" a="b">`);
}
