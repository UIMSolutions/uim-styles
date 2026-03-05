module uim.bootstrap5.basic.components.progresses.bar;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ProgressBar : H5Div {
  mixin H5Template!(BS5ProgressBar, ["progress-bar"], ["role":"progressbar"]);

  // BS5ProgressBar valueNow(string value) { return this.attributes(["aria-valuenow":value]); }
  // BS5ProgressBar valueMin(string value) { return this.attributes(["aria-valuemin":value]); }
  // BS5ProgressBar valueMax(string value) { return this.attributes(["aria-valuemax":value]); }
  // BS5ProgressBar color(string colorName) { return this.addClasses("bg-"~colorName); }
  // BS5ProgressBar striped(bool mode = true) { return this.addClasses("progress-bar-striped"); }
  // BS5ProgressBar animated(bool mode = true) { return this.addClasses("progress-bar-animated"); }
}
///
unittest { 
  assert(BS5ProgressBar() == `<div class="progress-bar" role="progressbar"></div>`);
  assert(BS5ProgressBar(["testclass"]) == `<div class="progress-bar testclass" role="progressbar"></div>`);
  assert(BS5ProgressBar(["a":"b"]) == `<div class="progress-bar" a="b" role="progressbar"></div>`);
  assert(BS5ProgressBar(["testclass"], ["a":"b"]) == `<div class="progress-bar testclass" a="b" role="progressbar"></div>`);

  assert(BS5ProgressBar("SomeContent") == `<div class="progress-bar" role="progressbar">SomeContent</div>`);
  assert(BS5ProgressBar(["testclass"], "SomeContent") == `<div class="progress-bar testclass" role="progressbar">SomeContent</div>`);
  assert(BS5ProgressBar(["a":"b"], "SomeContent") == `<div class="progress-bar" a="b" role="progressbar">SomeContent</div>`);
  assert(BS5ProgressBar(["testclass"], ["a":"b"], "SomeContent") == `<div class="progress-bar testclass" a="b" role="progressbar">SomeContent</div>`);
}