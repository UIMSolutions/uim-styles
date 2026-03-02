module uim.bootstrap5.basic.components.accordions.header;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5AccordionHeader : H5H2 {
  mixin H5Template!(BS5AccordionHeader, ["accordion-header"], null);

  // // mixin(MyContent!("button", "BS5AccordionButton"));

}

///
unittest {
  // assert(BS5AccordionHeader() == `<h2 class="accordion-header"></h2>`);
}

