module uim.bootstrap5.basic.components.forms.controls.tel;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputTel : BS5Input {
  mixin H5Template!(BS5InputTel, ["form-control"], ["type":"tel"]);
}
///
unittest {
  assert(BS5InputTel() == `<input class="form-control" type="tel">`);
  assert(BS5InputTel(["testclass"]) == `<input class="form-control testclass" type="tel">`);
  assert(BS5InputTel(["a":"b"]) == `<input class="form-control" type="tel" a="b">`);
  assert(BS5InputTel(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="tel" a="b">`);
}
