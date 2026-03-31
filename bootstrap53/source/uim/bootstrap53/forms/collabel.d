module uim.bootstrap53.forms.collabel;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
  * Bootstrap 5.3's column label, for horizontal forms.
  * 
  * @see https://getbootstrap.com/docs/5.3/forms/layout/#horizontal-form
  *
  */
class BS53FormColLabel : H5Label {
  mixin H5Template!(BS53FormColLabel, ["col-form-label"], null);
}
///
unittest {
  assert(BS53FormColLabel() == `<label class="col-form-label"></label>`);
  assert(BS53FormColLabel(["testclass"]) == `<label class="col-form-label testclass"></label>`);
  assert(BS53FormColLabel(["a":"b"]) == `<label class="col-form-label" a="b"></label>`);
  assert(BS53FormColLabel(["testclass"], ["a":"b"]) == `<label class="col-form-label testclass" a="b"></label>`);  

  assert(BS53FormColLabel("Hello") == `<label class="col-form-label">Hello</label>`);
  assert(BS53FormColLabel(["testclass"], "Hello") == `<label class="col-form-label testclass">Hello</label>`);
  assert(BS53FormColLabel(["a":"b"], "Hello") == `<label class="col-form-label" a="b">Hello</label>`);
  assert(BS53FormColLabel(["testclass"], ["a":"b"], "Hello") == `<label class="col-form-label testclass" a="b">Hello</label>`);
}