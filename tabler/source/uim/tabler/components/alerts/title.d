module uim.tabler.components.alerts.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * AlertTitle is used to create an alert title component.
 * https://tabler.io/docs/alerts
 */
class TABAlertTitle : H5H4 {
  mixin TABThis!(["alert-title"]);

  mixin(TABTemplate!("AlertTitle"));
}
///
unittest {
  assert(TABAlertTitle() == `<h4 class="alert-title"></h4>`);
  // assert(TABAlertTitle().color("blue") == `<h4 class="bg-blue alert-title"></h4>`);
}
