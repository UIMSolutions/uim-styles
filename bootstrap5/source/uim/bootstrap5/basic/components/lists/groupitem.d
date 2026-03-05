module uim.bootstrap5.basic.components.lists.groupitem;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListGroupItem : H5Div {
  mixin H5Template!(BS5ListGroupItem, ["list-group-item"]);

  // auto color(string aColor) { this.addClasses("list-group-item-"~aColor); return this; }
}
///
unittest {
  assert(BS5ListGroupItem() == `<div class="list-group-item"></div>`);
  assert(BS5ListGroupItem(["testclass"]) == `<div class="list-group-item testclass"></div>`);
  assert(BS5ListGroupItem(["a":"b"]) == `<div class="list-group-item" a="b"></div>`);
  assert(BS5ListGroupItem(["testclass"], ["a":"b"]) == `<div class="list-group-item testclass" a="b"></div>`);

  assert(BS5ListGroupItem("SomeContent") == `<div class="list-group-item">SomeContent</div>`);
  assert(BS5ListGroupItem(["testclass"], "SomeContent") == `<div class="list-group-item testclass">SomeContent</div>`);
  assert(BS5ListGroupItem(["a":"b"], "SomeContent") == `<div class="list-group-item" a="b">SomeContent</div>`);
  assert(BS5ListGroupItem(["testclass"], ["a":"b"], "SomeContent") == `<div class="list-group-item testclass" a="b">SomeContent</div>`);
}