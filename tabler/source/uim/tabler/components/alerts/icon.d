module uim.tabler.components.alerts.icon;

import uim.tabler;
import uim.html.udas.udas;

mixin(ShowModule!());

@safe:

/** 
 * AlertIcon is used to create an alert icon component.
 * https://tabler.io/docs/alerts
 */
class TABAlertIcon : H5Div {
  mixin H5Template!(TABAlertIcon, ["alert-icon"]);
  mixin(HtmlMethods!TABAlertIcon);

  TABAlertIcon color(string value) {
    this.addClass(value);
    return this;
  }
}
///
unittest {
  assert(TABAlertIcon() == `<div class="alert-icon"></div>`);
  assert(TABAlertIcon(["testclass"]) == `<div class="alert-icon testclass"></div>`);
  assert(TABAlertIcon(["a": "b"]) == `<div class="alert-icon" a="b"></div>`);
  assert(TABAlertIcon(["testclass"], ["a": "b"]) == `<div class="alert-icon testclass" a="b"></div>`);

  assert(TABAlertIcon("Hello") == `<div class="alert-icon">Hello</div>`);
  assert(TABAlertIcon(["testclass"], "Hello") == `<div class="alert-icon testclass">Hello</div>`);
  assert(TABAlertIcon(["a": "b"], "Hello") == `<div class="alert-icon" a="b">Hello</div>`);
  assert(TABAlertIcon(["testclass"], ["a": "b"], "Hello") == `<div class="alert-icon testclass" a="b">Hello</div>`);

  assert(TABAlertIcon().color("blue") == `<div class="alert-icon blue"></div>`);
}
