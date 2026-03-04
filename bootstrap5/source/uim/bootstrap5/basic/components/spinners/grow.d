module uim.bootstrap5.basic.components.spinners.grow;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5SpinnerGrow : H5Div {
  mixin H5Template!(BS5SpinnerGrow, ["spinner-grow"]);
}
///
unittest {
  assert(BS5SpinnerGrow() == `<div class="spinner-grow"></div>`);
  assert(BS5SpinnerGrow(["testclass"]) == `<div class="spinner-grow testclass"></div>`);
  assert(BS5SpinnerGrow(["a":"b"]) == `<div class="spinner-grow" a="b"></div>`);
  assert(BS5SpinnerGrow(["testclass"], ["a":"b"]) == `<div class="spinner-grow testclass" a="b"></div>`);

  assert(BS5SpinnerGrow("Hello") == `<div class="spinner-grow">Hello</div>`);
  assert(BS5SpinnerGrow(["testclass"], "Hello") == `<div class="spinner-grow testclass">Hello</div>`);
  assert(BS5SpinnerGrow(["a":"b"], "Hello") == `<div class="spinner-grow" a="b">Hello</div>`);
  assert(BS5SpinnerGrow(["testclass"], ["a":"b"], "Hello") == `<div class="spinner-grow testclass" a="b">Hello</div>`);
}
