module uim.bootstrap5.basic.components.lists.inlineitem;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListInlineItem : H5Li {
  mixin H5Template!(BS5ListInlineItem, ["list-inline-item"]);
}
///
unittest {
  assert(BS5ListInlineItem() == `<li class="list-inline-item"></li>`);
  assert(BS5ListInlineItem(["testclass"]) == `<li class="list-inline-item testclass"></li>`);
  assert(BS5ListInlineItem(["a":"b"]) == `<li class="list-inline-item" a="b"></li>`);
  assert(BS5ListInlineItem(["testclass"], ["a":"b"]) == `<li class="list-inline-item testclass" a="b"></li>`);

  assert(BS5ListInlineItem("SomeContent") == `<li class="list-inline-item">SomeContent</li>`);
  assert(BS5ListInlineItem(["testclass"], "SomeContent") == `<li class="list-inline-item testclass">SomeContent</li>`);
  assert(BS5ListInlineItem(["a":"b"], "SomeContent") == `<li class="list-inline-item" a="b">SomeContent</li>`);
  assert(BS5ListInlineItem(["testclass"], ["a":"b"], "SomeContent") == `<li class="list-inline-item testclass" a="b">SomeContent</li>`);
}