module uim.tabler.components.menucolumns;

import uim.tabler;

mixin(ShowModule!());

@safe:

/**
 * Dropdown menu columns.
 * https://tabler.io/docs/components/dropdown-menu-columns/
 */
class TABDropdownMenuColumns : H5Div {
  mixin TABTemplate!(["dropdown-menu-columns"]);

  TABDropdownMenuColumns addColumn(TABDropdownMenuColumn column) {
    addContent(column);
    return this;
  }

  mixin(TABTemplate!("DropdownMenuColumns"));
}
///
unittest {
  assert(TABDropdownMenuColumns() == `<div class="dropdown-menu-columns"></div>`);
  assert(TABDropdownMenuColumns().addColumn(TABDropdownMenuColumn()) == `<div class="dropdown-menu-columns"><div class="dropdown-menu-column"></div></div>`);
}
