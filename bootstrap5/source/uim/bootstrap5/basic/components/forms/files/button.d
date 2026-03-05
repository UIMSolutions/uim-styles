module uim.bootstrap5.basic.components.forms.files.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5FormFileButton : H5Span {
  mixin H5Template!(BS5FormFileButton, ["form-file-button"]);
}
///
unittest {
  assert(BS5FormFileButton() == `<span class="form-file-button"></span>`);
  assert(BS5FormFileButton(["testclass"]) == `<span class="form-file-button testclass"></span>`);
  assert(BS5FormFileButton(["a":"b"]) == `<span class="form-file-button" a="b"></span>`);
  assert(BS5FormFileButton(["testclass"], ["a":"b"]) == `<span class="form-file-button testclass" a="b"></span>`);

  assert(BS5FormFileButton("SomeContent") == `<span class="form-file-button">SomeContent</span>`);
  assert(BS5FormFileButton(["testclass"], "SomeContent") == `<span class="form-file-button testclass">SomeContent</span>`);
  assert(BS5FormFileButton(["a":"b"], "SomeContent") == `<span class="form-file-button" a="b">SomeContent</span>`);
  assert(BS5FormFileButton(["testclass"], ["a":"b"], "SomeContent") == `<span class="form-file-button testclass" a="b">SomeContent</span>`);
}
