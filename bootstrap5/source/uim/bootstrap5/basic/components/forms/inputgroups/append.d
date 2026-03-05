module uim.bootstrap5.basic.components.forms.inputgroups.append;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5InputGroupAppend : H5Div {
  mixin H5Template!(BS5InputGroupAppend, ["input-group-append"]);

  // // mixin(MyContent!("button", "BS5Button"));

  // // mixin(MyContent!("text", "BS5InputGroupText"));
}
///
unittest {
  assert(BS5InputGroupAppend() == `<div class="input-group-append"></div>`);
  assert(BS5InputGroupAppend(["testclass"]) == `<div class="input-group-append testclass"></div>`); 
  assert(BS5InputGroupAppend(["a":"b"]) == `<div class="input-group-append" a="b"></div>`);
  assert(BS5InputGroupAppend(["testclass"], ["a":"b"]) == `<div class="input-group-append testclass" a="b"></div>`);

  assert(BS5InputGroupAppend("SomeContent") == `<div class="input-group-append">SomeContent</div>`);
  assert(BS5InputGroupAppend(["testclass"], "SomeContent") == `<div class="input-group-append testclass">SomeContent</div>`); 
  assert(BS5InputGroupAppend(["a":"b"], "SomeContent") == `<div class="input-group-append" a="b">SomeContent</div>`);
  assert(BS5InputGroupAppend(["testclass"], ["a":"b"], "SomeContent") == `<div class="input-group-append testclass" a="b">SomeContent</div>`);
}
