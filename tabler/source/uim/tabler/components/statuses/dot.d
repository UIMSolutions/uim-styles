module uim.tabler.components.statuses.dot;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABStatusDot : H5Span {
  mixin H5Template!(TABStatusDot, ["status-dot"]);
  mixin(HtmlMethods!TABStatusDot);

  TABStatusDot animated(bool value = true) {
    if (value)
      this.addClass("status-dot-animated");
    return this;
  }

  TABStatusDot color(string value) {
    this.addClass("status-" ~ value);
    return this;
  }
}

///
unittest {
  assert(TABStatusDot() == `<span class="status-dot"></span>`);
  assert(TABStatusDot(["testclass"]) == `<span class="status-dot testclass"></span>`);
  assert(TABStatusDot(["a": "b"]) == `<span class="status-dot" a="b"></span>`);
  assert(TABStatusDot(["testclass"], ["a": "b"]) == `<span class="status-dot testclass" a="b"></span>`);

  assert(TABStatusDot("Hello") == `<span class="status-dot">Hello</span>`);
  assert(TABStatusDot(["testclass"], "Hello") == `<span class="status-dot testclass">Hello</span>`);
  assert(TABStatusDot(["a": "b"], "Hello") == `<span class="status-dot" a="b">Hello</span>`);
  assert(TABStatusDot(["testclass"], ["a": "b"], "Hello") == `<span class="status-dot testclass" a="b">Hello</span>`);

  assert(TABStatusDot().animated() == `<span class="status-dot status-dot-animated"></span>`);
  assert(TABStatusDot().color("blue") == `<span class="status-blue status-dot"></span>`);
}
