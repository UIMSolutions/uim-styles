module uim.tabler.components.statuses.dot;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABStatusDot : H5Span {
  mixin TABThis!(["status-dot"]);

  TABStatusDot animated(bool value = true) {
    if (value)
      this.addClass("status-dot-animated");
    return this;
  }

  TABStatusDot color(string value) {
    this.addClass("status-" ~ value);
    return this;
  }

  mixin(TABTemplate!("StatusDot"));
}

///
unittest {
  assert(TABStatusDot() == `<span class="status-dot"></span>`);
  assert(TABStatusDot().animated() == `<span class="status-dot status-dot-animated"></span>`);
  assert(TABStatusDot().color("blue") == `<span class="status-dot status-blue"></span>`);
}
