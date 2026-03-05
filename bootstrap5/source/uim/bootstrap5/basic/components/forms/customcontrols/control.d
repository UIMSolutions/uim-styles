module uim.bootstrap5.basic.components.forms.customcontrols.control;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CustomControl : H5Div {
  mixin H5Template!(BS5CustomControl, ["custom-control"]);

  // // mixin(MyContent!("checkbox", "BS5CustomCheckbox"));
  // // mixin(MyContent!("input", "BS5CustomInput"));
  // // mixin(MyContent!("radio", "BS5CustomRadio"));
  // // mixin(MyContent!("label", "H5Label"));  
}
///
unittest {
  assert(BS5CustomControl() == `<div class="custom-control"></div>`);
  assert(BS5CustomControl(["testclass"]) == `<div class="custom-control testclass"></div>`);
  assert(BS5CustomControl(["a":"b"]) == `<div class="custom-control" a="b"></div>`);
  assert(BS5CustomControl(["testclass"], ["a":"b"]) == `<div class="custom-control testclass" a="b"></div>`);

  assert(BS5CustomControl("SomeContent") == `<div class="custom-control">SomeContent</div>`);
  assert(BS5CustomControl(["testclass"], "SomeContent") == `<div class="custom-control testclass">SomeContent</div>`);
  assert(BS5CustomControl(["a":"b"], "SomeContent") == `<div class="custom-control" a="b">SomeContent</div>`);
  assert(BS5CustomControl(["testclass"], ["a":"b"], "SomeContent") == `<div class="custom-control testclass" a="b">SomeContent</div>`);
}
