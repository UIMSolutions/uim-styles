module uim.tabler.components.forms.imagechecks.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckInput is used to create an input for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckInput : H5Input {
  mixin H5Template!(TABImageCheckInput, ["form-imagecheck-input"]);
}
///
unittest {
  assert(TABImageCheckInput() == `<input class="form-imagecheck-input" />`);
  assert(TABImageCheckInput(["testclass"]) == `<input class="form-imagecheck-input testclass" />`);
  assert(TABImageCheckInput(["a": "b"]) == `<input class="form-imagecheck-input" a="b" />`);
  assert(TABImageCheckInput(["testclass"], ["a": "b"]) == `<input class="form-imagecheck-input testclass" a="b" />`);
}
