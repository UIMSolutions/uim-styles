module uim.tabler.components.empties.image;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABEmptyImage : H5Div {
  mixin H5Template!(TABEmptyImage, ["empty-img"]);
  mixin(HtmlMethods!TABEmptyImage);
}
///
unittest {
  assert(TABEmptyImage() == `<div class="empty-img"></div>`);
  assert(TABEmptyImage(["testclass"]) == `<div class="empty-img testclass"></div>`);
  assert(TABEmptyImage(["a": "b"]) == `<div class="empty-img" a="b"></div>`);
  assert(TABEmptyImage(["testclass"], ["a": "b"]) == `<div class="empty-img testclass" a="b"></div>`);

  assert(TABEmptyImage("Hello") == `<div class="empty-img">Hello</div>`); 
  assert(TABEmptyImage(["testclass"], "Hello") == `<div class="empty-img testclass">Hello</div>`);
  assert(TABEmptyImage(["a": "b"], "Hello") == `<div class="empty-img" a="b">Hello</div>`);
  assert(TABEmptyImage(["testclass"], ["a": "b"], "Hello") == `<div class="empty-img testclass" a="b">Hello</div>`);
}
