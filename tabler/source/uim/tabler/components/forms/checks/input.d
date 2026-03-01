module uim.tabler.components.forms.checks.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Tabler form check input component.
 * https://tabler.io/docs/forms#checks
 */
class TABFormCheckInput : H5Input {
  mixin TABThis!(["form-check-input"]);

  mixin(TABTemplate!("FormCheckInput"));
}
///
unittest {
  assert(TABFormCheckInput() == `<input class="form-check-input" />`);
}



