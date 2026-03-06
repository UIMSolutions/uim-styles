module uim.bootstrap53.components.accordions.button;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53AccordionButton : H5Button {
  mixin H5Template!(BS53AccordionButton, ["accordion-button"], null);
}
///
unittest {
  assert(BS53AccordionButton() == `<button class="accordion-button"></button>`);
  assert(BS53AccordionButton(["testclass"]) == `<button class="accordion-button testclass"></button>`);
  assert(BS53AccordionButton(["a":"b"]) == `<button class="accordion-button" a="b"></button>`);
  assert(BS53AccordionButton(["testclass"], ["a":"b"]) == `<button class="accordion-button testclass" a="b"></button>`);

  assert(BS53AccordionButton("Hello") == `<button class="accordion-button">Hello</button>`);
  assert(BS53AccordionButton(["testclass"], "Hello") == `<button class="accordion-button testclass">Hello</button>`);
  assert(BS53AccordionButton(["a":"b"], "Hello") == `<button class="accordion-button" a="b">Hello</button>`);
  assert(BS53AccordionButton(["testclass"], ["a":"b"], "Hello") == `<button class="accordion-button testclass" a="b">Hello</button>`);  
}