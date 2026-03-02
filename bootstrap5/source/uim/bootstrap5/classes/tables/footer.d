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
  // assert(BS5TableFooter() == `<tfoot></tfoot>`);
}
