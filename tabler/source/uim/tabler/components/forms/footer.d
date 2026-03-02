module uim.tabler.components.forms.footer;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABFormFooter : H5Div {
  mixin H5Template!(TABFormFooter, ["form-footer"]);
  mixin(HtmlMethods!TABFormFooter); 
}
///
unittest {
  assert(TABFormFooter() == `<div class="form-footer"></div>`);
  assert(TABFormFooter(["testclass"]) == `<div class="form-footer testclass"></div>`);
  assert(TABFormFooter(["a": "b"]) == `<div class="form-footer" a="b"></div>`);
  assert(TABFormFooter(["testclass"], ["a": "b"]) == `<div class="form-footer testclass" a="b"></div>`);  

  assert(TABFormFooter("Hello") == `<div class="form-footer">Hello</div>`);
  assert(TABFormFooter(["testclass"], "Hello") == `<div class="form-footer testclass">Hello</div>`);
  assert(TABFormFooter(["a": "b"], "Hello") == `<div class="form-footer" a="b">Hello</div>`);
  assert(TABFormFooter(["testclass"], ["a": "b"], "Hello") == `<div class="form-footer testclass" a="b">Hello</div>`);
}
