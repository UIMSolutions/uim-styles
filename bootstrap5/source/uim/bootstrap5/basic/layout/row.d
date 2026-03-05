module uim.bootstrap5.basic.layout.row;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Row : H5Div {
  mixin H5Template!(BS5Row, ["row"]);
  // O cols(string[] someCols...) {

  // // mixin(MyContent!("col", "BS5Col"));
}
///
unittest {
  assert(BS5Row() == `<div class="row"></div>`);
  assert(BS5Row(["testclass"]) == `<div class="row testclass"></div>`); 
  assert(BS5Row(["a":"b"]) == `<div class="row" a="b"></div>`);
  assert(BS5Row(["testclass"], ["a":"b"]) == `<div class="row testclass" a="b"></div>`);

  assert(BS5Row("SomeContent") == `<div class="row">SomeContent</div>`);
  assert(BS5Row(["testclass"], "SomeContent") == `<div class="row testclass">SomeContent</div>`);
  assert(BS5Row(["a":"b"], "SomeContent") == `<div class="row" a="b">SomeContent</div>`);
  assert(BS5Row(["testclass"], ["a":"b"], "SomeContent") == `<div class="row testclass" a="b">SomeContent</div>`);
}