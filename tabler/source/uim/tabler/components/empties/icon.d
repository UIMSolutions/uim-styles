module uim.tabler.components.empties.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Tabler empty icon component.
 * https://tabler.io/docs/empty#icon
 */
class TABEmptyIcon : H5Div {
  mixin H5Template!(TABEmptyIcon, ["empty-icon"]);
  mixin(HtmlMethods!TABEmptyIcon);
}
///
unittest {
  assert(TABEmptyIcon() == `<div class="empty-icon"></div>`);
  assert(TABEmptyIcon(["testclass"]) == `<div class="empty-icon testclass"></div>`);
  assert(TABEmptyIcon(["a": "b"]) == `<div class="empty-icon" a="b"></div>`);
  assert(TABEmptyIcon(["testclass"], ["a": "b"]) == `<div class="empty-icon testclass" a="b"></div>`);  

  assert(TABEmptyIcon("Hello") == `<div class="empty-icon">Hello</div>`);
  assert(TABEmptyIcon(["testclass"], "Hello") == `<div class="empty-icon testclass">Hello</div>`);
  assert(TABEmptyIcon(["a": "b"], "Hello") == `<div class="empty-icon" a="b">Hello</div>`);
  assert(TABEmptyIcon(["testclass"], ["a": "b"], "Hello") == `<div class="empty-icon testclass" a="b">Hello</div>`);
} 
