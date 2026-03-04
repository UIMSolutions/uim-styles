module uim.bootstrap5.basic.components.forms.controls.file;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputFile : BS5Input {
  mixin H5Template!(BS5InputFile, ["form-control"], ["type":"file"]);
}
///
unittest {
  assert(BS5InputFile() == `<input class="form-control" type="file" />`);
  assert(BS5InputFile(["testclass"]) == `<input class="form-control testclass" type="file" />`);
  assert(BS5InputFile(["a":"b"]) == `<input class="form-control" a="b" type="file" />`);
  assert(BS5InputFile(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="file" />`);
}
