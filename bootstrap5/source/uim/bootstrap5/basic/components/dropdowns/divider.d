module uim.bootstrap5.basic.components.dropdowns.divider;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5DropdownDivider : H5Div {
  mixin H5Template!(BS5DropdownDivider, ["dropdown-divider"]);
}
///
unittest {
  assert(BS5DropdownDivider() == `<div class="dropdown-divider"></div>`);
  assert(BS5DropdownDivider(["testclass"]) == `<div class="dropdown-divider testclass"></div>`);
  assert(BS5DropdownDivider(["a":"b"]) == `<div class="dropdown-divider" a="b"></div>`);
  assert(BS5DropdownDivider(["testclass"], ["a":"b"]) == `<div class="dropdown-divider testclass" a="b"></div>`);

  assert(BS5DropdownDivider("Hello") == `<div class="dropdown-divider">Hello</div>`);
  assert(BS5DropdownDivider(["testclass"], "Hello") == `<div class="dropdown-divider testclass">Hello</div>`);
  assert(BS5DropdownDivider(["a":"b"], "Hello") == `<div class="dropdown-divider" a="b">Hello</div>`);
  assert(BS5DropdownDivider(["testclass"], ["a":"b"], "Hello") == `<div class="dropdown-divider testclass" a="b">Hello</div>`);
}
