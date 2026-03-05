module uim.tabler.components.buttons.link;

import uim.tabler;

mixin(ShowModule!());

@safe:

@CssClass("primary", "btn-primary")
@CssClass("secondary", "btn-secondary")
@CssClass("success", "btn-success")
@CssClass("warning", "btn-warning")
@CssClass("danger", "btn-danger")
@CssClass("info", "btn-info")
@CssClass("dark", "btn-dark")
@CssClass("light", "btn-light")
class TABButtonLink : H5A {
  mixin H5Template!(TABButtonLink, ["btn"], ["role": "button"]);
}
///
unittest {
  assert(TABButtonLink() == `<a class="btn" role="button"></a>`);
  assert(TABButtonLink(["testclass"]) == `<a class="btn testclass" role="button"></a>`);
  assert(TABButtonLink(["a": "b"]) == `<a class="btn" a="b" role="button"></a>`);
  assert(TABButtonLink(["testclass"], ["a": "b"]) == `<a class="btn testclass" a="b" role="button"></a>`);

  assert(TABButtonLink("Hello") == `<a class="btn" role="button">Hello</a>`);
  assert(TABButtonLink(["testclass"], "Hello") == `<a class="btn testclass" role="button">Hello</a>`);
  assert(TABButtonLink(["a": "b"], "Hello") == `<a class="btn" a="b" role="button">Hello</a>`);
  assert(TABButtonLink(["testclass"], ["a": "b"], "Hello") == `<a class="btn testclass" a="b" role="button">Hello</a>`);

  assert(TABButtonLink().primary() == `<a class="btn btn-primary" role="button"></a>`);
  assert(TABButtonLink()
      .secondary() == `<a class="btn btn-secondary" role="button"></a>`);
  assert(TABButtonLink().success() == `<a class="btn btn-success" role="button"></a>`);
  assert(TABButtonLink().warning() == `<a class="btn btn-warning" role="button"></a>`);
  assert(TABButtonLink().danger() == `<a class="btn btn-danger" role="button"></a>`);
  assert(TABButtonLink().info() == `<a class="btn btn-info" role="button"></a>`);
  assert(TABButtonLink().dark() == `<a class="btn btn-dark" role="button"></a>`);
  assert(TABButtonLink().light() == `<a class="btn btn-light" role="button"></a>`);
}
