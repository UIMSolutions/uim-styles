module uim.bootstrap5.basic.components.forms.controls.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputButton : BS5Input {
  mixin H5Template!(BS5InputButton, null, ["type":"button"]);
}
///
unittest {
  assert(BS5InputButton == `<input class="form-control" type="button">`);
  assert(BS5InputButton(["testclass"]) == `<input class="form-control testclass" type="button">`);
  assert(BS5InputButton(["a":"b"]) == `<input class="form-control" type="button" a="b">`);
  assert(BS5InputButton(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="button" a="b">`);
}
