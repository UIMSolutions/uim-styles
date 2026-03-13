module uim.bootstrap.bs4.components.jumbotrons.jumbotron;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Jumbotron : H5Div {
  mixin H5This!(["jumbotron"]));

  ///
unittest {
    assert(BS4Jumbotron == `<div class="jumbotron"></div>`);
  }}
}
static BS4Jumbotron");

///
unittest {
  // TODO
}}