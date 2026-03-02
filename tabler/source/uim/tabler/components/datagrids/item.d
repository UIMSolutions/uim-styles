module uim.tabler.components.datagrids.item;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * DatagridItem is used to create an item in the Datagrid component.
 * https://tabler.io/docs/datagrid
 */
class TABDatagridItem : H5Div {
  mixin TABTemplate!(["datagrid-item"]);

  TABDatagridItem color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }

  static TABDatagridItem opCall() {
    return new TABDatagridItem;
  }
}
///
unittest {
  assert(TABDatagridItem() == `<div class="datagrid-item"></div>`);
  // assert(TABDatagridItem().color("blue") == `<div class="bg-blue datagrid-item"></div>`);
}
