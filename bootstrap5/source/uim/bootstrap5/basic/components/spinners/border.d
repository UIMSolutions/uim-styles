module uim.bootstrap5.basic.components.spinners.border;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/** 
  * The `.spinner-border` class is used to create a border spinner, which is a type of loading indicator that consists of a rotating border. It is typically used to indicate that a process is ongoing and the user should wait for it to complete.
  * 
  * In Bootstrap 5, you can create a border spinner by using the `.spinner-border` class on a `<div>` element. This class applies specific styles to create the spinning effect and can be customized with additional classes for size and color.
  * 
  * Example usage:
  * ```html
  * <div class="spinner-border" role="status">
  *   <span class="visually-hidden">Loading...</span>
  * </div>
  * ```
  */
class BS5SpinnerBorder : H5Div {
  mixin H5This!(BS5SpinnerBorder, ["spinner-border"]);
}
///
unittest {
  assert(BS5SpinnerBorder() == `<div class="spinner-border"></div>`);
  assert(BS5SpinnerBorder(["testclass"]) == `<div class="spinner-border testclass"></div>`);
  assert(BS5SpinnerBorder(["a":"b"]) == `<div class="spinner-border" a="b"></div>`);
  assert(BS5SpinnerBorder(["testclass"], ["a":"b"]) == `<div class="spinner-border testclass" a="b"></div>`);

  assert(BS5SpinnerBorder("Hello") == `<div class="spinner-border">Hello</div>`);
  assert(BS5SpinnerBorder(["testclass"], "Hello") == `<div class="spinner-border testclass">Hello</div>`);
  assert(BS5SpinnerBorder(["a":"b"], "Hello") == `<div class="spinner-border" a="b">Hello</div>`);
  assert(BS5SpinnerBorder(["testclass"], ["a":"b"], "Hello") == `<div class="spinner-border testclass" a="b">Hello</div>`);
}
