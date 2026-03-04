module uim.bootstrap5.basic.components.cards.deckwrapper;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardDeckwrapper : H5Div {
  mixin H5Template!(BS5CardDeckwrapper, ["card-deck-wrapper"]);
}
///
unittest {
  assert(BS5CardDeckwrapper() == `<div class="card-deck-wrapper"></div>`);
  assert(BS5CardDeckwrapper(["testclass"]) == `<div class="card-deck-wrapper testclass"></div>`);
  assert(BS5CardDeckwrapper(["a":"b"]) == `<div class="card-deck-wrapper" a="b"></div>`);
  assert(BS5CardDeckwrapper(["testclass"], ["a":"b"]) == `<div class="card-deck-wrapper testclass" a="b"></div>`);

  assert(BS5CardDeckwrapper("Hello") == `<div class="card-deck-wrapper">Hello</div>`);
  assert(BS5CardDeckwrapper(["testclass"], "Hello") == `<div class="card-deck-wrapper testclass">Hello</div>`);
  assert(BS5CardDeckwrapper(["a":"b"], "Hello") == `<div class="card-deck-wrapper" a="b">Hello</div>`);
  assert(BS5CardDeckwrapper(["testclass"], ["a":"b"], "Hello") == `<div class="card-deck-wrapper testclass" a="b">Hello</div>`);
}
