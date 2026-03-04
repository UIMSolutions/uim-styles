module uim.bootstrap5.basic.components.forms.controls.datalist;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputDatalist : BS5Input {
  mixin H5Template!(BS5InputDatalist, ["form-control"]);
}
///
unittest {
  assert(BS5InputDatalist() == `<input class="form-control" />`);
  assert(BS5InputDatalist(["testclass"]) == `<input class="form-control testclass" />`);
  assert(BS5InputDatalist(["a":"b"]) == `<input class="form-control" a="b" />`);
  assert(BS5InputDatalist(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" />`);
}
