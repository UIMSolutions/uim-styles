module uim.bootstrap5.basic.components.forms.customcontrols.fileinput;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CustomFileInput : H5Input {
  mixin H5Template!(BS5CustomFileInput, ["custom-file-input"]);
}
///
unittest {
  assert(BS5CustomFileInput() == `<input class="custom-file-input">`);
  assert(BS5CustomFileInput(["testclass"]) == `<input class="custom-file-input testclass">`);
  assert(BS5CustomFileInput(["a":"b"]) == `<input class="custom-file-input" a="b">`);
  assert(BS5CustomFileInput(["testclass"], ["a":"b"]) == `<input class="custom-file-input testclass" a="b">`);
}
