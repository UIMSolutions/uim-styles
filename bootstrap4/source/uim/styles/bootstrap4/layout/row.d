module uim.bootstrap.bs4.layout.row;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Row : H5Div {
  mixin H5This!(["row"]));

  mixin(MyContent!("col", "BS4Col"));
}
static BS4Row"));

///
unittest {
  assert(BS4Row == `<div class="row"></div>`);
}}