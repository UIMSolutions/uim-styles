module uim.bootstrap.bs4.components.collapses.collapse;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Collapse : H5Div {
  mixin H5This!(["collapse"]));
}
static BS4Collapse");

///
unittest {
  assert(BS4Collapse == `<div class="collapse"></div>`);
}}