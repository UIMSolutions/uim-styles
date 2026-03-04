module uim.bootstrap5.basic.components.carousels.carousel;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Carousel : H5Div {
  mixin H5Template!(BS5Carousel, ["carousel", "slide"], ["data-bs-ride":"carousel"]);

  // mixin(MyContent!("indicators", "BS5CarouselIndicators"));
  // mixin(MyContent!("inner", "BS5CarouselInner"));

  mixin(BS5Calls!("Carousel"));
}
///
unittest {
  assert(BS5Carousel() == `<div class="carousel slide" data-bs-ride="carousel"></div>`);
  assert(BS5Carousel(["testclass"]) == `<div class="carousel slide testclass" data-bs-ride="carousel"></div>`);
  assert(BS5Carousel(["a":"b"]) == `<div class="carousel slide" data-bs-ride="carousel" a="b"></div>`);
  assert(BS5Carousel(["testclass"], ["a":"b"]) == `<div class="carousel slide testclass" data-bs-ride="carousel" a="b"></div>`);

  assert(BS5Carousel("Hello") == `<div class="carousel slide" data-bs-ride="carousel">Hello</div>`);
  assert(BS5Carousel(["testclass"], "Hello") == `<div class="carousel slide testclass" data-bs-ride="carousel">Hello</div>`);
  assert(BS5Carousel(["a":"b"], "Hello") == `<div class="carousel slide" data-bs-ride="carousel" a="b">Hello</div>`);
  assert(BS5Carousel(["testclass"], ["a":"b"], "Hello") == `<div class="carousel slide testclass" data-bs-ride="carousel" a="b">Hello</div>`);
}
