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
}
