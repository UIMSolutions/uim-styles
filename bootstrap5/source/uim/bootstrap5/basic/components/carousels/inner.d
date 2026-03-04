module uim.bootstrap5.basic.components.carousels.inner;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CarouselInner : H5Div {
  mixin H5Template!(BS5CarouselInner, ["carousel-inner"]);

  // mixin(MyContent!("item", "BS5CarouselItem"));
}
///
unittest {
  assert(BS5CarouselInner() == `<div class="carousel-inner"></div>`);
  assert(BS5CarouselInner(["testclass"]) == `<div class="carousel-inner testclass"></div>`);
  assert(BS5CarouselInner(["a":"b"]) == `<div class="carousel-inner" a="b"></div>`);
  assert(BS5CarouselInner(["testclass"], ["a":"b"]) == `<div class="carousel-inner testclass" a="b"></div>`);

  assert(BS5CarouselInner("Hello") == `<div class="carousel-inner">Hello</div>`);
  assert(BS5CarouselInner(["testclass"], "Hello") == `<div class="carousel-inner testclass">Hello</div>`);
  assert(BS5CarouselInner(["a":"b"], "Hello") == `<div class="carousel-inner" a="b">Hello</div>`);
  assert(BS5CarouselInner(["testclass"], ["a":"b"], "Hello") == `<div class="carousel-inner testclass" a="b">Hello</div>`);
}
