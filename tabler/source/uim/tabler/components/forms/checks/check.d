module uim.tabler.components.forms.checks.check;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Tabler form check component.
 * https://tabler.io/docs/forms#checks
 */
class TABFormCheck : H5Label {
  mixin H5Template!(TABFormCheck, ["form-check"]);

  mixin(AddContentCalls!("TABFormCheck", "Input", "TABFormCheckInput"));

  mixin(AddContentCalls!("TABFormCheck", "Label", "TABFormCheckLabel"));
}
///
unittest {
  assert(TABFormCheck() == `<label class="form-check"></label>`);
  assert(TABFormCheck(["testclass"]) == `<label class="form-check testclass"></label>`);
  assert(TABFormCheck(["a": "b"]) == `<label class="form-check" a="b"></label>`);
  assert(TABFormCheck(["testclass"], ["a": "b"]) == `<label class="form-check testclass" a="b"></label>`);

  assert(TABFormCheck("Hello") == `<label class="form-check">Hello</label>`);
  assert(TABFormCheck(["testclass"], "Hello") == `<label class="form-check testclass">Hello</label>`);
  assert(TABFormCheck(["a": "b"], "Hello") == `<label class="form-check" a="b">Hello</label>`);
  assert(TABFormCheck(["testclass"], ["a": "b"], "Hello") == `<label class="form-check testclass" a="b">Hello</label>`);
}
