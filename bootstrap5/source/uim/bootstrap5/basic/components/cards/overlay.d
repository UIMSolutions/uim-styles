module uim.bootstrap5.basic.components.cards.overlay;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/// Turns an image into a card background and adds text on top of the image
class BS5CardOverlay : H5Div {
  mixin H5Template!(BS5CardOverlay, ["card-img-overlay"]);
}
///
unittest {
  assert(BS5CardOverlay() == `<div class="card-img-overlay"></div>`);
  assert(BS5CardOverlay(["testclass"]) == `<div class="card-img-overlay testclass"></div>`);
  assert(BS5CardOverlay(["a":"b"]) == `<div class="card-img-overlay" a="b"></div>`);
  assert(BS5CardOverlay(["testclass"], ["a":"b"]) == `<div class="card-img-overlay testclass" a="b"></div>`);

  assert(BS5CardOverlay("Hello") == `<div class="card-img-overlay">Hello</div>`);
  assert(BS5CardOverlay(["testclass"], "Hello") == `<div class="card-img-overlay testclass">Hello</div>`);
  assert(BS5CardOverlay(["a":"b"], "Hello") == `<div class="card-img-overlay" a="b">Hello</div>`);
  assert(BS5CardOverlay(["testclass"], ["a":"b"], "Hello") == `<div class="card-img-overlay testclass" a="b">Hello</div>`);
}
