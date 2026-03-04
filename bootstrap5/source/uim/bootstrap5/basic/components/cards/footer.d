module uim.bootstrap5.basic.components.cards.footer;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardFooter : H5Div {
  mixin H5Template!(BS5CardFooter, ["card-footer"]);
}
///
unittest {
  assert(BS5CardFooter() == `<div class="card-footer"></div>`);
  assert(BS5CardFooter(["testclass"]) == `<div class="card-footer testclass"></div>`);
  assert(BS5CardFooter(["a":"b"]) == `<div class="card-footer" a="b"></div>`);
  assert(BS5CardFooter(["testclass"], ["a":"b"]) == `<div class="card-footer testclass" a="b"></div>`);

  assert(BS5CardFooter("Hello") == `<div class="card-footer"></div>`);
  assert(BS5CardFooter(["testclass"], "Hello") == `<div class="card-footer testclass">Hello</div>`);
  assert(BS5CardFooter(["a":"b"], "Hello") == `<div class="card-footer" a="b">Hello</div>`);
  assert(BS5CardFooter(["testclass"], ["a":"b"],"Hello") == `<div class="card-footer testclass" a="b">Hello</div>`);
}
