module uim.tabler.components.datagrids.datagrid;

import uim.tabler;

@safe:

/** 
 * Datagrid is used to create a grid of items. It is used in the Datagrid component.
 * https://tabler.io/docs/datagrid
 */
class TABDatagrid : H5Div {
  mixin H5Template!(TABDatagrid, ["datagrid"]);
  mixin(HtmlMethods!TABDatagrid);

  TABDatagrid color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }
}
///
unittest {
  assert(TABDatagrid() == `<div class="datagrid"></div>`);
  assert(TABDatagrid(["testclass"]) == `<div class="datagrid testclass"></div>`);
  assert(TABDatagrid(["a": "b"]) == `<div class="datagrid" a="b"></div>`);
  assert(TABDatagrid(["testclass"], ["a": "b"]) == `<div class="datagrid testclass" a="b"></div>`);

  assert(TABDatagrid("Hello") == `<div class="datagrid">Hello</div>`);
  assert(TABDatagrid(["testclass"], "Hello") == `<div class="datagrid testclass">Hello</div>`);
  assert(TABDatagrid(["a": "b"], "Hello") == `<div class="datagrid" a="b">Hello</div>`);
  assert(TABDatagrid(["testclass"], ["a": "b"], "Hello") == `<div class="datagrid testclass" a="b">Hello</div>`);

  assert(TABDatagrid().color("blue") == `<div class="bg-blue datagrid"></div>`);
}
