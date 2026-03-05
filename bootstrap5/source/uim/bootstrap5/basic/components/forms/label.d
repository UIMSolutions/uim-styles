module uim.bootstrap5.basic.components.forms.label;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/**
  * https://getbootstrap.com/docs/5.0/forms/floating-labels/
  *
  * Note: The .form-label class is used to style labels for form controls. It provides consistent styling and spacing for labels across different types of form controls, such as text inputs, selects, and textareas. The .form-label class applies basic styling to the label, such as font size, weight, and
  * margin, and it also provides a base for other label-related classes to build upon. The .form-label class is typically used in conjunction with other form-related classes, such as .form-control and .form-floating, to create more complex and customized forms.
  * Example:
  * <div class="mb-3">
  *   <label for="exampleInputEmail1" class="form-label">Email address</label>
  *   <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  *   <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  * </div>
  * <div class="mb-3">
  *   <label for="exampleInputPassword1" class="form-label">Password</label>
  *   <input type="password" class="form-control" id="exampleInputPassword1">
  * </div>
  * <button type="submit" class="btn btn-primary">Submit</button>   
  */
class BS5FormLabel : H5Label {
  mixin H5Template!(BS5FormLabel, ["form-label"], null);
}
///
unittest {
  assert(BS5FormLabel() == `<label class="form-label"></label>`);
  assert(BS5FormLabel(["testclass"]) == `<label class="form-label testclass"></label>`);
  assert(BS5FormLabel(["a":"b"]) == `<label class="form-label" a="b"></label>`);
  assert(BS5FormLabel(["testclass"], ["a":"b"]) == `<label class="form-label testclass" a="b"></label>`);

  assert(BS5FormLabel("Hello") == `<label class="form-label">Hello</label>`);
  assert(BS5FormLabel(["testclass"], "Hello") == `<label class="form-label testclass">Hello</label>`);
  assert(BS5FormLabel(["a":"b"], "Hello") == `<label class="form-label" a="b">Hello</label>`);
  assert(BS5FormLabel(["testclass"], ["a":"b"], "Hello") == `<label class="form-label testclass" a="b">Hello</label>`);
}
