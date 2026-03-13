module uim.bootstrap.bs4.components.cards.card;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:

class BS4Card : H5Div {
  mixin H5This!(["card"]));

  O block() {
    return this.addClasses("card-block");
  }
  ///
  unittest {
    assert(BS4Card.block == `<div class="card card-block"></div>`);
  }

  O inverse() {
    return this.addClasses("card-inverse");
  }
  ///
  unittest {
    assert(BS4Card.inverse == `<div class="card card-inverse"></div>`);
  }

  /// Add Image
  auto addImage(BS4CardImage image) {
    this.addContent(image);
    return this;
  }
  ///
  unittest {
    assert(BS4Card.addImage(image) == `<div class="card"><img class="card-img-top"></div>`);
  }

  /// Add card body
  auto addBody(BS4CardBody body) {
    this.addContent(body);
    return this;
  }
  ///
  unittest {
    assert(BS4Card.addBody(body) == `<div class="card"><div class="card-body"></div></div>`);
  }

  /// Add card footer
  auto addFooter(BS4CardFooter footer) {
    this.addContent(footer);
    return this;
  }
  ///
  unittest {
    assert(BS4Card.addFooter(footer) == `<div class="card"><div class="card-footer"></div></div>`);
  }

  /// Add card header
  auto addHeader(BS4CardHeader header) {
    this.addContent(header);
    return this;
  }
  ///
  unittest {
    assert(BS4Card.addHeader(header) == `<div class="card"><div class="card-header"></div></div>`);
  }

  /// Add card image overlay
  auto addOverlay(BS4CardOverlay overlay) {
    this.addContent(overlay);
    return this;
  }
  ///
  unittest {
    assert(BS4Card.addOverlay(overlay) == `<div class="card"><div class="card-img-overlay"></div></div>`);
  }

  static BS4Card opCall() {
    return new BS4Card;
  }
}
///
unittest {
  assert(BS4Card == `<div class="card"></div>`);
  assert(BS4Card.block.inverse == `<div class="card card-block card-inverse"></div>`);
}
