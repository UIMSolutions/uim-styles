module uim.bootstrap53.components.accordions.accordion;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
* Bootstrap 5.3 Accordion component
* https://getbootstrap.com/docs/5.3/components/accordion/
* Example:
* <div class="accordion" id="accordionExample">
*   <div class="accordion-item">
*     <h2 class="accordion-header" id="headingOne">
*       <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
*         Accordion Item #1
*       </button>
*     </h2>
*     <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
*       <div class="accordion-body">  
*         <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
*       </div>
*     </div>
*   </div>
* </div>
*/
@CssClass("flush", "accordion-flush") // .accordion-flush removes the default background-color, some borders, and some rounded corners to render accordions edge-to-edge with their parent container.
class BS53Accordion : H5Div {
  mixin H5Template!(BS53Accordion, ["accordion"], null);

  // auto addItem() {
  //   addContent(new BS53AccordionItem);
  //   return this;
  // }

  // auto addAccordionItem() {
  //   addContent(new BS53AccordionItem);
  //   return this;
  // }
}
///
unittest {
  assert(BS53Accordion() == `<div class="accordion"></div>`);
  assert(BS53Accordion(["testclass"]) == `<div class="accordion testclass"></div>`);
  assert(BS53Accordion(["a":"b"]) == `<div class="accordion" a="b"></div>`);
  assert(BS53Accordion(["testclass"], ["a":"b"]) == `<div class="accordion testclass" a="b"></div>`);

  assert(BS53Accordion("Hello") == `<div class="accordion">Hello</div>`);
  assert(BS53Accordion(["testclass"], "Hello") == `<div class="accordion testclass">Hello</div>`);
  assert(BS53Accordion(["a":"b"], "Hello") == `<div class="accordion" a="b">Hello</div>`);
  assert(BS53Accordion(["testclass"], ["a":"b"], "Hello") == `<div class="accordion testclass" a="b">Hello</div>`);

  assert(BS53Accordion().flush == `<div class="accordion accordion-flush"></div>`);
}

//<div class="accordion accordion-flush" id="accordionFlushExample">