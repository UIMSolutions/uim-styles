module uim.tabler.components.forms.colorinputs.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInput is used to create a color input. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInput : H5Input {
  mixin TABTemplate!(["form-colorinput-input"]);

  mixin(TABTemplate!("FormColorInput"));
}
///
unittest {
  assert(TABFormColorInput() == `<input class="form-colorinput-input" />`);
}



