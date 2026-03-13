module uim.bootstrap.bs4.components.cards.block;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardBlock : H5Div {
  mixin H5This!(["card-block"]));
}

static BS4CardBlock");
///
unittest {
  assert(BS4CardBlock == `<div class="card-block"></div>`);
}}
