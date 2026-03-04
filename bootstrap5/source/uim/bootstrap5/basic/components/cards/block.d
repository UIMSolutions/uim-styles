module uim.bootstrap5.basic.components.cards.block;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardBlock : H5Div {
  mixin H5Template!(BS5CardBlock, ["card-block"]);
}
///
unittest {
  assert(BS5CardBlock() == `<div class="card-block"></div>`);
  assert(BS5CardBlock(["testclass"]) == `<div class="card-block testclass"></div>`);
  assert(BS5CardBlock(["a":"b"]) == `<div class="card-block" a="b"></div>`);
  assert(BS5CardBlock(["testclass"], ["a":"b"]) == `<div class="card-block testclass" a="b"></div>`);

  assert(BS5CardBlock("Hello") == `<div class="card-block">Hello</div>`);
  assert(BS5CardBlock(["testclass"], "Hello") == `<div class="card-block testclass">Hello</div>`);
  assert(BS5CardBlock(["a":"b"], "Hello") == `<div class="card-block" a="b">Hello</div>`);
  assert(BS5CardBlock(["testclass"], ["a":"b"], "Hello") == `<div class="card-block testclass" a="b">Hello</div>`);
}
