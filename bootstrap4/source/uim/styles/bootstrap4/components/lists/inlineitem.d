module uim.bootstrap.bs4.components.lists.inlineitem;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ListInlineItem : BS4Obj {
  mixin(H5This!("LI", ["list-inline-item"]));
}
static BS4ListInlineItem");

///
unittest {
  assert(BS4ListInlineItem == `<li class="list-inline-item"></li>`);
}}