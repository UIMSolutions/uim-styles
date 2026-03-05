module uim.tabler.components.datagrids.item;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * DatagridItem is used to create an item in the Datagrid component.
 * https://tabler.io/docs/datagrid
 */
class TABDatagridItem : H5Div {
  mixin H5Template!(TABDatagridItem, ["datagrid-item"]);

  TABDatagridItem color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }
}
///
unittest {
  assert(TABDatagridItem() == `<div class="datagrid-item"></div>`);
  assert(TABDatagridItem(["testclass"]) == `<div class="datagrid-item testclass"></div>`);
  assert(TABDatagridItem(["a": "b"]) == `<div class="datagrid-item" a="b"></div>`);
  assert(TABDatagridItem(["testclass"], ["a": "b"]) == `<div class="datagrid-item testclass" a="b"></div>`);

  assert(TABDatagridItem("Hello") == `<div class="datagrid-item">Hello</div>`);
  assert(TABDatagridItem(["testclass"], "Hello") == `<div class="datagrid-item testclass">Hello</div>`);
  assert(TABDatagridItem(["a": "b"], "Hello") == `<div class="datagrid-item" a="b">Hello</div>`);
  assert(TABDatagridItem(["testclass"], ["a": "b"], "Hello") == `<div class="datagrid-item testclass" a="b">Hello</div>`);

  assert(TABDatagridItem().color("blue") == `<div class="bg-blue datagrid-item"></div>`);
}
