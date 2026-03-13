module uim.bootstrap.bs4.components.carousels.indicators;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:

class BS4CarouselIndicators : BS4Obj {
  mixin(H5This!("ol", ["carousel-indicators"]));

  auto addIndicator(H5Li indicator) {
    this.addContent(indicator);
    return this;
  }
  ///
  unittest {
    assert(BS4CarouselIndicators.addIndicator(
        new H5Li) == `<ol class="carousel-indicators"><li></li></ol>`);
  }

  static BS4CarouselIndicators opCall() {
    return new BS4CarouselIndicators;
  }
}
///
unittest {
  assert(BS4CarouselIndicators.toString == `<ol class="carousel-indicators"></ol>`);
}
