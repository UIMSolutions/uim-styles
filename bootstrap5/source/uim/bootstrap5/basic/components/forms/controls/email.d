module uim.bootstrap5.basic.components.forms.controls.email;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputEmail : BS5Input {
  mixin H5Template!(BS5InputEmail, null, ["type":"email"]);
}
///
unittest {
  assert(BS5InputEmail() == `<input class="form-control" type="email" />`);
  assert(BS5InputEmail(["testclass"]) == `<input class="form-control testclass" type="email" />`);
  assert(BS5InputEmail(["a":"b"]) == `<input class="form-control" a="b" type="email" />`);
  assert(BS5InputEmail(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="email" />`);
}
