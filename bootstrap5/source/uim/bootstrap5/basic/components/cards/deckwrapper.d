module uim.bootstrap5.basic.components.cards.deckwrapper;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardDeckwrapper : H5Div {
  mixin H5!(["card-deck-wrapper"]);
 
  mixin(BS5Calls!("CardDeckwrapper"));
}
///
unittest {
  // assert(BS5CardDeckwrapper() == `<div class="card-deck-wrapper"></div>`);
}
