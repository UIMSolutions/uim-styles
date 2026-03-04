module uim.bootstrap5.basic.components.cards.header;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 


/// CardHeader adds a header to a card
class BS5CardHeader : H5Div {
  mixin H5Template!(BS5CardHeader, ["card-header"]);
}
///
unittest {
  assert(BS5CardHeader() == `<div class="card-header"></div>`);
  assert(BS5CardHeader(["testclass"]) == `<div class="card-header testclass"></div>`);
  assert(BS5CardHeader(["a":"b"]) == `<div class="card-header" a="b"></div>`);
  assert(BS5CardHeader(["testclass"], ["a":"b"]) == `<div class="card-header testclass" a="b"></div>`);

  assert(BS5CardHeader("Hello") == `<div class="card-header">Hello</div>`);
  assert(BS5CardHeader(["testclass"], "Hello") == `<div class="card-header testclass">Hello</div>`);
  assert(BS5CardHeader(["a":"b"], "Hello") == `<div class="card-header" a="b">Hello</div>`);
  assert(BS5CardHeader(["testclass"], ["a":"b"], "Hello") == `<div class="card-header testclass" a="b">Hello</div>`);
}
