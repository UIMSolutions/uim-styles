module uim.bootstrap5.basic.components.alerts.heading;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5AlertHeading : H5Div {
  mixin H5Template!(BS5AlertHeading, ["alert-heading"]);

  BS5AlertHeading size(int size) {
    if ((size > 0) && (size < 7))
      _tag = "h" ~ to!string(size);
    return this;
  }  
}
///
unittest {
  // TODO
}
