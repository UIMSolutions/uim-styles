module uim.tabler.components.forms.footer;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABFormFooter : H5Div {
  mixin TABThis!(["form-footer"]);
  
  mixin(TABTemplate!("FormFooter"));
}

///
unittest {
  assert(TABFormFooter() == `<div class="form-footer"></div>`);
}

// auto footer(BS5Form form, BS5FormFooter addFooter) {
  // return form(addFooter);
// }
// 