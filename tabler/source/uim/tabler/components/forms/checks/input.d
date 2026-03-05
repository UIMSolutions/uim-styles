module uim.tabler.components.forms.checks.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Tabler form check input component.
 * https://tabler.io/docs/forms#checks
 */
class TABFormCheckInput : H5Input {
  mixin H5Template!(TABFormCheckInput, ["form-check-input"]);
}
///
unittest {
  assert(TABFormCheckInput() == `<input class="form-check-input" />`);
  assert(TABFormCheckInput(["testclass"]) == `<input class="form-check-input testclass" />`);
  assert(TABFormCheckInput(["a": "b"]) == `<input class="form-check-input" a="b" />`);
  assert(TABFormCheckInput(["testclass"], ["a": "b"]) == `<input class="form-check-input testclass" a="b" />`);
}



