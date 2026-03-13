module uim.bootstrap.bs4.components.buttons.link;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ButtonLink : BS4ButtonObj {
  mixin(H5This!("A", ["btn"], `["type":"button"]`));
}
static BS4ButtonLink");

///
unittest {
  assert(BS4ButtonLink == `<a class="btn" type="button"></a>`);
}}
