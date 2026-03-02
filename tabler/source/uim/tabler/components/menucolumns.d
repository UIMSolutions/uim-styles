module uim.tabler.components.menucolumns;

import uim.tabler;

mixin(ShowModule!());

@safe:

/**
 * Dropdown menu columns.
 * https://tabler.io/docs/components/dropdown-menu-columns/
 */
class TABDropdownMenuColumns : H5Div {
  mixin H5Template!(TABDropdownMenuColumns, ["dropdown-menu-columns"]);
  mixin(HtmlMethods!TABDropdownMenuColumns);

  TABDropdownMenuColumns addColumn(TABDropdownMenuColumn column) {
    addContent(column);
    return this;
  }
}
///
unittest {
  assert(TABDropdownMenuColumns() == `<div class="dropdown-menu-columns"></div>`);
  assert(TABDropdownMenuColumns(["testclass"]) == `<div class="dropdown-menu-columns testclass"></div>`);
  assert(TABDropdownMenuColumns(["a": "b"]) == `<div class="dropdown-menu-columns" a="b"></div>`);
  assert(TABDropdownMenuColumns(["testclass"], ["a": "b"]) == `<div class="dropdown-menu-columns testclass" a="b"></div>`);

  assert(TABDropdownMenuColumns("Hello") == `<div class="dropdown-menu-columns">Hello</div>`);
  assert(TABDropdownMenuColumns(["testclass"], "Hello") == `<div class="dropdown-menu-columns testclass">Hello</div>`);
  assert(TABDropdownMenuColumns(["a": "b"], "Hello") == `<div class="dropdown-menu-columns" a="b">Hello</div>`);
  assert(TABDropdownMenuColumns(["testclass"], ["a": "b"], "Hello") == `<div class="dropdown-menu-columns testclass" a="b">Hello</div>`);

  assert(TABDropdownMenuColumns().addColumn(TABDropdownMenuColumn()) == `<div class="dropdown-menu-columns"><div class="dropdown-menu-column"></div></div>`);
}
