module uim.bootstrap5.basic.components.forms.controls.image;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputImage : H5Input {
  mixin H5Template!(BS5InputImage, ["form-control"], ["type":"image"]);
}
///
unittest {
  assert(BS5InputImage() == `<input class="form-control" type="image" />`);
  assert(BS5InputImage(["testclass"]) == `<input class="form-control testclass" type="image" />`);
  assert(BS5InputImage(["a":"b"]) == `<input class="form-control" a="b" type="image" />`);
  assert(BS5InputImage(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="image" />`);
}
