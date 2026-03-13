module uim.bootstrap.bs4.components.progresses.progress;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Progress : H5Div {
  mixin H5This!(["progress"]));

  mixin(MyContent!("bar", "BS4ProgressBar"));
}
static BS4Progress");

///
unittest {
  assert(BS4Progress == `<div class="progress"></div>`);
}}