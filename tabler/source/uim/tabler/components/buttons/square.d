module uim.tabler.components.buttons.square;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonSquare : TABButton {
  mixin H5Template!(TABButtonSquare, ["btn", "btn-square"], ["type": "button"]);
  mixin(HtmlMethods!TABButtonSquare);
}
///
unittest {
  assert(TABButtonSquare() == `<button class="btn btn-square" type="button"></button>`);
  assert(TABButtonSquare(["testclass"]) == `<button class="btn btn-square testclass" type="button"></button>`);
  assert(TABButtonSquare(["a":"b"]) == `<button class="btn btn-square" type="button" a="b"></button>`);
  assert(TABButtonSquare(["testclass"], ["a":"b"]) == `<button class="btn btn-square testclass" type="button" a="b"></button>`);

  assert(TABButtonSquare("Hello") == `<button class="btn btn-square" type="button">Hello</button>`);
  assert(TABButtonSquare(["testclass"], "Hello") == `<button class="btn btn-square testclass" type="button">Hello</button>`);
  assert(TABButtonSquare(["a":"b"], "Hello") == `<button class="btn btn-square" type="button" a="b">Hello</button>`);
  assert(TABButtonSquare(["testclass"], ["a":"b"], "Hello") == `<button class="btn btn-square testclass" type="button" a="b">Hello</button>`);
}
