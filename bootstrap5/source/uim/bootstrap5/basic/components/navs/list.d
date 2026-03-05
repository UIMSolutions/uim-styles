module uim.bootstrap5.basic.components.navs.list;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavList : H5Ul {
  mixin H5Template!(BS5NavList, ["nav"]);

  // // mixin(MyContent!("item", "BS5NavItem"));
  // O vertical(bool mode = true) { return this.addClasses("flex-column"); }
  // O tabs(bool mode = true) { return this.addClasses("nav-tabs"); }
  // O pills(bool mode = true) { return this.addClasses("nav-pills"); }
  // O fill(bool mode = true) { return this.addClasses("nav-fill"); }
  // O justified(bool mode = true) { return this.addClasses("nav-justified"); }

}
///
unittest {
  assert(BS5NavList() == `<ul class="nav"></ul>`);
  assert(BS5NavList(["testclass"]) == `<ul class="nav testclass"></ul>`);
  assert(BS5NavList(["a":"b"]) == `<ul class="nav" a="b"></ul>`);
  assert(BS5NavList(["testclass"], ["a":"b"]) == `<ul class="nav testclass" a="b"></ul>`);

  assert(BS5NavList("SomeContent") == `<ul class="nav">SomeContent</ul>`);
  assert(BS5NavList(["testclass"], "SomeContent") == `<ul class="nav testclass">SomeContent</ul>`);
  assert(BS5NavList(["a":"b"], "SomeContent") == `<ul class="nav" a="b">SomeContent</ul>`);
  assert(BS5NavList(["testclass"], ["a":"b"], "SomeContent") == `<ul class="nav testclass" a="b">SomeContent</ul>`);

  // assert(BS5NavList().vertical == `<ul class="flex-column nav"></ul>`);
}