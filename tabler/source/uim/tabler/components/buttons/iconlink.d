module uim.tabler.components.buttons.iconlink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonIconLink : TABButtonLink {
  mixin H5Template!(TABButtonIconLink, ["btn", "btn-icon"], ["role": "button"]);
  // mixin(HtmlMethods!TABButtonIconLink);
}
///
unittest {
  assert(TABButtonIconLink() == `<a class="btn btn-icon" role="button"></a>`);
  assert(TABButtonIconLink(["testclass"]) == `<a class="btn btn-icon testclass" role="button"></a>`);
  assert(TABButtonIconLink(["a": "b"]) == `<a class="btn btn-icon" a="b" role="button"></a>`);
  assert(TABButtonIconLink(["testclass"], ["a": "b"]) == `<a class="btn btn-icon testclass" a="b" role="button"></a>`);

  assert(TABButtonIconLink("Hello") == `<a class="btn btn-icon" role="button">Hello</a>`);
  assert(TABButtonIconLink(["testclass"], "Hello") == `<a class="btn btn-icon testclass" role="button">Hello</a>`);
  assert(TABButtonIconLink(["a": "b"], "Hello") == `<a class="btn btn-icon" a="b" role="button">Hello</a>`);
  assert(TABButtonIconLink(["testclass"], ["a": "b"], "Hello") == `<a class="btn btn-icon testclass" a="b" role="button">Hello</a>`);
}
