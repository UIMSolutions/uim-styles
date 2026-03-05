module uim.tabler.components.forms.selectgroups.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABSelectgroupInput : H5Input {
  mixin H5Template!(TABSelectgroupInput, ["form-selectgroup-input"]);
}
///
unittest {
  assert(TABSelectgroupInput() == `<input class="form-selectgroup-input" />`);
  assert(TABSelectgroupInput(["testclass"]) == `<input class="form-selectgroup-input testclass" />`);
  assert(TABSelectgroupInput(["a": "b"]) == `<input class="form-selectgroup-input" a="b" />`);
  assert(TABSelectgroupInput(["testclass"], ["a": "b"]) == `<input class="form-selectgroup-input testclass" a="b" />`);
}
