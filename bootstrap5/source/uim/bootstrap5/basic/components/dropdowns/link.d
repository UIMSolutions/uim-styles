module uim.bootstrap5.basic.components.dropdowns.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5DropdownLink : H5A {
  mixin H5Template!(BS5DropdownLink, ["dropdown-item"]);
}
///
unittest {
  assert(BS5DropdownLink() == `<a class="dropdown-item"></a>`);
  assert(BS5DropdownLink(["testclass"]) == `<a class="dropdown-item testclass"></a>`);
  assert(BS5DropdownLink(["a":"b"]) == `<a class="dropdown-item" a="b"></a>`);
  assert(BS5DropdownLink(["testclass"], ["a":"b"]) == `<a class="dropdown-item testclass" a="b"></a>`);

  assert(BS5DropdownLink("Hello") == `<a class="dropdown-item">Hello</a>`);
  assert(BS5DropdownLink(["testclass"], "Hello") == `<a class="dropdown-item testclass">Hello</a>`);
  assert(BS5DropdownLink(["a":"b"], "Hello") == `<a class="dropdown-item" a="b">Hello</a>`);
  assert(BS5DropdownLink(["testclass"], ["a":"b"], "Hello") == `<a class="dropdown-item testclass" a="b">Hello</a>`);
}
