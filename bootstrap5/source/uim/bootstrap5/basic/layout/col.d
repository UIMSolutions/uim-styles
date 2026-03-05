module uim.bootstrap5.basic.layout.col;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Col : H5Div {
  mixin H5Template!(BS5Col, ["col"]);

  // O sizes(string[] someSizes...) {
  //   foreach (size; someSizes)
  //     this.addClasses("col-" ~ size);
  //   return this;
  // }
}
///
unittest {
  assert(BS5Col() == `<div class="col"></div>`);
  assert(BS5Col(["testclass"]) == `<div class="col testclass"></div>`);
  assert(BS5Col(["a":"b"]) == `<div class="col" a="b"></div>`);
  assert(BS5Col(["testclass"], ["a":"b"]) == `<div class="col testclass" a="b"></div>`);

  assert(BS5Col("SomeContent") == `<div class="col">SomeContent</div>`);
  assert(BS5Col(["testclass"], "SomeContent") == `<div class="col testclass">SomeContent</div>`);
  assert(BS5Col(["a":"b"], "SomeContent") == `<div class="col" a="b">SomeContent</div>`);
  assert(BS5Col(["testclass"], ["a":"b"], "SomeContent") == `<div class="col testclass" a="b">SomeContent</div>`);

  // assert(BS5Col.sizes("12") == `<div class="col-12"></div>`);
}
