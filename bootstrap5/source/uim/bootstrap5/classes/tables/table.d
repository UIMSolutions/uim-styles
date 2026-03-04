module uim.bootstrap5.classes.tables.table;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Table : H5Table {
  mixin H5Template!(BS5Table, ["table"]);

  // // mixin(MyContent!("caption", "H5Caption"));
  // ///
  // unittest {
  //   // assert(BS5Table.caption("test") == `<table class="table"><caption>test</caption></table>`);
  // }

  // // mixin(MyContent!("head", "H5Thead"));
  // // mixin(MyContent!("header", "H5Thead"));
  // ///
  // unittest {
  //   // assert(BS5Table.head == `<table class="table"><thead></thead></table>`);
  //   // assert(BS5Table.header() == `<table class="table"><thead></thead></table>`);
  // }

  // // mixin(MyContent!("body_", "H5Tbody"));
  // ///
  // unittest {
  //   // assert(BS5Table.body_ == `<table class="table"><tbody></tbody></table>`);
  // }

  // // mixin(MyContent!("foot", "H5Tfoot"));
  // // mixin(MyContent!("footer", "H5Tfoot"));
  // ///
  // unittest {
  //   // assert(BS5Table.foot == `<table class="table"><tfoot></tfoot></table>`);
  //   // assert(BS5Table.footer() == `<table class="table"><tfoot></tfoot></table>`);
  // }

  // auto addrow()", "BS5TableRow"));
  // auto addtr()", "BS5TableRow"));
  // ///
  // unittest {
  //   // assert(BS5Table.row == `<table class="table"><tr></tr></table>`);
  // }

}
///
unittest {
  assert(BS5Table() == `<table class="table"></table>`);
  assert(BS5Table(["testclass"]) == `<table class="table testclass"></table>`);
  assert(BS5Table(["a":"b"]) == `<table class="table" a="b"></table>`);
  assert(BS5Table(["testclass"], ["a":"b"]) == `<table class="table testclass" a="b"></table>`);

  assert(BS5Table("Hello") == `<table class="table">Hello</table>`);
  assert(BS5Table(["testclass"], "Hello") == `<table class="table testclass">Hello</table>`);
  assert(BS5Table(["a":"b"], "Hello") == `<table class="table" a="b">Hello</table>`);
  assert(BS5Table(["testclass"], ["a":"b"], "Hello") == `<table class="table testclass" a="b">Hello</table>`);
}
