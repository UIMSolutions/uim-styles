module uim.tabler.components.forms.selectgroups.label;

import uim.tabler;

mixin(ShowModule!());

@safe:
/** 
 * SelectgroupLabel is used to create a label for a select group. It is used in the FormSelectgroup component.
 * https://tabler.io/docs/forms#select-groups
 */
class TABSelectgroupLabel : H5Span {
  mixin TABThis!(["form-selectgroup-label"]);

  mixin(TABTemplate!("SelectgroupLabel"));
}

///
unittest {
  assert(TABSelectgroupLabel() == `<span class="form-selectgroup-label"></span>`);
}




