module uim.bootstrap5.basic.components.forms.controls.radio;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5Radio : BS5Input {
  mixin H5Template!(BS5Radio, ["form-check-input"], ["type":"radio"]);
}
///
unittest {
  assert(BS5Radio() == `<input class="form-check-input" type="radio">`);
  assert(BS5Radio(["testclass"]) == `<input class="form-check-input testclass" type="radio">`);
  assert(BS5Radio(["a":"b"]) == `<input class="form-check-input" type="radio" a="b">`);
  assert(BS5Radio(["testclass"], ["a":"b"]) == `<input class="form-check-input testclass" type="radio" a="b">`);

  assert(BS5Radio("Hello") == `<input class="form-check-input" type="radio">`);
  assert(BS5Radio(["testclass"], "Hello") == `<input class="form-check-input testclass" type="radio">`);
  assert(BS5Radio(["a":"b"], "Hello") == `<input class="form-check-input" type="radio" a="b">`);
  assert(BS5Radio(["testclass"], ["a":"b"], "Hello") == `<input class="form-check-input testclass" type="radio" a="b">`);
}
