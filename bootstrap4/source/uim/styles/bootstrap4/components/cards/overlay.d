module uim.bootstrap.bs4.components.cards.overlay;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/// Turns an image into a card background and adds text on top of the image
class BS4CardOverlay : H5Div {
  mixin H5This!(["card-img-overlay"]);
}
/// Shortcuts
static BS4CardOverlay");
///
unittest {
  assert(BS4CardOverlay == `<div class="card-img-overlay"></div>`);
}
