module uim.tabler.components.forms.colorinputs.color;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInputColor is used to create a color input color. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInputColor : H5Span {
  mixin TABTemplate!(["form-colorinput-color"]);
 
  mixin(TABTemplate!("FormColorInputColor"));
}
///
unittest {
  assert(TABFormColorInputColor() == `<span class="form-colorinput-color"></span>`);
}



