module uim.tabler.components.buttons.pilllink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonPillLink : TABButtonLink {
  mixin H5Template!(TABButtonPillLink, ["btn", "btn-pill"], ["role": "button"]);
  mixin(HtmlMethods!TABButtonPillLink);
}

///
unittest {
  assert(TABButtonPillLink() == `<a class="btn btn-pill" role="button"></a>`);
  assert(TABButtonPillLink(["testclass"]) == `<a class="btn btn-pill testclass" role="button"></a>`);
  assert(TABButtonPillLink(["a":"b"]) == `<a class="btn btn-pill" a="b" role="button"></a>`);
  assert(TABButtonPillLink(["testclass"], ["a":"b"]) == `<a class="btn btn-pill testclass" a="b" role="button"></a>`);

  assert(TABButtonPillLink("Hello") == `<a class="btn btn-pill" role="button">Hello</a>`);
  assert(TABButtonPillLink(["testclass"], "Hello") == `<a class="btn btn-pill testclass" role="button">Hello</a>`);
  assert(TABButtonPillLink(["a":"b"], "Hello") == `<a class="btn btn-pill" a="b" role="button">Hello</a>`);
  assert(TABButtonPillLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn btn-pill testclass" a="b" role="button">Hello</a>`);
}
