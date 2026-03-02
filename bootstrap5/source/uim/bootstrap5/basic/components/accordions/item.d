module uim.bootstrap5.basic.components.accordions.item;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5AccordionItem : H5Div {
  mixin H5Template!(BS5AccordionItem, ["accordion-item"], null);
}
///
unittest {
    // assert(BS5AccordionItem == `<div class="accordion-item"></div>`);
  }
