module uim.tabler.components.forms.colorinputs.radio;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInputRadio is used to create a radio input for a form color input. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInputRadio : H5Radio {
  mixin TABTemplate!(["form-colorinput-input"]);
  
  mixin(TABTemplate!("FormColorInputRadio"));
}
///
unittest {
  assert(TABFormColorInputRadio() == `<input class="form-colorinput-input" type="radio" />`);
}



