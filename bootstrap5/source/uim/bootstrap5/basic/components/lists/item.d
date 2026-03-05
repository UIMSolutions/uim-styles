module uim.bootstrap5.basic.components.lists.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListItem : H5Li {
  mixin H5Template!(BS5ListItem, ["list-group-item"]);

  // auto color(string aColor) { this.addClasses("list-group-item-"~aColor); return this; }
}
///
unittest {
  assert(BS5ListItem() == `<li class="list-group-item"></li>`);
  assert(BS5ListItem(["testclass"]) == `<li class="list-group-item testclass"></li>`);
  assert(BS5ListItem(["a":"b"]) == `<li class="list-group-item" a="b"></li>`);
  assert(BS5ListItem(["testclass"], ["a":"b"]) == `<li class="list-group-item testclass" a="b"></li>`);

  assert(BS5ListItem("SomeContent") == `<li class="list-group-item">SomeContent</li>`);
  assert(BS5ListItem(["testclass"], "SomeContent") == `<li class="list-group-item testclass">SomeContent</li>`);
  assert(BS5ListItem(["a":"b"], "SomeContent") == `<li class="list-group-item" a="b">SomeContent</li>`);
  assert(BS5ListItem(["testclass"], ["a":"b"], "SomeContent") == `<li class="list-group-item testclass" a="b">SomeContent</li>`);
}