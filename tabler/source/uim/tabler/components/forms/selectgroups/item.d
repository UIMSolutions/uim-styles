module uim.tabler.components.forms.selectgroups.item;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABSelectgroupItem : H5Label {
  mixin TABTemplate!(["form-selectgroup-item"]);

  mixin(TABTemplate!("SelectgroupItem"));
}
///
unittest {
  assert(TABSelectgroupItem() == `<label class="form-selectgroup-item"></label>`);
}
