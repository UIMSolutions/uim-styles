module uim.bootstrap.bs4.tables.body_;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4TableBody : BS4Obj {
  mixin(H5This!"Tbody");

  mixin(MyContent!("row", "BS4TableRow"));
  mixin(MyContent!("tr", "BS4TableRow"));
  ///
unittest {
    assert(BS4Table.row == `<table class="table"><tr></tr></table>`);
  }}
}
static BS4TableBody");

///
unittest {
  assert(BS4TableBody == `<tbody></tbody>`);
}}
