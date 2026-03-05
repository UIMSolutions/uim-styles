module uim.bootstrap5.basic.components.tabs.list;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5TabList : H5Ul {
  mixin H5Template!(BS5TabList, ["nav"], ["role":"tablist"]);

  // // mixin(MyContent!("item", "BS5NavItem"));

  // BS5TabList vertical(bool mode = true) {
  //   addClasses("flex-column");
  //   return this;
  // }

  // BS5TabList tabs(bool mode = true) {
  //   addClasses("nav-tabs");
  //   return this;
  // }

  // BS5TabList pills(bool mode = true) {
  //   addClasses("nav-pills");
  //   return this;
  // }

  // BS5TabList fill(bool mode = true) {
  //   addClasses("nav-fill");
  //   return this;
  // }

  // BS5TabList justified(bool mode = true) {
  //   addClasses("nav-justified");
  //   return this;
  // }
}
///
unittest {
  assert(BS5TabList() == `<ul class="nav" role="tablist"></ul>`);
  assert(BS5TabList(["testclass"]) == `<ul class="nav testclass" role="tablist"></ul>`);
  assert(BS5TabList(["a":"b"]) == `<ul class="nav" a="b" role="tablist"></ul>`);
  assert(BS5TabList(["testclass"], ["a":"b"]) == `<ul class="nav testclass" a="b" role="tablist"></ul>`);

  assert(BS5TabList("SomeContent") == `<ul class="nav" role="tablist"></ul>`);
  assert(BS5TabList(["testclass"], "SomeContent") == `<ul class="nav testclass" role="tablist"></ul>`);
  assert(BS5TabList(["a":"b"], "SomeContent") == `<ul class="nav" a="b" role="tablist"></ul>`);
  assert(BS5TabList(["testclass"], ["a":"b"], "SomeContent") == `<ul class="nav testclass" a="b" role="tablist"></ul>`);

  // assert(BS5TabList().vertical == `<ul class="flex-column nav" role="tablist"></ul>`);
}
