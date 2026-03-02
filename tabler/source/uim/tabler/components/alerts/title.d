module uim.tabler.components.alerts.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * AlertTitle is used to create an alert title component.
 * https://tabler.io/docs/alerts
 */
class TABAlertTitle : H5H4 {
  mixin H5Template!(TABAlertTitle, ["alert-title"]);
  mixin(HtmlMethods!TABAlertTitle);
}
///
unittest {
  assert(TABAlertTitle() == `<h4 class="alert-title"></h4>`);
  assert(TABAlertTitle(["testclass"]) == `<h4 class="alert-title testclass"></h4>`);
  assert(TABAlertTitle(["a": "b"]) == `<h4 class="alert-title" a="b"></h4>`);
  assert(TABAlertTitle(["testclass"], ["a": "b"]) == `<h4 class="alert-title testclass" a="b"></h4>`);

  assert(TABAlertTitle("Hello") == `<h4 class="alert-title">Hello</h4>`);
  assert(TABAlertTitle(["testclass"], "Hello") == `<h4 class="alert-title testclass">Hello</h4>`);
  assert(TABAlertTitle(["a": "b"], "Hello") == `<h4 class="alert-title" a="b">Hello</h4>`);
  assert(TABAlertTitle(["testclass"], ["a": "b"], "Hello") == `<h4 class="alert-title testclass" a="b">Hello</h4>`);
}
