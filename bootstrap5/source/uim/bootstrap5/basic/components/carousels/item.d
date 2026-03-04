module uim.bootstrap5.basic.components.carousels.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

@CssClass("active)")
class BS5CarouselItem : H5Div {
  mixin H5Template!(BS5CarouselItem, ["carousel-item"]);
}
///
unittest {
  assert(BS5CarouselItem() == `<div class="carousel-item"></div>`);
  assert(BS5CarouselItem(["testclass"]) == `<div class="carousel-item testclass"></div>`);
  assert(BS5CarouselItem(["a":"b"]) == `<div class="carousel-item" a="b"></div>`);
  assert(BS5CarouselItem(["testclass"], ["a":"b"]) == `<div class="carousel-item testclass" a="b"></div>`);

  assert(BS5CarouselItem("Hello") == `<div class="carousel-item">Hello</div>`);
  assert(BS5CarouselItem(["testclass"], "Hello") == `<div class="carousel-item testclass">Hello</div>`);
  assert(BS5CarouselItem(["a":"b"], "Hello") == `<div class="carousel-item" a="b">Hello</div>`);
  assert(BS5CarouselItem(["testclass"], ["a":"b"], "Hello") == `<div class="carousel-item testclass" a="b">Hello</div>`);

  assert(BS5CarouselItem().active == `<div class="active carousel-item"></div>`);
}
