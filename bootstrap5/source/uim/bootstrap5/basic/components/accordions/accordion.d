module uim.bootstrap5.basic.components.accordions.accordion;

@safe:
import uim.bootstrap5;

class BS5Accordion : H5Div {
  mixin H5Template!(BS5Accordion, ["accordion"], null);

  BS5Accordion addItem() {
    auto item = new BS5AccordionItem;
    this ~= item;
    return this;
  }

}
///
unittest {
  // assert(BS5Accordion() == `<div class="accordion"></div>`);
  // assert(BS5Accordion().addItem() == `<div class="accordion"><div class="accordion-item"></div></div>`);
}
