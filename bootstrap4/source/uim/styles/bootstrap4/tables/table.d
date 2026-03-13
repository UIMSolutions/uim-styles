module uim.bootstrap.bs4.tables.table;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Table : BS4Obj {
  mixin(H5This!("TABLE", ["table"]));

  mixin(MyContent!("caption", "H5Caption"));
  ///
unittest {
    assert(BS4Table.caption("test") == `<table class="table"><caption>test</caption></table>`);
  }}  

  mixin(MyContent!("head", "H5Thead"));
  mixin(MyContent!("header", "H5Thead"));

  mixin(MyContent!("body_", "H5Tbody"));

  mixin(MyContent!("foot", "H5Tfoot"));
  mixin(MyContent!("footer", "H5Tfoot"));

  mixin(MyContent!("row", "BS4TableRow"));
  mixin(MyContent!("tr", "BS4TableRow"));
}
static BS4Table");

///
unittest {
  assert(BS4Table.head == `<table class="table"><thead></thead></table>`);
  assert(BS4Table.header() == `<table class="table"><thead></thead></table>`);
  assert(BS4Table.body_ == `<table class="table"><tbody></tbody></table>`);
  assert(BS4Table.foot == `<table class="table"><tfoot></tfoot></table>`);
  assert(BS4Table.footer() == `<table class="table"><tfoot></tfoot></table>`);
  assert(BS4Table.row == `<table class="table"><tr></tr></table>`);
  assert(BS4Table == `<table class="table"></table>`);
}}