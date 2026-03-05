module uim.bootstrap5.basic.components.forms.files.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5FormFileText : H5Span {
  mixin H5Template!(BS5FormFileText, ["form-file-text"]);
}
///
unittest {
  assert(BS5FormFileText() == `<span class="form-file-text"></span>`);
  assert(BS5FormFileText(["testclass"]) == `<span class="form-file-text testclass"></span>`);
  assert(BS5FormFileText(["a":"b"]) == `<span class="form-file-text" a="b"></span>`);
  assert(BS5FormFileText(["testclass"], ["a":"b"]) == `<span class="form-file-text testclass" a="b"></span>`);

  assert(BS5FormFileText("SomeContent") == `<span class="form-file-text">SomeContent</span>`);
  assert(BS5FormFileText(["testclass"], "SomeContent") == `<span class="form-file-text testclass">SomeContent</span>`);
  assert(BS5FormFileText(["a":"b"], "SomeContent") == `<span class="form-file-text" a="b">SomeContent</span>`);
  assert(BS5FormFileText(["testclass"], ["a":"b"], "SomeContent") == `<span class="form-file-text testclass" a="b">SomeContent</span>`);
}
