module uim.tabler.components.forms.colorinputs.label;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInputLabel is used to create a label for a form color input. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInputLabel : H5Label {
  mixin H5Template!(TABFormColorInputLabel, ["form-colorinput-label"]);
  mixin(HtmlMethods!TABFormColorInputLabel);
}
///
unittest {
  assert(TABFormColorInputLabel() == `<label class="form-colorinput-label"></label>`);
  assert(TABFormColorInputLabel(["testclass"]) == `<label class="form-colorinput-label testclass"></label>`);
  assert(TABFormColorInputLabel(["a": "b"]) == `<label class="form-colorinput-label" a="b"></label>`);
  assert(TABFormColorInputLabel(["testclass"], ["a": "b"]) == `<label class="form-colorinput-label testclass" a="b"></label>`);

  assert(TABFormColorInputLabel("Hello") == `<label class="form-colorinput-label">Hello</label>`);
  assert(TABFormColorInputLabel(["testclass"], "Hello") == `<label class="form-colorinput-label testclass">Hello</label>`);
  assert(TABFormColorInputLabel(["a": "b"], "Hello") == `<label class="form-colorinput-label" a="b">Hello</label>`);
  assert(TABFormColorInputLabel(["testclass"], ["a": "b"], "Hello") == `<label class="form-colorinput-label testclass" a="b">Hello</label>`);
}



