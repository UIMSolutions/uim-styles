module uim.bootstrap.bs4.components.cards.group;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/// The BS4CardGroup creates a grid of cards that are of equal height and width, and no margin between cards
class BS4CardGroup : H5Div {
  mixin(H5This!("BS4CardGroup"));

override bool initialize(Json[string] args = null) {
    if (!super.initialize(args)) {
      return false;
    }

    addClasses("card-group");
    return true;
  }

  /// Add card 
  auto addCard(BS4Card card) {
    this.addContent(card);
    return this;
  }

  auto addCards(BS4Card[] cards) { 
    cards.each!((c) => this.addCard(c));
    return this;
  }
static BS4CardGroup opCall() {
    return new BS4CardGroup;
}
}
///
unittest {
  assert(BS4CardGroup == `<div class="card-group"></div>`);
  assert(BS4CardGroup.card == `<div class="card-group"><div class="card"></div></div>`);
}
