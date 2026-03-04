module uim.bootstrap5.basic.components.forms.controls.month;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputMonth : BS5Input {
  mixin H5Template!(BS5InputMonth, ["form-control"], ["type":"month"]);
}
///
unittest {
  assert(BS5InputMonth() == `<input class="form-control" type="month" />`);
  assert(BS5InputMonth(["testclass"]) == `<input class="form-control testclass" type="month" />`);
  assert(BS5InputMonth(["a":"b"]) == `<input class="form-control" a="b" type="month" />`);
  assert(BS5InputMonth(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="month" />`);
}
