module uim.tabler.components.statuses.indicator;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABStatusIndicator : H5Span {
  mixin H5Template!(TABStatusIndicator, ["status-indicator"]);
  mixin(HtmlMethods!TABStatusIndicator);

  override bool initialize(Json[string] initData = null) {
    super.initialize(initData);

    this.content(
      H5Span(["status-indicator-circle"]),
      H5Span(["status-indicator-circle"]),
      H5Span(["status-indicator-circle"])
    );

    return true;
  }

  TABStatusIndicator animated(bool value = true) {
    if (value)
      this.addClass("status-indicator-animated");
    return this;
  }

  TABStatusIndicator color(string value) {
    this.addClass("status-" ~ value);
    return this;
  }
}
///
unittest {
  //assert(TABStatusIndicator() == `<span class="status-indicator"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
  //assert(TABStatusIndicator(["testclass"]) == `<span class="status-indicator testclass"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
  //assert(TABStatusIndicator(["a": "b"]) == `<span class="status-indicator" a="b"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
  //assert(TABStatusIndicator(["testclass"], ["a": "b"]) == `<span class="status-indicator testclass" a="b"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
//
  //assert(TABStatusIndicator("Hello") == `<span class="status-indicator">Hello</span>`);
  //assert(TABStatusIndicator(["testclass"], "Hello") == `<span class="status-indicator testclass">Hello</span>`);
  //assert(TABStatusIndicator(["a": "b"], "Hello") == `<span class="status-indicator" a="b">Hello</span>`);
  //assert(TABStatusIndicator(["testclass"], ["a": "b"], "Hello") == `<span class="status-indicator testclass" a="b">Hello</span>`);
//
  //assert(TABStatusIndicator().animated() == `<span class="status-indicator status-indicator-animated"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
  //assert(TABStatusIndicator().color("blue") == `<span class="status-blue status-indicator"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
}
