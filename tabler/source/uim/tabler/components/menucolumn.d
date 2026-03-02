module uim.tabler.components.menucolumn;

import uim.tabler;

@safe:

/** 
 * DropdownMenuColumn is used to create a column for the dropdown menu.
 * https://tabler.io/docs/components/dropdown#dropdown-menu-column
 */
class TABDropdownMenuColumn : H5Div {
  mixin H5Template!(TABDropdownMenuColumn, ["dropdown-menu-column"]);
  mixin(HtmlMethods!TABDropdownMenuColumn);

  TABDropdownMenuColumn label(string value) {
    this.attribute("aria-labelledby", value);
    return this;
  }

  string label() {
    return this.attribute("aria-labelledby").value;
  }

  // TABDropdownMenuColumn addDivider() {
  //   addContent(TABDropdownDivider);
  //   return this;
  // }

  // TABDropdownMenuColumn addHeader() {
  //   addContent(TABDropdownHeader);
  //   return this;
  // }

  // TABDropdownMenuColumn addItem() {
  //   addContent(TABDropdownItem);
  //   return this;
  // }

  // TABDropdownMenuColumn addForm() {
  //   addContent(TABDropdownForm);
  //   return this;
  // }

  // TABDropdownMenuColumn addLink() {
  //   addContent(TABDropdownLink);
  //   return this;
  // }

  // TABDropdownMenuColumn addText() {
  //   addContent(TABDropdownText);
  //   return this;
  // }
}
///
unittest {
  assert(TABDropdownMenuColumn() == `<div class="dropdown-menu-column"></div>`);
  assert(TABDropdownMenuColumn(["testclass"]) == `<div class="dropdown-menu-column testclass"></div>`);
  assert(TABDropdownMenuColumn(["a": "b"]) == `<div class="dropdown-menu-column" a="b"></div>`);
  assert(TABDropdownMenuColumn(["testclass"], ["a": "b"]) == `<div class="dropdown-menu-column testclass" a="b"></div>`);

  assert(TABDropdownMenuColumn("Hello") == `<div class="dropdown-menu-column">Hello</div>`);
  assert(TABDropdownMenuColumn(["testclass"], "Hello") == `<div class="dropdown-menu-column testclass">Hello</div>`);
  assert(TABDropdownMenuColumn(["a": "b"], "Hello") == `<div class="dropdown-menu-column" a="b">Hello</div>`);
  assert(TABDropdownMenuColumn(["testclass"], ["a": "b"], "Hello") == `<div class="dropdown-menu-column testclass" a="b">Hello</div>`);

  assert(TABDropdownMenuColumn()
      .label("test") == `<div class="dropdown-menu-column" aria-labelledby="test"></div>`);
  assert(TABDropdownMenuColumn().label("test").label() == "test");

  // assert(TABDropdownMenuColumn()
  //     .addLink() == `<div class="dropdown-menu-column"><a class="dropdown-item"></a></div>`);
}
