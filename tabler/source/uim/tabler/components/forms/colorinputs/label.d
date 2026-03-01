module uim.tabler.components.forms.colorinputs.label;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInputLabel is used to create a label for a form color input. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInputLabel : H5Label {
  mixin TABThis!(["form-colorinput-label"]);
 
  mixin(TABTemplate!("FormColorInputLabel"));
}
///
unittest {
  assert(TABFormColorInputLabel() == `<label class="form-colorinput-label"></label>`);
}



