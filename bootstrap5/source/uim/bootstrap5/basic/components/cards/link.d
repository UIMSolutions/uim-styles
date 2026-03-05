module uim.bootstrap5.basic.components.cards.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardLink : H5A {
  mixin H5Template!(BS5CardLink, ["card-link"], ["href":"#"]);
}
///
unittest {
  // assert(BS5CardLink == `<a class="card-link" href="#"></a>`);
  // assert(BS5CardLink(["href":"/go"], "Page") == `<a class="card-link" href="/go">Page</a>`);
  // assert(BS5CardLink.content("SomeThing") == `<a class="card-link" href="#">SomeThing</a>`);
}
