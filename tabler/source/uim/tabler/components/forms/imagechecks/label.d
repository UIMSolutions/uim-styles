module uim.tabler.components.forms.imagechecks.label;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckLabel is used to create a label for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckLabel : H5Label {
  mixin H5Template!(TABImageCheckLabel, ["form-imagecheck"]);
  mixin(HtmlMethods!TABImageCheckLabel);
}
///
unittest {
  assert(TABImageCheckLabel() == `<label class="form-imagecheck"></label>`);
  assert(TABImageCheckLabel(["testclass"]) == `<label class="form-imagecheck testclass"></label>`);
  assert(TABImageCheckLabel(["a": "b"]) == `<label class="form-imagecheck" a="b"></label>`);
  assert(TABImageCheckLabel(["testclass"], ["a": "b"]) == `<label class="form-imagecheck testclass" a="b"></label>`);

  assert(TABImageCheckLabel("Hello") == `<label class="form-imagecheck">Hello</label>`);
  assert(TABImageCheckLabel(["testclass"], "Hello") == `<label class="form-imagecheck testclass">Hello</label>`);
  assert(TABImageCheckLabel(["a": "b"], "Hello") == `<label class="form-imagecheck" a="b">Hello</label>`);
  assert(TABImageCheckLabel(["testclass"], ["a": "b"], "Hello") == `<label class="form-imagecheck testclass" a="b">Hello</label>`);
}
