module uim.tabler.components.alerts.link;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * AlertLink is used to create an alert link component.
 * https://tabler.io/docs/alerts
 */
class TABAlertLink : H5A {
  mixin H5Template!(TABAlertLink, ["alert"], ["role":"alert"]);
  mixin(HtmlMethods!TABAlertLink);

  TABAlertLink color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }
}
///
unittest {
  assert(TABAlertLink() == `<a class="alert" role="alert"></a>`);
  assert(TABAlertLink(["testclass"]) == `<a class="alert testclass" role="alert"></a>`);
  assert(TABAlertLink(["a": "b"]) == `<a class="alert" a="b" role="alert"></a>`);
  assert(TABAlertLink(["testclass"], ["a": "b"]) == `<a class="alert testclass" a="b" role="alert"></a>`);

  assert(TABAlertLink("Hello") == `<a class="alert" role="alert">Hello</a>`);
  assert(TABAlertLink(["testclass"], "Hello") == `<a class="alert testclass" role="alert">Hello</a>`);
  assert(TABAlertLink(["a": "b"], "Hello") == `<a class="alert" a="b" role="alert">Hello</a>`);
  assert(TABAlertLink(["testclass"], ["a": "b"], "Hello") == `<a class="alert testclass" a="b" role="alert">Hello</a>`);

  assert(TABAlertLink().color("blue") == `<a class="alert bg-blue" role="alert"></a>`);
}
