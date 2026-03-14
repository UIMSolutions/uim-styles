module uim.bootstrap.bs4.utilities.clearfix;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

T clearfix(T)(T h5) {
  return h5.addClasses("clearfix");
}

///
unittest {
  assert(H5Div.clearfix == `<div class="clearfix"></div>`);
}}