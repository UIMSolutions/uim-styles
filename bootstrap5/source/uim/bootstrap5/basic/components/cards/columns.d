module uim.bootstrap5.basic.components.cards.columns;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/// The .BS5CardColumns creates a masonry-like grid of cards (like pinterest)
class BS5CardColumns : H5Div {
  mixin H5Template!(BS5CardColumns, ["card-columns"]);

  /// Add card 
  // mixin(MyContent!("card", "BS5Card"));
  ///
}
///
unittest {
  assert(BS5CardColumns() == `<div class="card-columns"></div>`);
  assert(BS5CardColumns(["testclass"]) == `<div class="card-columns testclass"></div>`);
  assert(BS5CardColumns(["a":"b"]) == `<div class="card-columns" a="b"></div>`);
  assert(BS5CardColumns(["testclass"], ["a":"b"]) == `<div class="card-columns testclass" a="b"></div>`);

  assert(BS5CardColumns("Hello") == `<div class="card-columns">Hello</div>`);
  assert(BS5CardColumns(["testclass"], "Hello") == `<div class="card-columns testclass">Hello</div>`);
  assert(BS5CardColumns(["a":"b"], "Hello") == `<div class="card-columns" a="b">Hello</div>`);
  assert(BS5CardColumns(["testclass"], ["a":"b"], "Hello") == `<div class="card-columns testclass" a="b">Hello</div>`);
}
