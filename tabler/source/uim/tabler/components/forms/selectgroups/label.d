module uim.tabler.components.forms.selectgroups.label;

import uim.tabler;

mixin(ShowModule!());

@safe:
/** 
 * SelectgroupLabel is used to create a label for a select group. It is used in the FormSelectgroup component.
 * https://tabler.io/docs/forms#select-groups
 */
class TABSelectgroupLabel : H5Span {
  mixin H5Template!(TABSelectgroupLabel, ["form-selectgroup-label"]);
  mixin(HtmlMethods!TABSelectgroupLabel);
}
///
unittest {
  assert(TABSelectgroupLabel() == `<span class="form-selectgroup-label"></span>`);
  assert(TABSelectgroupLabel(["testclass"]) == `<span class="form-selectgroup-label testclass"></span>`);
  assert(TABSelectgroupLabel(["a": "b"]) == `<span class="form-selectgroup-label" a="b"></span>`);
  assert(TABSelectgroupLabel(["testclass"], ["a": "b"]) == `<span class="form-selectgroup-label testclass" a="b"></span>`); 

  assert(TABSelectgroupLabel("Hello") == `<span class="form-selectgroup-label">Hello</span>`);
  assert(TABSelectgroupLabel(["testclass"], "Hello") == `<span class="form-selectgroup-label testclass">Hello</span>`);
  assert(TABSelectgroupLabel(["a": "b"], "Hello") == `<span class="form-selectgroup-label" a="b">Hello</span>`);
  assert(TABSelectgroupLabel(["testclass"], ["a": "b"], "Hello") == `<span class="form-selectgroup-label testclass" a="b">Hello</span>`);
}




