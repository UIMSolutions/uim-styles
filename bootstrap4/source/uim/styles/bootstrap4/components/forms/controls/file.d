module uim.bootstrap.bs4.components.forms.controls.file;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4InputFile : BS4Input {
  mixin(H5This!(null, null, `["type":"file"]`));
}
static BS4InputFile"));

///
unittest {
  assert(BS4InputFile == `<input class="form-control" type="file">`);
}}