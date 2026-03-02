module uim.tabler.components.datagrids.datagrid;

import uim.tabler;

@safe:

/** 
 * Datagrid is used to create a grid of items. It is used in the Datagrid component.
 * https://tabler.io/docs/datagrid
 */
class TABDatagrid : H5Div {
  mixin TABTemplate!(TABDatagrid, ["datagrid"]);
  mixin(HtmlMethods!TABDatagrid);

  TABDatagrid color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }
}
///
unittest {
  assert(TABDatagrid() == `<div class="datagrid"></div>`);
  // assert(TABDatagrid().color("blue") == `<div class="bg-blue datagrid"></div>`);
}
