module uim.bootstrap5.basic.components.cards.group;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/// The BS5CardGroup creates a grid of cards that are of equal height and width, and no margin between cards
class BS5CardGroup : H5Div {
  mixin H5Template!(BS5CardGroup, ["card-group"]);

  /// Add card 
  // mixin(MyContent!("card", "BS5Card"));

  // BS5CardGroup card(BS5Card[] cards) {
  //   foreach (c; cards)
  //     this.card(c);
  //   return this;
  // }
}
///
unittest {
  assert(BS5CardGroup() == `<div class="card-group"></div>`);
  assert(BS5CardGroup(["testclass"]) == `<div class="card-group testclass"></div>`);
  assert(BS5CardGroup(["a":"b"]) == `<div class="card-group" a="b"></div>`);
  assert(BS5CardGroup(["testclass"], ["a":"b"]) == `<div class="card-group testclass" a="b"></div>`);

  assert(BS5CardGroup("Hello") == `<div class="card-group">Hello</div>`);
  assert(BS5CardGroup(["testclass"], "Hello") == `<div class="card-group testclass">Hello</div>`);
  assert(BS5CardGroup(["a":"b"], "Hello") == `<div class="card-group" a="b">Hello</div>`);
  assert(BS5CardGroup(["testclass"], ["a":"b"], "Hello") == `<div class="card-group testclass" a="b">Hello</div>`);
}
