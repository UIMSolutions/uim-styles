module uim.bootstrap.bs4.components.forms.customcontrols.filelabel;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CustomFileLabel : BS4Obj
{
  mixin(H5This!("LABEL", ["custom-file-label"]));
}

static BS4CustomFileLabel");

unittest
{
  assert(BS4CustomFileLabel == `<label class="custom-file-label"></label>`);
}
