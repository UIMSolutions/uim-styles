module uim.tabler.components.datagrids.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * DatagridTitle is used to create a title for the Datagrid component.
 * https://tabler.io/docs/datagrid
 */
class TABDatagridTitle : H5Div {
  mixin TABTemplate!(["datagrid-title"]);

  TABDatagridTitle color(string newColor) {
    this.addClass("bg-" ~ newColor);
    return this;
  }

  mixin(TABTemplate!("DatagridTitle"));
}
///
unittest {
  assert(TABDatagridTitle() == `<div class="datagrid-title"></div>`);
  // assert(TABDatagridTitle().color("blue") == `<div class="bg-blue datagrid-title"></div>`);
}
