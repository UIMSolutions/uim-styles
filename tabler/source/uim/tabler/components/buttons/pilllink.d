module uim.tabler.components.buttons.pilllink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonPillLink : TABButtonLink {
  mixin TABTemplate!(TABButtonPill, ["btn-pill"]);
  mixin(HtmlMethods!TABButtonPill);
}

///
unittest {
  assert(TABButtonPillLink() == `<a class="btn btn-pill" role="button"></a>`);
  assert(TABButtonPillLink(["testclass"]) == `<a class="btn btn-pill testclass" role="button"></a>`);
  assert(TABButtonPillLink(["a":"b"]) == `<a class="btn btn-pill" role="button" a="b"></a>`);
  assert(TABButtonPillLink(["testclass"], ["a":"b"]) == `<a class="btn btn-pill testclass" role="button" a="b"></a>`);

  assert(TABButtonPillLink("Hello") == `<a class="btn btn-pill" role="button">Hello</a>`);
  assert(TABButtonPillLink(["testclass"], "Hello") == `<a class="btn btn-pill testclass" role="button">Hello</a>`);
  assert(TABButtonPillLink(["a":"b"], "Hello") == `<a class="btn btn-pill" role="button" a="b">Hello</a>`);
  assert(TABButtonPillLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn btn-pill testclass" role="button" a="b">Hello</a>`);
}
