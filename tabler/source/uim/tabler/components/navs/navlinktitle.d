module uim.tabler.components.navs.navlinktitle;

import uim.tabler;

mixin(ShowModule!());

@safe:

/// NavLinkTitle is used to create a title for a nav link. It is used in the NavLink component.
class TABNavLinkTitle : H5Span {
  mixin H5Template!(TABNavLinkTitle, ["nav-link-title"]);
  mixin(HtmlMethods!TABNavLinkTitle);
}
///
unittest {
  assert(TABNavLinkTitle() == `<span class="nav-link-title"></span>`);
  assert(TABNavLinkTitle(["testclass"]) == `<span class="nav-link-title testclass"></span>`);
  assert(TABNavLinkTitle(["a": "b"]) == `<span class="nav-link-title" a="b"></span>`);
  assert(TABNavLinkTitle(["testclass"], ["a": "b"]) == `<span class="nav-link-title testclass" a="b"></span>`);

  assert(TABNavLinkTitle("Hello") == `<span class="nav-link-title">Hello</span>`);
  assert(TABNavLinkTitle(["testclass"], "Hello") == `<span class="nav-link-title testclass">Hello</span>`);
  assert(TABNavLinkTitle(["a": "b"], "Hello") == `<span class="nav-link-title" a="b">Hello</span>`);
  assert(TABNavLinkTitle(["testclass"], ["a": "b"], "Hello") == `<span class="nav-link-title testclass" a="b">Hello</span>`);
}
