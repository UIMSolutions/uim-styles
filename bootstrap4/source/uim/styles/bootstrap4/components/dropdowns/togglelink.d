module uim.bootstrap.bs4.components.dropdowns.togglelink;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownTogglelink : BS4ButtonLink {
  mixin(H5This!("A", ["btn", "dropdown-toggle"], `["aria-haspopup":"true", "aria-expanded":"false"]`));
}
static BS4DropdownTogglelink");
///
unittest {
  assert(BS4DropdownTogglelink == `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`);
  assert(BS4DropdownTogglelink.id("id") == `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`);
}}
