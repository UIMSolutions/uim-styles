module uim.bootstrap53.forms.label;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
  * Bootstrap 5.3's form label.
  * 
  * @see https://getbootstrap.com/docs/5.3/forms/overview/#form-labels
  *
  */
class BS53FormLabel : H5Label {
  mixin H5Template!(BS53FormLabel, ["form-label"], null);
}
///
unittest {
  assert(BS53FormLabel() == `<label class="form-label"></label>`);
  assert(BS53FormLabel(["testclass"]) == `<label class="form-label testclass"></label>`);
  assert(BS53FormLabel(["a":"b"]) == `<label class="form-label" a="b"></label>`);
  assert(BS53FormLabel(["testclass"], ["a":"b"]) == `<label class="form-label testclass" a="b"></label>`);  

  assert(BS53FormLabel("Hello") == `<label class="form-label">Hello</label>`);
  assert(BS53FormLabel(["testclass"], "Hello") == `<label class="form-label testclass">Hello</label>`);
  assert(BS53FormLabel(["a":"b"], "Hello") == `<label class="form-label" a="b">Hello</label>`);
  assert(BS53FormLabel(["testclass"], ["a":"b"], "Hello") == `<label class="form-label testclass" a="b">Hello</label>`);
}