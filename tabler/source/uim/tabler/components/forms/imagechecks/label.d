module uim.tabler.components.forms.imagechecks.label;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckLabel is used to create a label for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckLabel : H5Label {
  mixin TABThis!(["form-imagecheck"]);

  mixin(TABTemplate!("ImageCheckLabel"));
}
///
unittest {
  assert(TABImageCheckLabel() == `<label class="form-imagecheck"></label>`);
}
