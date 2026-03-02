module uim.tabler.components.datagrids.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * DatagridTitle is used to create a title for the Datagrid component.
 * https://tabler.io/docs/datagrid
 */
class TABDatagridTitle : H5Div {
  mixin H5Template!(TABDatagridTitle, ["datagrid-title"]);
  mixin(HtmlMethods!TABDatagridTitle);
  
  TABDatagridTitle color(string newColor) {
    this.addClass("bg-" ~ newColor);
    return this;
  }
}
///
unittest {
  assert(TABDatagridTitle() == `<div class="datagrid-title"></div>`);
  assert(TABDatagridTitle(["testclass"]) == `<div class="datagrid-title testclass"></div>`);
  assert(TABDatagridTitle(["a": "b"]) == `<div class="datagrid-title" a="b"></div>`);
  assert(TABDatagridTitle(["testclass"], ["a": "b"]) == `<div class="datagrid-title testclass" a="b"></div>`);

  assert(TABDatagridTitle("Hello") == `<div class="datagrid-title">Hello</div>`);
  assert(TABDatagridTitle(["testclass"], "Hello") == `<div class="datagrid-title testclass">Hello</div>`);
  assert(TABDatagridTitle(["a": "b"], "Hello") == `<div class="datagrid-title" a="b">Hello</div>`);
  assert(TABDatagridTitle(["testclass"], ["a": "b"], "Hello") == `<div class="datagrid-title testclass" a="b">Hello</div>`);
}
