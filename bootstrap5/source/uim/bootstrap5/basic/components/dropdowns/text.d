module uim.bootstrap5.basic.components.dropdowns.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5DropdownText : H5P {
  mixin H5Template!(BS5DropdownText);
  }
///
unittest {
  assert(BS5DropdownText("Hallo") == `<p>Hallo</p>`);
}
