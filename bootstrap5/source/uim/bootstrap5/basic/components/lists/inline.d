module uim.bootstrap5.basic.components.lists.inline;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/// An unordered list with list items
class BS5ListInline : H5Ul {
  mixin H5Template!(BS5ListInline, ["list-inline"]);

//   // mixin(MyContent!("item", "BS5ListInlineItem"));
}
///
unittest {
  assert(BS5ListInline() == `<ul class="list-inline"></ul>`);
  assert(BS5ListInline(["testclass"]) == `<ul class="list-inline testclass"></ul>`);
  assert(BS5ListInline(["a":"b"]) == `<ul class="list-inline" a="b"></ul>`);
  assert(BS5ListInline(["testclass"], ["a":"b"]) == `<ul class="list-inline testclass" a="b"></ul>`);

  assert(BS5ListInline("SomeContent") == `<ul class="list-inline">SomeContent</ul>`);
  assert(BS5ListInline(["testclass"], "SomeContent") == `<ul class="list-inline testclass">SomeContent</ul>`);
  assert(BS5ListInline(["a":"b"], "SomeContent") == `<ul class="list-inline" a="b">SomeContent</ul>`);
  assert(BS5ListInline(["testclass"], ["a":"b"], "SomeContent") == `<ul class="list-inline testclass" a="b">SomeContent</ul>`);
}
