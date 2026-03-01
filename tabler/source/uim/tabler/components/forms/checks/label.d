module uim.tabler.components.forms.checks.label;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormCheckLabel is used to create a label for a form check. It is used in the FormCheck component.
 * https://tabler.io/docs/forms#checks
 */
class TABFormCheckLabel : H5Span {
  mixin TABThis!(["form-check-label"]);
 
  mixin(TABTemplate!("FormCheckLabel"));
}

///
unittest {
  assert(TABFormCheckLabel() == `<span class="form-check-label"></span>`);
}



