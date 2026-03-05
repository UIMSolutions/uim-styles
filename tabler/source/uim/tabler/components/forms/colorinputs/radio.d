module uim.tabler.components.forms.colorinputs.radio;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInputRadio is used to create a radio input for a form color input. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInputRadio : H5Radio {
  mixin H5Template!(TABFormColorInputRadio, ["form-colorinput-input"]);
}
///
unittest {
  assert(TABFormColorInputRadio() == `<input class="form-colorinput-input" type="radio" />`);
  assert(TABFormColorInputRadio(["testclass"]) == `<input class="form-colorinput-input testclass" type="radio" />`);
  assert(TABFormColorInputRadio(["a": "b"]) == `<input class="form-colorinput-input" a="b" type="radio" />`);
  assert(TABFormColorInputRadio(["testclass"], ["a": "b"]) == `<input class="form-colorinput-input testclass" a="b" type="radio" />`);
}



