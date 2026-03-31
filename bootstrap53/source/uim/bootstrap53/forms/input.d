module uim.bootstrap53.forms.input;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
  * Bootstrap 5.3's form input.
  * 
  * @see https://getbootstrap.com/docs/5.3/forms/form-control/
  */
class BS53FormInput : H5Input {
   mixin H5Template!(BS53FormInput, ["form-control"], null);
}
///
unittest {
  assert(BS53FormInput() == `<input class="form-control" />`);
  assert(BS53FormInput(["testclass"]) == `<input class="form-control testclass" />`);
  assert(BS53FormInput(["a":"b"]) == `<input class="form-control" a="b" />`);
  assert(BS53FormInput(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" />`);  
}