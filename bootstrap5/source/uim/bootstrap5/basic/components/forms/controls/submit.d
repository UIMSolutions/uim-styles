module uim.bootstrap5.basic.components.forms.controls.submit;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputSubmit : BS5Input {
  mixin H5Template!(BS5InputSubmit, ["form-control"], ["type":"submit"]);
}
///
unittest {
  assert(BS5InputSubmit() == `<input class="form-control" type="submit">`);
  assert(BS5InputSubmit(["testclass"]) == `<input class="form-control testclass" type="submit">`);
  assert(BS5InputSubmit(["a":"b"]) == `<input class="form-control" type="submit" a="b">`);
  assert(BS5InputSubmit(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="submit" a="b">`);
}
