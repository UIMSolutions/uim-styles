module uim.tabler.components.buttons.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonIcon : H5Button {
  mixin H5Template!(TABButtonIcon, ["btn", "btn-icon"], ["type": "button"]);
  mixin(HtmlMethods!TABButtonIcon);
}
///
unittest {
  assert(TABButtonIcon() == `<button class="btn btn-icon" type="button"></button>`);
  assert(TABButtonIcon(["testclass"]) == `<button class="btn btn-icon testclass" type="button"></button>`);
  assert(TABButtonIcon(["a":"b"]) == `<button class="btn btn-icon" type="button" a="b"></button>`);
  assert(TABButtonIcon(["testclass"], ["a":"b"]) == `<button class="btn btn-icon testclass" type="button" a="b"></button>`);

  assert(TABButtonIcon("Hello") == `<button class="btn btn-icon" type="button">Hello</button>`);
  assert(TABButtonIcon(["testclass"], "Hello") == `<button class="btn btn-icon testclass" type="button">Hello</button>`);
  assert(TABButtonIcon(["a":"b"], "Hello") == `<button class="btn btn-icon" type="button" a="b">Hello</button>`);
  assert(TABButtonIcon(["testclass"], ["a":"b"], "Hello") == `<button class="btn btn-icon testclass" type="button" a="b">Hello</button>`);
}
