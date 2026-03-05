module uim.bootstrap5.basic.components.forms.customcontrols.file;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CustomFile : H5Div {
  mixin H5Template!(BS5CustomFile, ["custom-file"]);

  // mixin(MyContent!("input", "BS5CustomFileInput"));
  // mixin(MyContent!("label", "BS5CustomFileLabel"));
}
///
unittest {
  assert(BS5CustomFile() == `<div class="custom-file"></div>`);
  assert(BS5CustomFile(["testclass"]) == `<div class="custom-file testclass"></div>`);
  assert(BS5CustomFile(["a":"b"]) == `<div class="custom-file" a="b"></div>`);
  assert(BS5CustomFile(["testclass"], ["a":"b"]) == `<div class="custom-file testclass" a="b"></div>`);

  assert(BS5CustomFile("SomeContent") == `<div class="custom-file">SomeContent</div>`);
  assert(BS5CustomFile(["testclass"], "SomeContent") == `<div class="custom-file testclass">SomeContent</div>`);
  assert(BS5CustomFile(["a":"b"], "SomeContent") == `<div class="custom-file" a="b">SomeContent</div>`);
  assert(BS5CustomFile(["testclass"], ["a":"b"], "SomeContent") == `<div class="custom-file testclass" a="b">SomeContent</div>`);
}
