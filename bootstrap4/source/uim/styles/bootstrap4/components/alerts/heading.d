module uim.bootstrap.bs4.components.alerts.heading;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4AlertHeading : H5Div {
  mixin H5This!(["alert-heading"]));

  O size(int size) {
    if ((size > 0) && (size < 7))
      _tag = "h" ~ to!string(size);
    return cast(O) this;
  }
}
static BS4AlertHeading"));

///
unittest {
  // TODO
}}
