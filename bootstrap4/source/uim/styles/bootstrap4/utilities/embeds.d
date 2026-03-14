module uim.bootstrap.bs4.utilities.embeds;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

T embedResponsive(T)(T h5) {
  return h5.addClasses("embed-responsive");
}
T embedSize(T)(T h5, string size) {
  return h5.addClasses("embed-responsive-"~size);
}
T embedItem(T)(T h5) {
  return h5.addClasses("embed-responsive-item");
}

///
unittest {
  // TODO
}}