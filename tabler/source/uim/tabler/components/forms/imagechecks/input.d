module uim.tabler.components.forms.imagechecks.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckInput is used to create an input for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckInput : H5Input {
  mixin TABTemplate!(["form-imagecheck-input"]);

  mixin(TABTemplate!("ImageCheckInput"));
}
///
unittest {
  assert(TABImageCheckInput() == `<input class="form-imagecheck-input" />`);
}
