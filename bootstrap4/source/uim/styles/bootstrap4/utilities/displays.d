module uim.bootstrap.bs4.utilities.displays;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

T displayInline(T)(T h5) {
  return h5.addClasses("d-inline");
}
T displayBlock(T)(T h5) {
  return h5.addClasses("d-block");
}
T displayInlineBlock(T)(T h5) {
  return h5.addClasses("d-inline-block");
}
T displayTable(T)(T h5) {
  return h5.addClasses("d-table");
}
T displayTableCell(T)(T h5) {
  return h5.addClasses("d-table-cell");
}
T displayFlex(T)(T h5) {
  return h5.addClasses("d-flex");
}
T displayInlineFlex(T)(T h5) {
  return h5.addClasses("d-inline-flex");
}
T displayNone(T)(T h5, string screenSize) {
  return h5.addClasses("d-"~screenSize~"-none");
}
T displayPrint(T)(T h5, string mode) {
  return h5.addClasses("d-print-"~mode);
}

///
unittest {
  // TODO 
}}