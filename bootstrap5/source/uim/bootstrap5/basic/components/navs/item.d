module uim.bootstrap5.basic.components.navs.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavItem : H5Li {
  mixin H5Template!(BS5NavItem, ["nav-item"]);

  //   // mixin(MyContent!("link", "BS5NavLink"));
  //   O dropdown(bool mode = true) { return this.addClasses("dropdown"); }
}
///
unittest {
  assert(BS5NavItem() == `<li class="nav-item"></li>`);
  assert(BS5NavItem(["testclass"]) == `<li class="nav-item testclass"></li>`);
  assert(BS5NavItem(["a":"b"]) == `<li class="nav-item" a="b"></li>`);
  assert(BS5NavItem(["testclass"], ["a":"b"]) == `<li class="nav-item testclass" a="b"></li>`);

  assert(BS5NavItem("SomeContent") == `<li class="nav-item">SomeContent</li>`);
  assert(BS5NavItem(["testclass"], "SomeContent") == `<li class="nav-item testclass">SomeContent</li>`);
  assert(BS5NavItem(["a":"b"], "SomeContent") == `<li class="nav-item" a="b">SomeContent</li>`);
  assert(BS5NavItem(["testclass"], ["a":"b"], "SomeContent") == `<li class="nav-item testclass" a="b">SomeContent</li>`);
}