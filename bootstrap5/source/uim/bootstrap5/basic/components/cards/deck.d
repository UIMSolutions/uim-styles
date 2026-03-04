module uim.bootstrap5.basic.components.cards.deck;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/// The BS5CardDeck creates a grid of cards that are of equal height and width
class BS5CardDeck : H5Div {
  mixin H5Template!(BS5CardDeck, ["card-deck"]);

  /// Add card 
  // mixin(MyContent!("card", "BS5Card"));
  //   O card(BS5Card[] cards) { foreach(c; cards) this.card(c); return this; }
  //   ///
}
///
unittest {
  assert(BS5CardDeck() == `<div class="card-deck"></div>`);
  assert(BS5CardDeck(["testclass"]) == `<div class="card-deck testclass"></div>`);
  assert(BS5CardDeck(["a":"b"]) == `<div class="card-deck" a="b"></div>`);
  assert(BS5CardDeck(["testclass"], ["a":"b"]) == `<div class="card-deck testclass" a="b"></div>`);

  assert(BS5CardDeck("Hello") == `<div class="card-deck">Hello</div>`);
  assert(BS5CardDeck(["testclass"], "Hello") == `<div class="card-deck testclass">Hello</div>`);
  assert(BS5CardDeck(["a":"b"], "Hello") == `<div class="card-deck" a="b">Hello</div>`);
  assert(BS5CardDeck(["testclass"], ["a":"b"], "Hello") == `<div class="card-deck testclass" a="b">Hello</div>`);
}
