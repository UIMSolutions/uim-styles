module uim.tabler.components.forms.checks.check;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Tabler form check component.
 * https://tabler.io/docs/forms#checks
 */
class TABFormCheck : H5Label {
  mixin TABTemplate!(TABFormCheck, ["form-check"]);
  mixin(HtmlMethods!TABFormCheck);

  mixin(AddContentCalls!("TABFormCheck", "Input", "TABFormCheckInput"));

  mixin(AddContentCalls!("TABFormCheck", "Label", "TABFormCheckLabel"));
}
///
unittest {
  assert(TABFormCheck() == `<label class="form-check"></label>`);
}
