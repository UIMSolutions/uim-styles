module uim.tabler.components.forms.selectgroups.item;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABSelectgroupItem : H5Label {
  mixin H5Template!(TABSelectgroupItem, ["form-selectgroup-item"]);
}
///
unittest {
  assert(TABSelectgroupItem() == `<label class="form-selectgroup-item"></label>`);
  assert(TABSelectgroupItem(["testclass"]) == `<label class="form-selectgroup-item testclass"></label>`);
  assert(TABSelectgroupItem(["a": "b"]) == `<label class="form-selectgroup-item" a="b"></label>`);
  assert(TABSelectgroupItem(["testclass"], ["a": "b"]) == `<label class="form-selectgroup-item testclass" a="b"></label>`);

  assert(TABSelectgroupItem("Hello") == `<label class="form-selectgroup-item">Hello</label>`);
  assert(TABSelectgroupItem(["testclass"], "Hello") == `<label class="form-selectgroup-item testclass">Hello</label>`);
  assert(TABSelectgroupItem(["a": "b"], "Hello") == `<label class="form-selectgroup-item" a="b">Hello</label>`);
  assert(TABSelectgroupItem(["testclass"], ["a": "b"], "Hello") == `<label class="form-selectgroup-item testclass" a="b">Hello</label>`);
}
