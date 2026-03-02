module uim.tabler.components.forms.colorinputs.color;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * FormColorInputColor is used to create a color input color. It is used in the FormColorInput component.
 * https://tabler.io/docs/forms#color-inputs
 */
class TABFormColorInputColor : H5Span {
  mixin H5Template!(TABFormColorInputColor, ["form-colorinput-color"]);
  mixin(HtmlMethods!TABFormColorInputColor);
}
///
unittest {
  assert(TABFormColorInputColor() == `<span class="form-colorinput-color"></span>`);
  assert(TABFormColorInputColor(["testclass"]) == `<span class="form-colorinput-color testclass"></span>`);
  assert(TABFormColorInputColor(["a": "b"]) == `<span class="form-colorinput-color" a="b"></span>`);
  assert(TABFormColorInputColor(["testclass"], ["a": "b"]) == `<span class="form-colorinput-color testclass" a="b"></span>`);

  assert(TABFormColorInputColor("Hello") == `<span class="form-colorinput-color">Hello</span>`);
  assert(TABFormColorInputColor(["testclass"], "Hello") == `<span class="form-colorinput-color testclass">Hello</span>`);
  assert(TABFormColorInputColor(["a": "b"], "Hello") == `<span class="form-colorinput-color" a="b">Hello</span>`);
  assert(TABFormColorInputColor(["testclass"], ["a": "b"], "Hello") == `<span class="form-colorinput-color testclass" a="b">Hello</span>`);
}



