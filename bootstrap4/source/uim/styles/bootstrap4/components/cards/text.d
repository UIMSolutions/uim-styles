module uim.bootstrap.bs4.components.cards.text;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardText : BS4Obj {
  mixin(H5This!("P", ["card-text"]));
}
static BS4CardText");

///
unittest {
  assert(BS4CardText == `<p class="card-text"></p>`);
  assert(BS4CardText.addContent("SomeThing") == `<p class="card-text">SomeThing</p>`);
}}
