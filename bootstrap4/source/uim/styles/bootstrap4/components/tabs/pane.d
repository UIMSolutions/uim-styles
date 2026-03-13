module uim.bootstrap.bs4.components.tabs.pane;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4TabPane : H5Div {
  mixin H5This!(["tab-pane"], `["role":"tabpanel", "aria-expanded":"false"]`));

  O active(bool value = true) { if (value) { this.addClasses("active").attributes("aria-expanded", "true"); } return this; }
  O fade(bool value = true) { if (value) this.addClasses("fade"); return this; }
}
static BS4TabPane");

///
unittest {
  assert(BS4TabPane == `<div class="tab-pane" aria-expanded="false" role="tabpanel"></div>`);
  assert(BS4TabPane.active == `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`);
  assert(BS4TabPane.fade == `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`);
}}