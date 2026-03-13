module uim.bootstrap.bs4.components.forms.controls.search;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputSearch : BS4Input {
  mixin(H5This!("", null, `["type":"search"]`));
}
static BS4InputSearch"));

///
unittest {
  assert(BS4InputSearch == `<input class="form-control" type="search">`);  
}}