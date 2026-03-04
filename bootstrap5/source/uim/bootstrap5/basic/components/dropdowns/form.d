module uim.bootstrap5.basic.components.dropdowns.form;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5DropdownForm : H5Form {
  mixin H5Template!(BS5DropdownForm);
}
///
unittest {
  assert(BS5DropdownForm() == `<form></form>`);
  assert(BS5DropdownForm(["testclass"]) == `<form class="testclass"></form>`);
  assert(BS5DropdownForm(["a":"b"]) == `<form a="b"></form>`);
  assert(BS5DropdownForm(["testclass"], ["a":"b"]) == `<form class="testclass" a="b"></form>`);

  assert(BS5DropdownForm("Hello") == `<form>Hello</form>`);
  assert(BS5DropdownForm(["testclass"], "Hello") == `<form class="testclass">Hello</form>`);
  assert(BS5DropdownForm(["a":"b"], "Hello") == `<form a="b">Hello</form>`);
  assert(BS5DropdownForm(["testclass"], ["a":"b"], "Hello") == `<form class="testclass" a="b">Hello</form>`);
}
