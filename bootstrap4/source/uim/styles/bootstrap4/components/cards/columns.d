module uim.bootstrap.bs4.components.cards.columns;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:

/// The .BS4CardColumns creates a masonry-like grid of cards (like pinterest)
class BS4CardColumns : H5Div {
  mixin H5This!(["card-columns"]));

  /// Add card 
  auto addCard() {
    this.addContent(new BS4Card);
    return this;
  }
  ///
  unittest {
    assert(BS4CardColumns.addCard() == `<div class="card-columns"><div class="card"></div></div>`);
  }

  static BS4CardColumns opCall() {
    return new BS4CardColumns;
  }
}
///
unittest {
  assert(BS4CardColumns == `<div class="card-columns"></div>`);
}
}
