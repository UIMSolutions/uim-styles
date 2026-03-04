module uim.bootstrap5.classes.tables.footer;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5TableFooter : H5Tfoot {
  mixin H5Template!(BS5TableFooter, null, null);

  // mixin(AddContentCalls!("BSTableRow", "row"));
  // ///
  // unittest {
  //   // assert(BS5TableFooter.addRow() == `<tfoot><tr></tr></tfoot>`);
  // }
}
///
unittest {
  assert(BS5TableFooter() == `<tfoot></tfoot>`);
  assert(BS5TableFooter(["testclass"]) == `<tfoot class="testclass"></tfoot>`);
  assert(BS5TableFooter(["a":"b"]) == `<tfoot a="b"></tfoot>`);
  assert(BS5TableFooter(["testclass"], ["a":"b"]) == `<tfoot class="testclass" a="b"></tfoot>`);

  assert(BS5TableFooter("Hello") == `<tfoot>Hello</tfoot>`);
  assert(BS5TableFooter(["testclass"], "Hello") == `<tfoot class="testclass">Hello</tfoot>`);
  assert(BS5TableFooter(["a":"b"], "Hello") == `<tfoot a="b">Hello</tfoot>`);
  assert(BS5TableFooter(["testclass"], ["a":"b"], "Hello") == `<tfoot class="testclass" a="b">Hello</tfoot>`);
}
