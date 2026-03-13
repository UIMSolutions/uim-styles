module uim.bootstrap.bs4.tables.header;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4TableHeader : BS4Obj {
  mixin(H5This!"Thead");

  mixin(MyContent!("row", "BS4TableRow"));
  mixin(MyContent!("tr", "BS4TableRow"));
}
static BS4TableHeader");

///
unittest {
  assert(BS4Table.row == `<table class="table"><tr></tr></table>`);
  assert(BS4TableHeader() == `<thead></thead>`);
}}
