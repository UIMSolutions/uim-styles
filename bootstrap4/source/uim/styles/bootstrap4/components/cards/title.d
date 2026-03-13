module uim.bootstrap.bs4.components.cards.title;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardTitle : BS4Obj {
  mixin(H5This!("H4", ["card-title"]));

  O level(uint value) { if (value > 0) _tag = "h"~to!string(value); return this; }
  O level(string value) { if (value.length > 0) _tag = "h"~value; return this; }
  ///
unittest {
    assert(BS4CardTitle.level(2) == `<h2 class="card-title"></h2>`);
  }}
}
static BS4CardTitle");

///
unittest {
  assert(BS4CardTitle == `<h4 class="card-title"></h4>`);
  assert(BS4CardTitle.addContent("SomeThing") == `<h4 class="card-title">SomeThing</h4>`);
}}
