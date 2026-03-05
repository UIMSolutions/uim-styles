module uim.bootstrap5.basic.components.navs.tabs;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavTabs : H5Ul {
  mixin H5Template!(BS5NavTabs, ["nav", "nav-tabs"], ["role":"tablist"]);

//   // mixin(MyContent!("item", "BS5NavItem"));
//   ///

//   // mixin(MyContent!("link", "BS5NavLink"));
}
///
unittest {
  assert(BS5NavTabs() == `<ul class="nav nav-tabs" role="tablist"></ul>`);
  assert(BS5NavTabs(["testclass"]) == `<ul class="nav nav-tabs testclass" role="tablist"></ul>`);
  assert(BS5NavTabs(["a":"b"]) == `<ul class="nav nav-tabs" a="b" role="tablist"></ul>`);
  assert(BS5NavTabs(["testclass"], ["a":"b"]) == `<ul class="nav nav-tabs testclass" a="b" role="tablist"></ul>`);

  assert(BS5NavTabs("SomeContent") == `<ul class="nav nav-tabs" role="tablist">SomeContent</ul>`);
  assert(BS5NavTabs(["testclass"], "SomeContent") == `<ul class="nav nav-tabs testclass" role="tablist">SomeContent</ul>`);
  assert(BS5NavTabs(["a":"b"], "SomeContent") == `<ul class="nav nav-tabs" a="b" role="tablist">SomeContent</ul>`);
  assert(BS5NavTabs(["testclass"], ["a":"b"], "SomeContent") == `<ul class="nav nav-tabs testclass" a="b" role="tablist">SomeContent</ul>`);
}