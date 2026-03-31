module uim.bootstrap53.components.cards.body_;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53CardBody : H5Div {
  mixin H5Template!(BS53CardBody, ["card"], null);
}
///
unittest {
  assert(BS53CardBody() == `<div class="card"></div>`);
  assert(BS53CardBody(["testclass"]) == `<div class="card testclass"></div>`);
  assert(BS53CardBody(["a":"b"]) == `<div class="card" a="b"></div>`);
  assert(BS53CardBody(["testclass"], ["a":"b"]) == `<div class="card testclass" a="b"></div>`);  

  assert(BS53CardBody("Hello") == `<div class="card">Hello</div>`);
  assert(BS53CardBody(["testclass"], "Hello") == `<div class="card testclass">Hello</div>`);
  assert(BS53CardBody(["a":"b"], "Hello") == `<div class="card" a="b">Hello</div>`);
  assert(BS53CardBody(["testclass"], ["a":"b"], "Hello") == `<div class="card testclass" a="b">Hello</div>`);
}