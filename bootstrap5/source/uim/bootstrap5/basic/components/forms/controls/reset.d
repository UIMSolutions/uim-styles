module uim.bootstrap5.basic.components.forms.controls.reset;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

/**
  * Reset inputs are used to let users reset all the controls within a form to their initial values. They are only used inside a <form> element.
  * https://getbootstrap.com/docs/5.3/forms/controls/#reset-inputs
  *
  * Note: The :disabled pseudo-class applies to reset inputs, preventing users from clicking on them. However, browsers may still apply the :disabled styles to reset inputs, even though they are not actually disabled. To prevent this, you can use the .disabled class instead of the disabled attribute.
  * https://getbootstrap.com/docs/5.3/forms/controls/#disabled-states
  *
  * Note: Reset inputs are only used to reset the values of other controls within the same form. They do not have any effect on their own value, and they do not submit any data when clicked.
  * https://getbootstrap.com/docs/5.3/forms/controls/#reset-inputs
  */
class BS5InputReset : BS5Input {
  mixin H5Template!(BS5InputReset, ["form-control"], ["type":"reset"]);
}
///
unittest {
  assert(BS5InputReset() == `<input class="form-control" type="reset">`);
  assert(BS5InputReset(["testclass"]) == `<input class="form-control testclass" type="reset">`);
  assert(BS5InputReset(["a":"b"]) == `<input class="form-control" type="reset" a="b">`);
  assert(BS5InputReset(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="reset" a="b">`);
}
