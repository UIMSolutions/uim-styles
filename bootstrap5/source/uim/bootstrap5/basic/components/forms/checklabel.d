module uim.bootstrap5.basic.components.forms.checklabel;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5FormCheckLabel : H5Label {
  mixin H5Template!(BS5FormCheckLabel, ["form-check-label"], null);
}
///
unittest {
  assert(BS5FormCheckLabel() == `<label class="form-check-label"></label>`);
  assert(BS5FormCheckLabel(["testclass"]) == `<label class="form-check-label testclass"></label>`);
  assert(BS5FormCheckLabel(["a":"b"]) == `<label class="form-check-label" a="b"></label>`);
  assert(BS5FormCheckLabel(["testclass"], ["a":"b"]) == `<label class="form-check-label testclass" a="b"></label>`);

  assert(BS5FormCheckLabel("Hello") == `<label class="form-check-label"></label>`);
  assert(BS5FormCheckLabel(["testclass"], "Hello") == `<label class="form-check-label testclass"></label>`);
  assert(BS5FormCheckLabel(["a":"b"], "Hello") == `<label class="form-check-label" a="b"></label>`);
  assert(BS5FormCheckLabel(["testclass"], ["a":"b"], "Hello") == `<label class="form-check-label testclass" a="b"></label>`);
}
