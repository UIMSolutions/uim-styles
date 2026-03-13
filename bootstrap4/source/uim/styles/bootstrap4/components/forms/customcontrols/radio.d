module uim.bootstrap.bs4.components.forms.customcontrols.radio;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CustomRadio : BS4CustomControl {
  mixin(H5This!("DIV", ["custom-control", "custom-radio"]));
}

static BS4CustomRadio");

///
unittest {
  assert(BS4CustomRadio == `<div class="custom-control custom-radio"></div>`);
}}
