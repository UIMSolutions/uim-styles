module uim.bootstrap5.basic.components.forms.controls.textarea;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputTextarea : H5Textarea {
  mixin H5Template!(BS5InputTextarea, ["form-control"]);

  // mixin(MyAttribute!"rows");
  // mixin(MyAttribute!"cols");
}
///
unittest {
  assert(BS5InputTextarea() == `<textarea class="form-control"></textarea>`);
  assert(BS5InputTextarea(["testclass"]) == `<textarea class="form-control testclass"></textarea>`);
  assert(BS5InputTextarea(["a":"b"]) == `<textarea class="form-control" a="b"></textarea>`);
  assert(BS5InputTextarea(["testclass"], ["a":"b"]) == `<textarea class="form-control testclass" a="b"></textarea>`);

  assert(BS5InputTextarea("SomeContent") == `<textarea class="form-control">SomeContent</textarea>`);
  assert(BS5InputTextarea(["testclass"], "SomeContent") == `<textarea class="form-control testclass">SomeContent</textarea>`);
  assert(BS5InputTextarea(["a":"b"], "SomeContent") == `<textarea class="form-control" a="b">SomeContent</textarea>`);
  assert(BS5InputTextarea(["testclass"], ["a":"b"], "SomeContent") == `<textarea class="form-control testclass" a="b">SomeContent</textarea>`);
}
