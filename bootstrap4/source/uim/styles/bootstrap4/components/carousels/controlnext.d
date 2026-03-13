module uim.bootstrap.bs4.components.carousels.controlnext;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CarouselControlNext : BS4Obj {
  mixin(H5This!("a", ["carousel-control-next"], `["data-slide":"next"]`));
  override public void initialize() {
    super.initialize;
    
    this
      .addContent(H5Span(["carousel-control-next-icon"]))
      .addContent(H5Span(["sr-only"], "Next"));
  }
}
static BS4CarouselControlNext");

///
unittest {
  assert(BS4CarouselControlNext ==
    `<a class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>`);
}}
