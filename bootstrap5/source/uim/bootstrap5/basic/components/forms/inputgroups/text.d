module uim.bootstrap5.basic.components.forms.inputgroups.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5InputGroupText : H5Div {
  mixin H5Template!(BS5InputGroupText, ["input-group-text"]);
}
///
unittest {
  assert(BS5InputGroupText() == `<div class="input-group-text"></div>`);
  assert(BS5InputGroupText(["testclass"]) == `<div class="input-group-text testclass"></div>`);
  assert(BS5InputGroupText(["a":"b"]) == `<div class="input-group-text" a="b"></div>`);
  assert(BS5InputGroupText(["testclass"], ["a":"b"]) == `<div class="input-group-text testclass" a="b"></div>`);

  assert(BS5InputGroupText("SomeContent") == `<div class="input-group-text">SomeContent</div>`);
  assert(BS5InputGroupText(["testclass"], "SomeContent") == `<div class="input-group-text testclass">SomeContent</div>`);
  assert(BS5InputGroupText(["a":"b"], "SomeContent") == `<div class="input-group-text" a="b">SomeContent</div>`);
  assert(BS5InputGroupText(["testclass"], ["a":"b"], "SomeContent") == `<div class="input-group-text testclass" a="b">SomeContent</div>`);
}