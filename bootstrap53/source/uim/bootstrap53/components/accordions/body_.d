module uim.bootstrap53.components.accordions.body_;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53AccordionBody : H5Div {
  mixin H5Template!(BS53AccordionBody, ["accordion-body"], null);
}
///
unittest {
  assert(BS53AccordionBody() == `<div class="accordion-body"></div>`);
  assert(BS53AccordionBody(["testclass"]) == `<div class="accordion-body testclass"></div>`);
  assert(BS53AccordionBody(["a":"b"]) == `<div class="accordion-body" a="b"></div>`);
  assert(BS53AccordionBody(["testclass"], ["a":"b"]) == `<div class="accordion-body testclass" a="b"></div>`);  

  assert(BS53AccordionBody("Hello") == `<div class="accordion-body">Hello</div>`);
  assert(BS53AccordionBody(["testclass"], "Hello") == `<div class="accordion-body testclass">Hello</div>`);
  assert(BS53AccordionBody(["a":"b"], "Hello") == `<div class="accordion-body" a="b">Hello</div>`);
  assert(BS53AccordionBody(["testclass"], ["a":"b"], "Hello") == `<div class="accordion-body testclass" a="b">Hello</div>`);
}