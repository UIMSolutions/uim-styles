module uim.bootstrap5.basic.components.progresses.progress;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5Progress : H5Div {
  mixin H5Template!(BS5Progress, ["progress"]);

  // auto addBar() {
  //   addContent(BS5ProgressBar());
  // }
}
///
unittest {
  assert(BS5Progress() == `<div class="progress"></div>`);
  assert(BS5Progress(["testclass"]) == `<div class="progress testclass"></div>`);
  assert(BS5Progress(["a":"b"]) == `<div class="progress" a="b"></div>`);
  assert(BS5Progress(["testclass"], ["a":"b"]) == `<div class="progress testclass" a="b"></div>`);

  assert(BS5Progress("SomeContent") == `<div class="progress">SomeContent</div>`);
  assert(BS5Progress(["testclass"], "SomeContent", ["a":"b"]) == `<div class="progress testclass" a="b">SomeContent</div>`);
  assert(BS5Progress(["a":"b"], "SomeContent") == `<div class="progress" a="b">SomeContent</div>`);
  assert(BS5Progress(["testclass"], ["a":"b"], "SomeContent") == `<div class="progress testclass" a="b">SomeContent</div>`);
}
