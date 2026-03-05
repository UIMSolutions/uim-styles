module uim.bootstrap5.basic.utilities.colors;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

T textColor(T)(T h5, string colorName) {
  return h5.addClasses("text-"~colorName);
}
T bgColor(T)(T h5, string colorName) {
  return h5.addClasses("bg-"~colorName);
}
T backgroundColor(T)(T h5, string colorName) {
  return h5.addClasses("bg-"~colorName);
}

///
unittest {
  // assert(H5Div.textColor("white") == `<div class="text-white"></div>`);
  // assert(H5Div.bgColor("white") == `<div class="bg-white"></div>`);
}