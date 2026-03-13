module uim.bootstrap.bs4.components.cards.body_;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardBody : H5Div {
  mixin H5This!(["card-body"]);

  mixin(MyContent!("title", "BS4CardTitle"));
  ///
unittest {
    assert(BS4CardBody.title("Hallo") == `<div class="card-body"><h4 class="card-title">Hallo</h4></div>`);
  }}

  mixin(MyContent!("text", "BS4CardText"));
  ///
unittest {
    assert(BS4CardBody.text("Hallo") == `<div class="card-body"><p class="card-text">Hallo</p></div>`);
  }
static BS4CardBody");
}
///
unittest {
  assert(BS4CardBody == `<div class="card-body"></div>`);
}}
