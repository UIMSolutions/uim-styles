module uim.bootstrap.bs4.components.carousels.carousel;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Carousel : BS4Obj
{
  mixin(H5This!("div", ["carousel"], `["data-ride":"carousel"]`));
  mixin(MyContent!("indicators", "BS4CarouselIndicators"));
  mixin(MyContent!("inner  ", "BS4CarouselInner"));
}

static BS4Carousel");
///
unittest
{
}
