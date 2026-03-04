module uim.bootstrap5.basic.components.forms.controls.color;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputColor : BS5Input {
  mixin H5Template!(BS5InputColor, ["form-control", "form-control-color"], ["type":"color"]);
}
///
unittest {
  assert(BS5InputColor() == `<input class="form-control form-control-color" type="color" />`);
  assert(BS5InputColor(["testclass"]) == `<input class="form-control form-control-color testclass" type="color" />`);
  assert(BS5InputColor(["a":"b"]) == `<input class="form-control form-control-color" type="color" a="b" />`);
  assert(BS5InputColor(["testclass"], ["a":"b"]) == `<input class="form-control form-control-color testclass" type="color" a="b" />`);
}
