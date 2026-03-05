module uim.bootstrap5.basic.components.carousels.controlprev;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5CarouselControlPrev : H5A {
  mixin H5Template!(BS5CarouselControlPrev, ["carousel-control-prev"], ["data-bs-slide":"prev"]);
  
  // override public void initialize() {
  //   super.initialize;
  //   this
  //     .addContent(
  //       H5Span(["carousel-control-prev-icon"]), H5Span(["sr-only"], "Previous"));
  // }
}
///
unittest {
  // assert(BS5CarouselControlPrev() ==
  //      `<a class="carousel-control-prev" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>`);
}
