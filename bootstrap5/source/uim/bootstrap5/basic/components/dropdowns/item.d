module uim.bootstrap5.basic.components.dropdowns.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5DropdownItem : H5Div {
  mixin H5Template!(BS5DropdownItem, ["dropdown-item"]);
}
///
unittest {
  assert(BS5DropdownItem() == `<div class="dropdown-item"></div>`);
  assert(BS5DropdownItem(["testclass"]) == `<div class="dropdown-item testclass"></div>`);
  assert(BS5DropdownItem(["a":"b"]) == `<div class="dropdown-item" a="b"></div>`);
  assert(BS5DropdownItem(["testclass"], ["a":"b"]) == `<div class="dropdown-item testclass" a="b"></div>`); 

  assert(BS5DropdownItem("Hello") == `<div class="dropdown-item">Hello</div>`);
  assert(BS5DropdownItem(["testclass"], "Hello") == `<div class="dropdown-item testclass">Hello</div>`);
  assert(BS5DropdownItem(["a":"b"], "Hello") == `<div class="dropdown-item" a="b">Hello</div>`);
  assert(BS5DropdownItem(["testclass"], ["a":"b"], "Hello") == `<div class="dropdown-item testclass" a="b">Hello</div>`);
}
