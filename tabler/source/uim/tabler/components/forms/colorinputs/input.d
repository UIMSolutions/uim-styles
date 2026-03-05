module uim.tabler.components.forms.colorinputs.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInput is used to create a color input. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInput : H5Input {
  mixin H5Template!(TABFormColorInput, ["form-colorinput-input"]);
}
///
unittest {
  assert(TABFormColorInput() == `<input class="form-colorinput-input" />`);
  assert(TABFormColorInput(["testclass"]) == `<input class="form-colorinput-input testclass" />`);
  assert(TABFormColorInput(["a": "b"]) == `<input class="form-colorinput-input" a="b" />`);
  assert(TABFormColorInput(["testclass"], ["a": "b"]) == `<input class="form-colorinput-input testclass" a="b" />`);
}



