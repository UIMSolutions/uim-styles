module uim.bootstrap5.basic.utilities.clearfix;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

T clearfix(T)(T h5) {
  return h5.addClasses("clearfix");
}

///
unittest {
  // assert(H5Div.clearfix == `<div class="clearfix"></div>`);
}