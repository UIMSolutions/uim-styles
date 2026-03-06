module uim.bootstrap53.components.accordions.header;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53AccordionHeader : H5H2 {
  mixin H5Template!(BS53AccordionHeader, ["accordion-header"], null);
}
///
unittest {
  assert(BS53AccordionHeader() == `<h2 class="accordion-header"></h2>`);
  assert(BS53AccordionHeader(["testclass"]) == `<h2 class="accordion-header testclass"></h2>`);
  assert(BS53AccordionHeader(["a":"b"]) == `<h2 class="accordion-header" a="b"></h2>`);
  assert(BS53AccordionHeader(["testclass"], ["a":"b"]) == `<h2 class="accordion-header testclass" a="b"></h2>`);  

  assert(BS53AccordionHeader("Hello") == `<h2 class="accordion-header">Hello</h2>`);
  assert(BS53AccordionHeader(["testclass"], "Hello") == `<h2 class="accordion-header testclass">Hello</h2>`);
  assert(BS53AccordionHeader(["a":"b"], "Hello") == `<h2 class="accordion-header" a="b">Hello</h2>`);
  assert(BS53AccordionHeader(["testclass"], ["a":"b"], "Hello") == `<h2 class="accordion-header testclass" a="b">Hello</h2>`);
}