module uim.bootstrap53.forms.textarea;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
  * Bootstrap 5.3's textarea form control.
  * 
  * @see https://getbootstrap.com/docs/5.3/forms/form-control/#textarea
  *
  */
class BS53FormTextarea : H5Textarea {
   mixin H5Template!(BS53FormTextarea, ["form-control"], null);
}
///
unittest {
  assert(BS53FormTextarea() == `<textarea class="form-control"></textarea>`);
  assert(BS53FormTextarea(["testclass"]) == `<textarea class="form-control testclass"></textarea>`);
  assert(BS53FormTextarea(["a":"b"]) == `<textarea class="form-control" a="b"></textarea>`);
  assert(BS53FormTextarea(["testclass"], ["a":"b"]) == `<textarea class="form-control testclass" a="b"></textarea>`);  

  assert(BS53FormTextarea("Hello") == `<textarea class="form-control">Hello</textarea>`);
  assert(BS53FormTextarea(["testclass"], "Hello") == `<textarea class="form-control testclass">Hello</textarea>`);
  assert(BS53FormTextarea(["a":"b"], "Hello") == `<textarea class="form-control" a="b">Hello</textarea>`);
  assert(BS53FormTextarea(["testclass"], ["a":"b"], "Hello") == `<textarea class="form-control testclass" a="b">Hello</textarea>`);
}