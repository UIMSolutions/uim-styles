module uim.bootstrap5.basic.components.accordions.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/// Button for accordion item header
class BS5AccordionButton : H5Button {
  mixin H5Template!(BS5AccordionButton, ["accordion-button"], ["type":"button"]);
}
///
unittest {
  // assert(BS5AccordionButton == `<button class="accordion-button" type="button"></button>`);
}
