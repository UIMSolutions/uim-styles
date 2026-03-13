module uim.bootstrap.bs4.components.forms.customcontrols.control;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CustomControl : H5Div {
  mixin H5This!(["custom-control"]);

  mixin(MyContent!("checkbox", "BS4CustomCheckbox"));
  mixin(MyContent!("input", "BS4CustomInput"));
  mixin(MyContent!("radio", "BS4CustomRadio"));
  mixin(MyContent!("label", "H5Label"));
  
  ///
unittest {
    assert(BS4CustomControl == `<div class="custom-control"></div>`);
  }}
static BS4CustomControl");
}