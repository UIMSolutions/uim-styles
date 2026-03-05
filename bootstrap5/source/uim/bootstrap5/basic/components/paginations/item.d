module uim.bootstrap5.basic.components.paginations.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5PageItem : H5Li {
  mixin H5Template!(BS5PageItem, ["page-item"]);

  // // mixin(MyContent!("link", "BS5PageLink"));

  // O active(bool value = true) { if (value) this.addClasses("active"); return this; }
  // O disabled(bool value = true) { if (value) this.addClasses("disabled").attributes("tabindex", "-1"); return this; }
}
///
unittest {
  assert(BS5PageItem() == `<li class="page-item"></li>`);
  assert(BS5PageItem(["testclass"]) == `<li class="page-item testclass"></li>`);
  assert(BS5PageItem(["a":"b"]) == `<li class="page-item" a="b"></li>`);
  assert(BS5PageItem(["testclass"], ["a":"b"]) == `<li class="page-item testclass" a="b"></li>`);

  assert(BS5PageItem("SomeContent") == `<li class="page-item">SomeContent</li>`);
  assert(BS5PageItem(["testclass"], "SomeContent") == `<li class="page-item testclass">SomeContent</li>`);
  assert(BS5PageItem(["a":"b"], "SomeContent") == `<li class="page-item" a="b">SomeContent</li>`);
  assert(BS5PageItem(["testclass"], ["a":"b"], "SomeContent") == `<li class="page-item testclass" a="b">SomeContent</li>`);

  // assert(BS5PageItem().active == `<li class="active page-item"></li>`);
  // assert(BS5PageItem().disabled == `<li class="disabled page-item" tabindex="-1"></li>`);
}