module uim.bootstrap53.components.accordions.item;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53AccordionItem : H5Div {
  mixin H5Template!(BS53AccordionItem, ["accordion-item"], null);
}
///
unittest {
  assert(BS53AccordionItem() == `<div class="accordion-item"></div>`);
  assert(BS53AccordionItem(["testclass"]) == `<div class="accordion-item testclass"></div>`);
  assert(BS53AccordionItem(["a":"b"]) == `<div class="accordion-item" a="b"></div>`);
  assert(BS53AccordionItem(["testclass"], ["a":"b"]) == `<div class="accordion-item testclass" a="b"></div>`);  

  assert(BS53AccordionItem("Hello") == `<div class="accordion-item">Hello</div>`);
  assert(BS53AccordionItem(["testclass"], "Hello") == `<div class="accordion-item testclass">Hello</div>`);
  assert(BS53AccordionItem(["a":"b"], "Hello") == `<div class="accordion-item" a="b">Hello</div>`);
  assert(BS53AccordionItem(["testclass"], ["a":"b"], "Hello") == `<div class="accordion-item testclass" a="b">Hello</div>`);
}