module uim.bootstrap5.basic.components.alerts.heading;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5AlertHeading : H5Div {
  mixin H5Template!(BS5AlertHeading, ["alert-heading"]);

  // BS5AlertHeading size(int size) {
  //   if ((size > 0) && (size < 7))
  //     _tag = "h" ~ to!string(size);
  //   return this;
  // }  
}
///
unittest {
  assert(BS5AlertHeading() == `<div class="alert-heading"></div>`);
  assert(BS5AlertHeading(["testclass"]) == `<div class="alert-heading testclass"></div>`);
  assert(BS5AlertHeading(["a":"b"]) == `<div class="alert-heading" a="b"></div>`);
  assert(BS5AlertHeading(["testclass"], ["a":"b"]) == `<div class="alert-heading testclass" a="b"></div>`);

  assert(BS5AlertHeading("SomeContent") == `<div class="alert-heading">SomeContent</div>`);
  assert(BS5AlertHeading(["testclass"], "SomeContent") == `<div class="alert-heading testclass">SomeContent</div>`);
  assert(BS5AlertHeading(["a":"b"], "SomeContent") == `<div class="alert-heading" a="b">SomeContent</div>`);
  assert(BS5AlertHeading(["testclass"], ["a":"b"], "SomeContent") == `<div class="alert-heading testclass" a="b">SomeContent</div>`);
}
