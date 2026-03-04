module uim.bootstrap5.basic.components.cards.card;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

@CssClass("block", "card-block")
@CssClass("inverse", "card-inverse")
class BS5Card : H5Div {
  mixin H5Template!(BS5Card, ["card"]);

  /// Add Image
  // mixin(MyContent!("image", "BS5CardImage"));
  ///
unittest {
    // assert(BS5Card.image == `<div class="card"><img class="card-img-top"></div>`);
  }

  /// Add card body
  // mixin(MyContent!("body_", "BS5CardBody"));
  ///
unittest {
    // assert(BS5Card.body_ == `<div class="card"><div class="card-body"></div></div>`);
  }

  /// Add card footer
  // mixin(MyContent!("footer", "BS5CardFooter"));
  ///
unittest {
    // assert(BS5Card.footer() == `<div class="card"><div class="card-footer"></div></div>`);
  }

  /// Add card header
  // mixin(MyContent!("header", "BS5CardHeader"));
  ///
unittest {
    // assert(BS5Card.header() == `<div class="card"><div class="card-header"></div></div>`);
  }

  // mixin(MyContent!("list", "BS5List"));
  ///
unittest {
    // // assert(BS5Card.header() == `<div class="card"><div class="card-header"></div></div>`);
  }

  /// Add card image overlay
  // mixin(MyContent!("overlay", "BS5CardOverlay"));
  ///
unittest {
    // // assert(BS5Card.overlay == `<div class="card"><div class="card-img-overlay"></div></div>`);
  }
}
///
unittest {
  assert(BS5Card() == `<div class="card"></div>`);
  assert(BS5Card(["testclass"]) == `<div class="card testclass"></div>`);
  assert(BS5Card(["a":"b"]) == `<div class="card" a="b"></div>`);
  assert(BS5Card(["testclass"], ["a":"b"]) == `<div class="card testclass" a="b"></div>`);

  assert(BS5Card("Hello") == `<div class="card">Hello</div>`);
  assert(BS5Card(["testclass"], "Hello") == `<div class="card testclass">Hello</div>`);
  assert(BS5Card(["a":"b"], "Hello") == `<div class="card" a="b">Hello</div>`);
  assert(BS5Card(["testclass"], ["a":"b"], "Hello") == `<div class="card testclass" a="b">Hello</div>`);

  assert(BS5Card().block == `<div class="card card-block"></div>`);
  assert(BS5Card().inverse == `<div class="card card-inverse"></div>`);
  assert(BS5Card().block.inverse == `<div class="card card-block card-inverse"></div>`);
  // // assert(BS5Card.block.inverse == `<div class="card card-block card-inverse"></div>`);
}
