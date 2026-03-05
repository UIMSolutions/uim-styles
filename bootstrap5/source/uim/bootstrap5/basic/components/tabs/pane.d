module uim.bootstrap5.basic.components.tabs.pane;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5TabPane : H5Div {
  mixin H5Template!(BS5TabPane, ["tab-pane"], ["role":"tabpanel", "aria-expanded":"false"]);

  // BS5TabPane active(bool value = true) {
  //   if (value) {
  //     this.addClasses("active").attributes("aria-expanded", "true");
  //   }
  //   return this;
  // }

  // BS5TabPane fade(bool value = true) {
  //   if (value)
  //     this.addClasses("fade").attributes("aria-expanded", "false");
  //   return this;
  // }
}
///
unittest {
  assert(BS5TabPane() == `<div class="tab-pane" aria-expanded="false" role="tabpanel"></div>`);
  assert(BS5TabPane(["testclass"]) == `<div class="tab-pane testclass" aria-expanded="false" role="tabpanel"></div>`);
  assert(BS5TabPane(["a":"b"]) == `<div class="tab-pane" a="b" aria-expanded="false" role="tabpanel"></div>`);
  assert(BS5TabPane(["testclass"], ["a":"b"]) == `<div class="tab-pane testclass" a="b" aria-expanded="false" role="tabpanel"></div>`);

  assert(BS5TabPane("SomeContent") == `<div class="tab-pane" aria-expanded="false" role="tabpanel">SomeContent</div>`);
  assert(BS5TabPane(["testclass"], "SomeContent") == `<div class="tab-pane testclass" aria-expanded="false" role="tabpanel">SomeContent</div>`);
  assert(BS5TabPane(["a":"b"], "SomeContent") == `<div class="tab-pane" a="b" aria-expanded="false" role="tabpanel">SomeContent</div>`);
  assert(BS5TabPane(["testclass"], ["a":"b"], "SomeContent") == `<div class="tab-pane testclass" a="b" aria-expanded="false" role="tabpanel">SomeContent</div>`);

  //   BS5TabPane.active == `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`);
  // assert(
  //   BS5TabPane.fade == `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`);
}
