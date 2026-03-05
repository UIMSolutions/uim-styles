module uim.bootstrap5.basic.components.forms.controls.password;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputPassword : BS5Input {
  mixin H5Template!(BS5InputPassword, ["form-control"], ["type":"password"]);
}
///
unittest {
  assert(BS5InputPassword() == `<input class="form-control" type="password">`);
}
