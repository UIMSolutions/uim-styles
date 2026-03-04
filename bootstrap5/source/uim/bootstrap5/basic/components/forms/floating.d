module uim.bootstrap5.basic.components.forms.floating;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/**
  * Bootstrap 5 floating label form group.
  * https://getbootstrap.com/docs/5.0/forms/floating-labels/
  *
  * Note: The .form-floating class is used to wrap a form control and its associated label into a single element, which then allows the label to float above the input when the user interacts with it.
  * The .form-floating class is typically used with text inputs, selects, and textareas, but it can be used with any form control that supports the :placeholder-shown pseudo-class.
  * To create a floating label form group, you need to wrap your form control and its associated label inside a container element with the .form-floating class. The form control should have a placeholder attribute, and the label should be associated with the form control using the for attribute.
  * Example:
  * <div class="form-floating">
  *   <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
  *   <label for="floatingInput">Email address</label>
  * </div>
  */
class BS5FormFloating : H5Div {
  mixin H5Template!(BS5FormFloating, ["form-floating"], null);
  // // mixin(MyContent!("label", "BS5FormLabel"));
}
///
unittest {
  assert(BS5FormFloating() == `<div class="form-floating"></div>`);
  assert(BS5FormFloating(["testclass"]) == `<div class="form-floating testclass"></div>`);
  assert(BS5FormFloating(["a": "b"]) == `<div class="form-floating" a="b"></div>`);
  assert(BS5FormFloating(["testclass"], ["a": "b"]) == `<div class="form-floating testclass" a="b"></div>`);

  assert(BS5FormFloating("Hello") == `<div class="form-floating"></div>`);
  assert(BS5FormFloating(["testclass"], "Hello") == `<div class="form-floating testclass"></div>`);
  assert(BS5FormFloating(["a": "b"], "Hello") == `<div class="form-floating" a="b"></div>`);
  assert(BS5FormFloating(["testclass"], ["a": "b"], "Hello") == `<div class="form-floating testclass" a="b"></div>`);

  // // assert(BS5FormFloating().label == `<div class="form-floating"><label></label></div>`);
}
