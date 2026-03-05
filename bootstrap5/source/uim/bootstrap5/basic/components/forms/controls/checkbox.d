module uim.bootstrap5.basic.components.forms.controls.checkbox;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5Checkbox : BS5Input {
  mixin H5Template!(BS5Checkbox, null, ["type":"checkbox"]);
}
///
unittest {
  assert(BS5Checkbox() == `<input class="form-control" type="checkbox">`);
  assert(BS5Checkbox(["testclass"]) == `<input class="form-control testclass" type="checkbox">`);
  assert(BS5Checkbox(["a":"b"]) == `<input class="form-control" type="checkbox" a="b">`);
  assert(BS5Checkbox(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="checkbox" a="b">`);
}
