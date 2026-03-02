module uim.tabler.components.alerts.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * AlertIcon is used to create an alert icon component.
 * https://tabler.io/docs/alerts
 */
class TABAlertIcon : H5Div {
  mixin TABTemplate!(["alert-icon"]);

  TABAlertIcon color(string value) {
    this.addClass(value);
    return this;
  }

  mixin(TABTemplate!("AlertIcon"));
}
///
unittest {
  assert(TABAlertIcon() == `<div class="alert-icon"></div>`);
  // assert(TABAlertIcon().color("blue") == `<div class="bg-blue alert-icon"></div>`);
}
