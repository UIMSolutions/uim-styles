module uim.tabler.components.datagrids.content;

import uim.tabler;

@safe:

/** 
 * Tabler datagrid content component.
 * https://tabler.io/docs/datagrid#content
 */
class TABDatagridContent : H5Div {
  mixin TABTemplate!(["datagrid-content"]);

  TABDatagridContent color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }

  mixin(TABTemplate!("DatagridContent"));
}
///
unittest {
  assert(TABDatagridContent() == `<div class="datagrid-content"></div>`);
  // assert(TABDatagridContent().color("blue") == `<div class="bg-blue datagrid-content"></div>`);
}
