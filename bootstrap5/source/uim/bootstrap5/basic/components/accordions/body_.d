module uim.bootstrap5.basic.components.accordions.body_;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/// 
class BS5AccordionBody : H5Div {
  mixin H5Template!(BS5AccordionBody, ["accordion-body"]);
}
///
unittest {
  // assert(BS5AccordionBody() == `<div class="accordion-body"></div>`);
}
