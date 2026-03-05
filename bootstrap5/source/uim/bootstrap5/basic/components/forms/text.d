module uim.bootstrap5.basic.components.forms.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5FormText : H5Small {
  mixin H5Template!(BS5FormText, ["form-text"]);
}
///
unittest {
  assert(BS5FormText() == `<small class="form-text"></small>`);
  assert(BS5FormText(["testclass"]) == `<small class="form-text testclass"></small>`);
  assert(BS5FormText(["a":"b"]) == `<small class="form-text" a="b"></small>`);
  assert(BS5FormText(["testclass"], ["a":"b"]) == `<small class="form-text testclass" a="b"></small>`);

  assert(BS5FormText("Hello") == `<small class="form-text">Hello</small>`);
  assert(BS5FormText(["testclass"], "Hello") == `<small class="form-text testclass">Hello</small>`);
  assert(BS5FormText(["a":"b"], "Hello") == `<small class="form-text" a="b">Hello</small>`);
  assert(BS5FormText(["testclass"], ["a":"b"], "Hello") == `<small class="form-text testclass" a="b">Hello</small>`);
}
