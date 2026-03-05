module uim.bootstrap5.basic.components.jumbotrons.jumbotron;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Jumbotron : H5Div {
  mixin H5Template!(BS5Jumbotron, ["jumbotron"]);
}
///
unittest {
  assert(BS5Jumbotron() == `<div class="jumbotron"></div>`);
  assert(BS5Jumbotron(["testclass"]) == `<div class="jumbotron testclass"></div>`);
  assert(BS5Jumbotron(["a":"b"]) == `<div class="jumbotron" a="b"></div>`);
  assert(BS5Jumbotron(["testclass"], ["a":"b"]) == `<div class="jumbotron testclass" a="b"></div>`);

  assert(BS5Jumbotron("SomeContent") == `<div class="jumbotron">SomeContent</div>`);
  assert(BS5Jumbotron(["testclass"], "SomeContent") == `<div class="jumbotron testclass">SomeContent</div>`);
  assert(BS5Jumbotron(["a":"b"], "SomeContent") == `<div class="jumbotron" a="b">SomeContent</div>`);
  assert(BS5Jumbotron(["testclass"], ["a":"b"], "SomeContent") == `<div class="jumbotron testclass" a="b">SomeContent</div>`);
}
