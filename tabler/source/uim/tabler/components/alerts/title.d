module uim.tabler.components.alerts.title;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
  * AlertTitle is used to create an alert title component.
  * https://tabler.io/docs/alerts
  *
  * Note: AlertTitle is used inside the Alert component and should not be used outside of it.
  * AlertTitle is a H4 element with the class "alert-title". It is used to display the title of an alert.
  * AlertTitle can be used with the color methods of the Alert component to change the color of the title.
  * Example:
  * ```
  * auto alert = TABAlert().color("red").colorText("white");
  * alert.add(TABAlertTitle("This is an alert title").colorText("white"));
  * alert.add(TABAlertIcon().color("white"));
  * alert.add("This is an alert message");
  * ``` 
  */
class TABAlertTitle : H5H4 {
  mixin H5Template!(TABAlertTitle, ["alert-title"]);
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
