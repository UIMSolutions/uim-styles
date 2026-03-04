module uim.bootstrap5.basic.components.dropdowns.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5DropdownButton : H5Button {
  mixin H5Template!(BS5DropdownButton, ["dropdown-item"]);
}
///
unittest {
  assert(BS5DropdownButton() == `<button class="dropdown-item"></button>`);
  assert(BS5DropdownButton(["testclass"]) == `<button class="dropdown-item testclass"></button>`);
  assert(BS5DropdownButton(["a":"b"]) == `<button class="dropdown-item" a="b"></button>`);
  assert(BS5DropdownButton(["testclass"], ["a":"b"]) == `<button class="dropdown-item testclass" a="b"></button>`);

  assert(BS5DropdownButton("Hello") == `<button class="dropdown-item">Hello</button>`);
  assert(BS5DropdownButton(["testclass"], "Hello") == `<button class="dropdown-item testclass">Hello</button>`);
  assert(BS5DropdownButton(["a":"b"], "Hello") == `<button class="dropdown-item" a="b">Hello</button>`);
  assert(BS5DropdownButton(["testclass"], ["a":"b"], "Hello") == `<button class="dropdown-item testclass" a="b">Hello</button>`);
}
