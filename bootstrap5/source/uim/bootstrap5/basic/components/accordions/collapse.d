module uim.bootstrap5.basic.components.accordions.collapse;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5AccordionCollapse : H5Div {
  mixin H5Template!(BS5AccordionCollapse, ["accordion-collapse"], null);

  // BS5AccordionCollapse body_() {
  //   addContent(BS5AccordionBody);
  //   return this;
  // }
}
///
unittest {
  // assert(BS5AccordionCollapse == `<div class="accordion-collapse"></div>`);
}
