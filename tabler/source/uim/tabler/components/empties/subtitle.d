module uim.tabler.components.empties.subtitle;

import uim.tabler;

mixin(ShowModule!());

@safe:


/**
  * Tabler empty subtitle component.
  *
  * https://tabler.io/docs/empty#subtitle
  */
class TABEmptySubtitle : H5P {
  mixin H5Template!(TABEmptySubtitle, ["empty-subtitle"]);
  mixin(HtmlMethods!TABEmptySubtitle);
}
///
unittest {
  assert(TABEmptySubtitle() == `<p class="empty-subtitle"></p>`);
  assert(TABEmptySubtitle(["testclass"]) == `<p class="empty-subtitle testclass"></p>`);
  assert(TABEmptySubtitle(["a": "b"]) == `<p class="empty-subtitle" a="b"></p>`);
  assert(TABEmptySubtitle(["testclass"], ["a": "b"]) == `<p class="empty-subtitle testclass" a="b"></p>`);

  assert(TABEmptySubtitle("Hello") == `<p class="empty-subtitle">Hello</p>`);
  assert(TABEmptySubtitle(["testclass"], "Hello") == `<p class="empty-subtitle testclass">Hello</p>`);
  assert(TABEmptySubtitle(["a": "b"], "Hello") == `<p class="empty-subtitle" a="b">Hello</p>`);
  assert(TABEmptySubtitle(["testclass"], ["a": "b"], "Hello") == `<p class="empty-subtitle testclass" a="b">Hello</p>`);
}
