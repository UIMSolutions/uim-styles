module uim.bootstrap.bs4.components.buttons.toolbar;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ButtonToolbar : H5Div {
  mixin H5This!(["btn-toolbar"], `["role":"toolbar"]`));

  mixin(MyAttribute!("label", "aria-label"));
  ///
unittest {
    assert(BS4ButtonToolbar.label("hallo") == `<div class="btn-toolbar" aria-label="hallo" role="toolbar"></div>`);
  }
  
  auto addGroup(BS4ButtonGroup group) {
    this.addContent(group);
    return this;
  }
  ///
unittest {
    assert(BS4ButtonToolbar.addGroup(new BS4ButtonGroup) == `<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"></div></div>`);
  }

static BS4ButtonToolbar opCall() {
  return new BS4ButtonToolbar;
}
}
///
unittest {
  assert(BS4ButtonToolbar() == `<div class="btn-toolbar" role="toolbar"></div>`);
}