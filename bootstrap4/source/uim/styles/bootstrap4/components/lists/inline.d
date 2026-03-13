module uim.bootstrap.bs4.components.lists.inline;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/// An unordered list with list items
class BS4ListInline : BS4Obj {
  mixin(H5This!("UL", ["list-inline"]));

  mixin(MyContent!("item", "BS4ListInlineItem"));
  ///
unittest {
    assert(BS4ListInline.item == `<ul class="list-inline"><li class="list-inline-item"></li></ul>`);
    assert(BS4ListInline.item("test") == `<ul class="list-inline"><li class="list-inline-item">test</li></ul>`);
  }}
}
static BS4ListInline");

///
unittest {
  assert(BS4ListInline,  `<ul class="list-inline"></ul>`);
}}
