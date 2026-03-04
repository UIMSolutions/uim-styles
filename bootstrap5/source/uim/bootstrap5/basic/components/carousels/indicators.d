module uim.bootstrap5.basic.components.carousels.indicators;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5CarouselIndicators : H5Div {
  mixin H5Template!(BS5CarouselIndicators, ["carousel-indicators"]);

  BS5CarouselIndicators active(bool mode = true) {
    if (mode)
      addClasses("active");
    return this;
  }

  // mixin(MyContent!("indicator", "H5Button"));
  ///
  unittest {
    assert(
      BS5CarouselIndicators.indicator.toString == `<div class="carousel-indicators"><button></button></div>`);
  }
}
///
unittest {
  assert(BS5CarouselIndicators() == `<div class="carousel-indicators"></div>`);
  assert(BS5CarouselIndicators(["testclass"]) == `<div class="carousel-indicators testclass"></div>`);
  assert(BS5CarouselIndicators(["a":"b"]) == `<div class="carousel-indicators" a="b"></div>`);
  assert(BS5CarouselIndicators(["testclass"], ["a":"b"]) == `<div class="carousel-indicators testclass" a="b"></div>`);

  assert(BS5CarouselIndicators("Hello") == `<div class="carousel-indicators">Hello</div>`); 
  assert(BS5CarouselIndicators(["testclass"], "Hello") == `<div class="carousel-indicators testclass">Hello</div>`);
  assert(BS5CarouselIndicators(["a":"b"], "Hello") == `<div class="carousel-indicators" a="b">Hello</div>`);
  assert(BS5CarouselIndicators(["testclass"], ["a":"b"], "Hello") == `<div class="carousel-indicators testclass" a="b">Hello</div>`);
  // assert(BS5CarouselIndicators == `<div class="carousel-indicators"></div>`); --- IGNORE ---

}

class BS5CarouselIndicator : H5Button {
  mixin H5Template!(BS5CarouselIndicator, ["carousel-indicator"]);
}
///
unittest {
  assert(BS5CarouselIndicator() == `<button class="carousel-indicator"></button>`);
  assert(BS5CarouselIndicator(["testclass"]) == `<button class="carousel-indicator testclass"></button>`);
  assert(BS5CarouselIndicator(["a":"b"]) == `<button class="carousel-indicator" a="b"></button>`);
  assert(BS5CarouselIndicator(["testclass"], ["a":"b"]) == `<button class="carousel-indicator testclass" a="b"></button>`);

  assert(BS5CarouselIndicator("Hello") == `<button class="carousel-indicator">Hello</button>`);
  assert(BS5CarouselIndicator(["testclass"], "Hello") == `<button class="carousel-indicator testclass">Hello</button>`);
  assert(BS5CarouselIndicator(["a":"b"], "Hello") == `<button class="carousel-indicator" a="b">Hello</button>`);
  assert(BS5CarouselIndicator(["testclass"], ["a":"b"], "Hello") == `<button class="carousel-indicator testclass" a="b">Hello</button>`);
  // assert(BS5CarouselIndicator == `<button class="carousel-indicator"></button>`); --- IGNORE ---
}
