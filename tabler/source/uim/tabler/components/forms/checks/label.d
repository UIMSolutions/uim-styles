module uim.tabler.components.forms.checks.label;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormCheckLabel is used to create a label for a form check. It is used in the FormCheck component.
 * https://tabler.io/docs/forms#checks
 */
class TABFormCheckLabel : H5Span {
  mixin H5Template!(TABFormCheckLabel, ["form-check-label"]);
}
///
unittest {
  assert(TABFormCheckLabel() == `<span class="form-check-label"></span>`);
  assert(TABFormCheckLabel(["testclass"]) == `<span class="form-check-label testclass"></span>`);
  assert(TABFormCheckLabel(["a": "b"]) == `<span class="form-check-label" a="b"></span>`);
  assert(TABFormCheckLabel(["testclass"], ["a": "b"]) == `<span class="form-check-label testclass" a="b"></span>`);

  assert(TABFormCheckLabel("Hello") == `<span class="form-check-label">Hello</span>`);
  assert(TABFormCheckLabel(["testclass"], "Hello") == `<span class="form-check-label testclass">Hello</span>`);
  assert(TABFormCheckLabel(["a": "b"], "Hello") == `<span class="form-check-label" a="b">Hello</span>`);
  assert(TABFormCheckLabel(["testclass"], ["a": "b"], "Hello") == `<span class="form-check-label testclass" a="b">Hello</span>`);
}



