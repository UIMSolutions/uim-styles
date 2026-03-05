module uim.bootstrap5.basic.components.lists.divitem;

@safe:
import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListDivItem : H5Div { // I know, it's a ugly name
  mixin H5Template!(BS5ListDivItem, ["list-group-item"]);

  // auto color(string aColor) { this.addClasses("list-group-item-"~aColor); return this; }
}
///
unittest {
  assert(BS5ListDivItem() == `<div class="list-group-item"></div>`);
  assert(BS5ListDivItem(["testclass"]) == `<div class="list-group-item testclass"></div>`);
  assert(BS5ListDivItem(["a":"b"]) == `<div class="list-group-item" a="b"></div>`);
  assert(BS5ListDivItem(["testclass"], ["a":"b"]) == `<div class="list-group-item testclass" a="b"></div>`);

  assert(BS5ListDivItem("SomeContent") == `<div class="list-group-item">SomeContent</div>`);
  assert(BS5ListDivItem(["testclass"], "SomeContent") == `<div class="list-group-item testclass">SomeContent</div>`);
  assert(BS5ListDivItem(["a":"b"], "SomeContent") == `<div class="list-group-item" a="b">SomeContent</div>`);
  assert(BS5ListDivItem(["testclass"], ["a":"b"], "SomeContent") == `<div class="list-group-item testclass" a="b">SomeContent</div>`);
}