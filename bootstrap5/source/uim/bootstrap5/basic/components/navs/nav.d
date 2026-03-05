module uim.bootstrap5.basic.components.navs.nav;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Nav : H5Ul {
  mixin H5Template!(BS5Nav, ["nav"]);

//   // mixin(MyContent!("item", "BS5NavItem"));
//   ///

//   // mixin(MyContent!("header", "BS5NavHeader"));
//   ///

//   // mixin(MyContent!("link", "this.item", "BS5NavLink"));
//   ///

//   O pills(bool mode = true) { if (mode) this.addClasses("nav-pills"); return this; }
}
///
unittest {
  assert(BS5Nav() == `<ul class="nav"></ul>`);
  assert(BS5Nav(["testclass"]) == `<ul class="nav testclass"></ul>`);
  assert(BS5Nav(["a":"b"]) == `<ul class="nav" a="b"></ul>`);
  assert(BS5Nav(["testclass"], ["a":"b"]) == `<ul class="nav testclass" a="b"></ul>`);  

  assert(BS5Nav("SomeContent") == `<ul class="nav">SomeContent</ul>`);
  assert(BS5Nav(["testclass"], "SomeContent") == `<ul class="nav testclass">SomeContent</ul>`);
  assert(BS5Nav(["a":"b"], "SomeContent") == `<ul class="nav" a="b">SomeContent</ul>`);
  assert(BS5Nav(["testclass"], ["a":"b"], "SomeContent") == `<ul class="nav testclass" a="b">SomeContent</ul>`);
}