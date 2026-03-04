module uim.bootstrap5.basic.components.forms.checkinput;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5FormCheckInput : H5Input {
  mixin H5Template!(BS5FormCheckInput, ["form-check-input"], null);
}
///
unittest {
  assert(BS5FormCheckInput() == `<input class="form-check-input">`);
  assert(BS5FormCheckInput(["testclass"]) == `<input class="form-check-input testclass">`);
  assert(BS5FormCheckInput(["a":"b"]) == `<input class="form-check-input" a="b">`);
  assert(BS5FormCheckInput(["testclass"], ["a":"b"]) == `<input class="form-check-input testclass" a="b">`);
}
