module uim.bootstrap5.basic.components.cards.body_;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardBody : H5Div {
  mixin H5Template!(BS5CardBody, ["card-body"]);

  // mixin(MyContent!("title", "BS5CardTitle"));
  ///
unittest {
    // assert(BS5CardBody.title("Hallo") == `<div class="card-body"><h4 class="card-title">Hallo</h4></div>`);
  }

  // mixin(MyContent!("text", "BS5CardText"));
  ///
unittest {
    // assert(BS5CardBody.text("Hallo") == `<div class="card-body"><p class="card-text">Hallo</p></div>`);
  }
}
///
unittest {
  assert(BS5CardBody() == `<div class="card-body"></div>`);
  assert(BS5CardBody(["testclass"]) == `<div class="card-body testclass"></div>`);
  assert(BS5CardBody(["a":"b"]) == `<div class="card-body" a="b"></div>`);
  assert(BS5CardBody(["testclass"], ["a":"b"]) == `<div class="card-body testclass" a="b"></div>`);

  assert(BS5CardBody("Hello") == `<div class="card-body">Hello</div>`);
  assert(BS5CardBody(["testclass"], "Hello") == `<div class="card-body testclass">Hello</div>`);
  assert(BS5CardBody(["a":"b"], "Hello") == `<div class="card-body" a="b">Hello</div>`);
  assert(BS5CardBody(["testclass"], ["a":"b"], "Hello") == `<div class="card-body testclass" a="b">Hello</div>`);
}
