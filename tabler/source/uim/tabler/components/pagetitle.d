module uim.tabler.components.pagetitle;

import uim.tabler;

@safe:

class TABPageTitle : H5H2 {
  mixin TABThis!(["page-title"]);

  mixin(TABTemplate!("PageTitle"));
}
///
unittest {
  assert(TABPageTitle() == `<h2 class="page-title"></h2>`);
}
