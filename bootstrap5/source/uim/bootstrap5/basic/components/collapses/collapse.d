module uim.bootstrap5.basic.components.collapses.collapse;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Collapse : H5Div {
  mixin H5Template!(BS5Collapse, ["collapse"]);
}
///
unittest {
  assert(BS5Collapse() == `<div class="collapse"></div>`);
  assert(BS5Collapse(["testclass"]) == `<div class="collapse testclass"></div>`);
  assert(BS5Collapse(["a":"b"]) == `<div class="collapse" a="b"></div>`);
  assert(BS5Collapse(["testclass"], ["a":"b"]) == `<div class="collapse testclass" a="b"></div>`);

  assert(BS5Collapse("Hello") == `<div class="collapse">Hello</div>`);
  assert(BS5Collapse(["testclass"], "Hello") == `<div class="collapse testclass">Hello</div>`);
  assert(BS5Collapse(["a":"b"], "Hello") == `<div class="collapse" a="b">Hello</div>`);
  assert(BS5Collapse(["testclass"], ["a":"b"], "Hello") == `<div class="collapse testclass" a="b">Hello</div>`);
}