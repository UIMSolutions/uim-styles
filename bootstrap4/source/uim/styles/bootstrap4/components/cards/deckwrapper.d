module uim.bootstrap.bs4.components.cards.deckwrapper;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardDeckwrapper : H5Div {
  mixin H5This!(["card-deck-wrapper"]));
}
static BS4CardDeckwrapper");

///
unittest {
  assert(BS4CardDeckwrapper() == `<div class="card-deck-wrapper"></div>`);
}}
