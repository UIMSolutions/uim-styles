module uim.tabler.components.alerts.link;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * AlertLink is used to create an alert link component.
 * https://tabler.io/docs/alerts
 */
class TABAlertLink : H5A {
  mixin TABThis!(["alert"], ["role":"alert"]);

  TABAlertLink color(string value) {
    this.addClass(value);
    return this;
  }

  mixin(TABTemplate!("AlertLink"));
}
///
unittest {
  assert(TABAlertLink() == `<a class="alert" role="alert"></a>`);
  // assert(TABAlertLink().color("blue") == `<a class="bg-blue alert" role="alert"></a>`);
}
