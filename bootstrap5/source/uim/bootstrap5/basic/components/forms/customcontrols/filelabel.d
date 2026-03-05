module uim.bootstrap5.basic.components.forms.customcontrols.filelabel;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CustomFileLabel : H5Label {
  mixin H5Template!(BS5CustomFileLabel, ["custom-file-label"]);
}
///
unittest {
  assert(BS5CustomFileLabel() == `<label class="custom-file-label"></label>`);
  assert(BS5CustomFileLabel(["testclass"]) == `<label class="custom-file-label testclass"></label>`);
  assert(BS5CustomFileLabel(["a":"b"]) == `<label class="custom-file-label" a="b"></label>`);
  assert(BS5CustomFileLabel(["testclass"], ["a":"b"]) == `<label class="custom-file-label testclass" a="b"></label>`);

  assert(BS5CustomFileLabel("SomeContent") == `<label class="custom-file-label">SomeContent</label>`);
  assert(BS5CustomFileLabel(["testclass"], "SomeContent") == `<label class="custom-file-label testclass">SomeContent</label>`);
  assert(BS5CustomFileLabel(["a":"b"], "SomeContent") == `<label class="custom-file-label" a="b">SomeContent</label>`);
  assert(BS5CustomFileLabel(["testclass"], ["a":"b"], "SomeContent") == `<label class="custom-file-label testclass" a="b">SomeContent</label>`);
}
