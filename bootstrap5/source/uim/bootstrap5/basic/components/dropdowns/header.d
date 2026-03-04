module uim.bootstrap5.basic.components.dropdowns.header;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5DropdownHeader : H5H6 {
  mixin H5Template!(BS5DropdownHeader, ["dropdown-header"]);
}
///
unittest {
  assert(BS5DropdownHeader() == `<h6 class="dropdown-header"></h6>`);
  assert(BS5DropdownHeader(["testclass"]) == `<h6 class="dropdown-header testclass"></h6>`);
  assert(BS5DropdownHeader(["a":"b"]) == `<h6 class="dropdown-header" a="b"></h6>`);
  assert(BS5DropdownHeader(["testclass"], ["a":"b"]) == `<h6 class="dropdown-header testclass" a="b"></h6>`);

  assert(BS5DropdownHeader("Hello") == `<h6 class="dropdown-header">Hello</h6>`);
  assert(BS5DropdownHeader(["testclass"], "Hello") == `<h6 class="dropdown-header testclass">Hello</h6>`);
  assert(BS5DropdownHeader(["a":"b"], "Hello") == `<h6 class="dropdown-header" a="b">Hello</h6>`);
  assert(BS5DropdownHeader(["testclass"], ["a":"b"], "Hello") == `<h6 class="dropdown-header testclass" a="b">Hello</h6>`);
}
