module uim.bootstrap.bs4.components.collapses.button;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CollapseButton : BS4Obj {
  mixin(H5This!("button", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
static BS4CollapseButton");

///
unittest {
  assert(BS4CollapseButton == `<button class="btn" data-toggle="collapse" role="button"></button>`);
}}