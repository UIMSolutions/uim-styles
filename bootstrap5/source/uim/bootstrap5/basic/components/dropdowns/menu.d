module uim.bootstrap5.basic.components.dropdowns.menu;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

// @StringAttribute("labelledBy", "aria-labelledby");
class BS5DropdownMenu : H5Div {
  mixin H5Template!(BS5DropdownMenu, ["dropdown-menu"]);

  auto addDivider() {
    return new BS5DropdownDivider;
  }

  auto addHeader() {
    return new BS5DropdownHeader;
  }

  auto addItem() {
    return new BS5DropdownItem;
  }

  auto addLink() {
    return new BS5DropdownLink;
  }

  auto addForm() {
    return new BS5DropdownForm;
  }

  auto addText() {
    return new BS5DropdownText;
  }
}
///
unittest {
  assert(BS5DropdownMenu() == `<div class="dropdown-menu"></div>`);
  assert(BS5DropdownMenu(["testclass"]) == `<div class="dropdown-menu testclass"></div>`);
  assert(BS5DropdownMenu(["a":"b"]) == `<div class="dropdown-menu" a="b"></div>`);
  assert(BS5DropdownMenu(["testclass"], ["a":"b"]) == `<div class="dropdown-menu testclass" a="b"></div>`);

  assert(BS5DropdownMenu("Hello") == `<div class="dropdown-menu">Hello</div>`);
  assert(BS5DropdownMenu(["testclass"], "Hello") == `<div class="dropdown-menu testclass">Hello</div>`);
  assert(BS5DropdownMenu(["a":"b"], "Hello") == `<div class="dropdown-menu" a="b">Hello</div>`);
  assert(BS5DropdownMenu(["testclass"], ["a":"b"], "Hello") == `<div class="dropdown-menu testclass" a="b">Hello</div>`);

  // assert(BS5DropdownMenu().link == `<div class="dropdown-menu"><a class="dropdown-item"></a></div>`);
  // assert(BS5DropdownMenu().form == `<div class="dropdown-menu"><form></form></div>`);
}
