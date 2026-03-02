module uim.tabler.components.statuses.status;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABStatus : H5Span {
  mixin H5Template!(TABStatus, ["status"]);
  mixin(HtmlMethods!TABStatus);

  TABStatus color(string value) {
    this.addClass("status-" ~ value);
    return this;
  }

  TABStatus lite(bool value = true) {
    if (value)
      this.addClass("status-lite");
    return this;
  }
}
///
unittest {
  assert(TABStatus() == `<span class="status"></span>`);
  assert(TABStatus(["testclass"]) == `<span class="status testclass"></span>`);
  assert(TABStatus(["a": "b"]) == `<span class="status" a="b"></span>`);
  assert(TABStatus(["testclass"], ["a": "b"]) == `<span class="status testclass" a="b"></span>`);

  assert(TABStatus("Hello") == `<span class="status">Hello</span>`);
  assert(TABStatus(["testclass"], "Hello") == `<span class="status testclass">Hello</span>`);
  assert(TABStatus(["a": "b"], "Hello") == `<span class="status" a="b">Hello</span>`);
  assert(TABStatus(["testclass"], ["a": "b"], "Hello") == `<span class="status testclass" a="b">Hello</span>`);

  assert(TABStatus().color("blue") == `<span class="status status-blue"></span>`);
  assert(TABStatus().lite() == `<span class="status status-lite"></span>`);
}
