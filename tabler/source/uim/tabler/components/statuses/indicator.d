module uim.tabler.components.statuses.indicator;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABStatusIndicator : H5Span {
  mixin TABThis!(["status-indicator"]);

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

  mixin(TABTemplate!("StatusIndicator"));
}
///
unittest {
//   assert(TABStatusIndicator() == `<span class="status-indicator"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
//   assert(TABStatusIndicator().animated() == `<span class="status-indicator status-indicator-animated"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
//   assert(TABStatusIndicator().color("blue") == `<span class="status-blue status-indicator"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
}
