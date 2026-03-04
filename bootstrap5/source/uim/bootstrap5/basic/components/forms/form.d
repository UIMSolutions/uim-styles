module uim.bootstrap5.basic.components.forms.form;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/** 
 * Forms are used to collect user input. The <form> element wraps all the content of the form, including the input elements and submit button.
 * 
 * https://getbootstrap.com/docs/5.0/forms/overview/
 *
 * Note: The .form class is used to style the <form> element and its child elements. It provides a consistent look and feel for forms across different browsers and devices. The .form class applies basic styling to the form, such as margin, padding, and font styles, and it also provides a base for other form-related classes to build upon.
 * The .form class is typically used in conjunction with other form-related classes, such as .form-control, .form-group, and .form-check, to create more complex and customized forms.
 * Example:
 * <form class="form">
 *   <div class="mb-3">
 *     <label for="exampleInputEmail1" class="form-label">Email address</label>
 *     <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
 *     <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
 *   </div>
 *   <div class="mb-3">
 *     <label for="exampleInputPassword1" class="form-label">Password</label>
 *     <input type="password" class="form-control" id="exampleInputPassword1">
 *   </div>
 *   <button type="submit" class="btn btn-primary">Submit</button>
 * </form>
 */
class BS5Form : H5Form {
  mixin H5Template!(BS5Form, ["form"], null);

  // O inline(bool value = true) { return this.addClasses("form-inline"); }

  //   // mixin(MyContent!("group", "BS5FormGroup"));
  //   // mixin(MyContent!("label", "H5Label"));
  //   // mixin(MyContent!("submit", "BS5ButtonSubmit"));
  //   // mixin(MyContent!("reset", "BS5ButtonReset"));
}
///
unittest {
  assert(BS5Form() == `<form></form>`);
  assert(BS5Form(["testclass"]) == `<form class="form testclass"></form>`);
  assert(BS5Form(["a":"b"]) == `<form class="form" a="b"></form>`);
  assert(BS5Form(["testclass"], ["a":"b"]) == `<form class="form testclass" a="b"></form>`);

  assert(BS5Form("Hello") == `<form></form>`);
  assert(BS5Form(["testclass"], "Hello") == `<form class="form testclass"></form>`);
  assert(BS5Form(["a":"b"], "Hello") == `<form class="form" a="b"></form>`);
  assert(BS5Form(["testclass"], ["a":"b"], "Hello") == `<form class="form testclass" a="b"></form>`);

  // // assert(BS5Form.inline == `<form class="form-inline"></form>`);
}
