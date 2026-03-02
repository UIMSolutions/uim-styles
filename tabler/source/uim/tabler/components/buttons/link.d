module uim.tabler.components.buttons.link;


import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonLink : H5A {
  mixin H5Template!(TABButtonLink, ["btn"], ["role": "button"]);
  mixin(HtmlMethods!TABButtonLink);
}
///
unittest {
  assert(TABButtonLink() == `<a class="btn" role="button"></a>`);
  assert(TABButtonLink(["testclass"]) == `<a class="btn testclass" role="button"></a>`);
  assert(TABButtonLink(["a":"b"]) == `<a class="btn" a="b" role="button"></a>`);
  assert(TABButtonLink(["testclass"], ["a":"b"]) == `<a class="btn testclass" a="b" role="button"></a>`);

  assert(TABButtonLink("Hello") == `<a class="btn" role="button">Hello</a>`);
  assert(TABButtonLink(["testclass"], "Hello") == `<a class="btn testclass" role="button">Hello</a>`);
  assert(TABButtonLink(["a":"b"], "Hello") == `<a class="btn" a="b" role="button">Hello</a>`);
  assert(TABButtonLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn testclass" a="b" role="button">Hello</a>`);
}

