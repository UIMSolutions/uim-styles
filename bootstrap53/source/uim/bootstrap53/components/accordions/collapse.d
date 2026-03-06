module uim.bootstrap53.components.accordions.collapse;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
  * Accordion collapse component.
  * Example:
  * <div class="accordion-collapse collapse show" id="collapseOne" data-bs-parent="#accordionExample">
  *   <div class="accordion-body">
  *     <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
  *   </div>
  * </div>
  */
@CssClass("collapse") // .collapse hides the content. To show the content, add .show to .collapse element.
@CssClass("show") // .show indicates that the content is visible. To hide the content, remove .show from .collapse element.
class BS53AccordionCollapse : H5Div {
  mixin H5Template!(BS53AccordionCollapse, ["accordion-collapse"], null);
}
///
unittest {
  assert(BS53AccordionCollapse() == `<div class="accordion-collapse"></div>`);
  assert(BS53AccordionCollapse(["testclass"]) == `<div class="accordion-collapse testclass"></div>`);
  assert(BS53AccordionCollapse(["a":"b"]) == `<div class="accordion-collapse" a="b"></div>`);
  assert(BS53AccordionCollapse(["testclass"], ["a":"b"]) == `<div class="accordion-collapse testclass" a="b"></div>`);  

  assert(BS53AccordionCollapse("Hello") == `<div class="accordion-collapse">Hello</div>`);
  assert(BS53AccordionCollapse(["testclass"], "Hello") == `<div class="accordion-collapse testclass">Hello</div>`);
  assert(BS53AccordionCollapse(["a":"b"], "Hello") == `<div class="accordion-collapse" a="b">Hello</div>`);
  assert(BS53AccordionCollapse(["testclass"], ["a":"b"], "Hello") == `<div class="accordion-collapse testclass" a="b">Hello</div>`);

  assert(BS53AccordionCollapse().show() == `<div class="accordion-collapse show"></div>`);
  assert(BS53AccordionCollapse().show().show(false) == `<div class="accordion-collapse"></div>`);

  assert(BS53AccordionCollapse().collapse() == `<div class="accordion-collapse collapse"></div>`);
  assert(BS53AccordionCollapse().collapse().collapse(false) == `<div class="accordion-collapse"></div>`);
}