module source.uim.bootstrap5.basic.components.dropdowns.list;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5DropdownList : H5Ul {
  mixin H5Template!(BS5DropdownList, ["dropdown-menu"]);
}
///
unittest {
  assert(BS5DropdownList() == `<ul class="dropdown-menu"></ul>`);
  assert(BS5DropdownList(["testclass"]) == `<ul class="dropdown-menu testclass"></ul>`);
  assert(BS5DropdownList(["a":"b"]) == `<ul class="dropdown-menu" a="b"></ul>`);
  assert(BS5DropdownList(["testclass"], ["a":"b"]) == `<ul class="dropdown-menu testclass" a="b"></ul>`);

  assert(BS5DropdownList("Hello") == `<ul class="dropdown-menu">Hello</ul>`);
  assert(BS5DropdownList(["testclass"], "Hello") == `<ul class="dropdown-menu testclass">Hello</ul>`);
  assert(BS5DropdownList(["a":"b"], "Hello") == `<ul class="dropdown-menu" a="b">Hello</ul>`);
  assert(BS5DropdownList(["testclass"], ["a":"b"], "Hello") == `<ul class="dropdown-menu testclass" a="b">Hello</ul>`);
}
