module uim.bootstrap.bs4.components.cards.header;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/// CardHeader adds a header to a card
class BS4CardHeader : H5Div {
  mixin H5This!(["card-header"]);
static BS4CardHeader");
}
///
unittest {
  assert(BS4CardHeader() == `<div class="card-header"></div>`);
}
