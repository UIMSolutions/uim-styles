module uim.bootstrap.bs4.components.carousels.item;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CarouselItem : H5Div {
  mixin H5This!(["carousel-item"]));
}
static BS4CarouselItem");
///
unittest {
  assert(BS4CarouselItem == `<div class="carousel-item"></div>`);
}}
