module uim.bootstrap.bs4.components.cards.link;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardLink : BS4Obj {
  mixin(H5This!("A", ["card-link"], `["href":"#"]`));
}
static BS4CardLink");
///
unittest {
  assert(BS4CardLink == `<a class="card-link" href="#"></a>`);
  assert(BS4CardLink(["href":"/go"], "Page") == `<a class="card-link" href="/go">Page</a>`);
  assert(BS4CardLink.addContent("SomeThing") == `<a class="card-link" href="#">SomeThing</a>`);
}}
