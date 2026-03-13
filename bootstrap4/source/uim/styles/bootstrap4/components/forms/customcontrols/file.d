module uim.bootstrap.bs4.components.forms.customcontrols.file;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CustomFile : H5Div {
  mixin H5This!(["custom-file"]);

  mixin(MyContent!("input", "BS4CustomFileInput"));
  mixin(MyContent!("label", "BS4CustomFileLabel"));
static BS4CustomFile");
}


unittest
{
  assert(BS4CustomFile == `<div class="custom-file"></div>`);
}
