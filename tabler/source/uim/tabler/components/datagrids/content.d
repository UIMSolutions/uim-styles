module uim.tabler.components.datagrids.content;

import uim.tabler;

@safe:

/** 
 * Tabler datagrid content component.
 * https://tabler.io/docs/datagrid#content
 */
class TABDatagridContent : H5Div {
  mixin H5Template!(TABDatagridContent, ["datagrid-content"]);

  TABDatagridContent color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }
}
///
unittest {
  assert(TABDatagridContent() == `<div class="datagrid-content"></div>`);
  assert(TABDatagridContent(["testclass"]) == `<div class="datagrid-content testclass"></div>`);
  assert(TABDatagridContent(["a": "b"]) == `<div class="datagrid-content" a="b"></div>`);
  assert(TABDatagridContent(["testclass"], ["a": "b"]) == `<div class="datagrid-content testclass" a="b"></div>`);

  assert(TABDatagridContent("Hello") == `<div class="datagrid-content">Hello</div>`);
  assert(TABDatagridContent(["testclass"], "Hello") == `<div class="datagrid-content testclass">Hello</div>`);
  assert(TABDatagridContent(["a": "b"], "Hello") == `<div class="datagrid-content" a="b">Hello</div>`);
  assert(TABDatagridContent(["testclass"], ["a": "b"], "Hello") == `<div class="datagrid-content testclass" a="b">Hello</div>`);  
}
