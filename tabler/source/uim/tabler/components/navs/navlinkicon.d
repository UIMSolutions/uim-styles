module uim.tabler.components.navs.navlinkicon;

import uim.tabler;

@safe:

class TABNavLinkIcon : H5Span {
  mixin H5Template!(TABNavLinkIcon, ["nav-link-icon"]);
  mixin(HtmlMethods!TABNavLinkIcon);
}
///
unittest {
  assert(TABNavLinkIcon() == `<span class="nav-link-icon"></span>`);
  assert(TABNavLinkIcon(["testclass"]) == `<span class="nav-link-icon testclass"></span>`);
  assert(TABNavLinkIcon(["a": "b"]) == `<span class="nav-link-icon" a="b"></span>`);
  assert(TABNavLinkIcon(["testclass"], ["a": "b"]) == `<span class="nav-link-icon testclass" a="b"></span>`);

  assert(TABNavLinkIcon("Hello") == `<span class="nav-link-icon">Hello</span>`);
  assert(TABNavLinkIcon(["testclass"], "Hello") == `<span class="nav-link-icon testclass">Hello</span>`);
  assert(TABNavLinkIcon(["a": "b"], "Hello") == `<span class="nav-link-icon" a="b">Hello</span>`);
  assert(TABNavLinkIcon(["testclass"], ["a": "b"], "Hello") == `<span class="nav-link-icon testclass" a="b">Hello</span>`);
}
