  module uim.bootstrap5.basic.components.carousels.controlnext;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/** 
  * Represents the "Next" control for a Bootstrap 5 carousel.
  * This component is used to navigate to the next slide in the carousel.
  * It consists of an anchor element with appropriate classes and attributes, 
  * as well as inner spans for the icon and screen reader text.
  * 
  * Example usage:  
  * ``` nim
  * let nextControl = BS5CarouselControlNext()
  * echo nextControl.render()
  * ```
  * This will produce the following HTML:
  * ```html
  * <a class="carousel-control-next" data-bs-slide="next">
  *   <span class="carousel-control-next-icon"></span>
  *   <span class="sr-only">Next</span>
  * </a>
  * ```
  */
class BS5CarouselControlNext : H5A {
  mixin H5Template!(BS5CarouselControlNext, ["carousel-control-next"], ["data-bs-slide":"next"]);
  
  // override public void initialize() {
  //   super.initialize;
    
  //   this
  //     .addContent(
  //       H5Span(["carousel-control-next-icon"]), 
  //       H5Span(["sr-only"], "Next"));
  // }
}
///
unittest {
  // assert(BS5CarouselControlNext() == `<a class="carousel-control-next" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>`);

}
