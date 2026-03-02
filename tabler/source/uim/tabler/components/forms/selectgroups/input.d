module uim.tabler.components.forms.selectgroups.input;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABSelectgroupInput : H5Input {
  mixin TABTemplate!(["form-selectgroup-input"]);

  mixin(TABTemplate!("SelectgroupInput"));
}
///
unittest {
  assert(TABSelectgroupInput() == `<input class="form-selectgroup-input" />`);
}
