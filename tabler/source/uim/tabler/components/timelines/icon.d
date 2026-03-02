module uim.tabler.components.timelines.icon;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABTimelineIcon : H5Div {
  mixin H5Template!(TABTimelineIcon, ["list-timeline-icon"]);
  mixin(HtmlMethods!TABTTimelineIcon);

  TABTimelineIcon color(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }
}
///
unittest {
  assert(TABTimelineIcon() == `<div class="list-timeline-icon"></div>`);
  assert(TABTimelineIcon(["testclass"]) == `<div class="list-timeline-icon testclass"></div>`);
  assert(TABTimelineIcon(["a": "b"]) == `<div class="list-timeline-icon" a="b"></div>`);
  assert(TABTimelineIcon(["testclass"], ["a": "b"]) == `<div class="list-timeline-icon testclass" a="b"></div>`);

  assert(TABTimelineIcon("Hello") == `<div class="list-timeline-icon">Hello</div>`);
  assert(TABTimelineIcon(["testclass"], "Hello") == `<div class="list-timeline-icon testclass">Hello</div>`);
  assert(TABTimelineIcon(["a": "b"], "Hello") == `<div class="list-timeline-icon" a="b">Hello</div>`);
  assert(TABTimelineIcon(["testclass"], ["a": "b"], "Hello") == `<div class="list-timeline-icon testclass" a="b">Hello</div>`);

  assert(TABTimelineIcon().color("blue") == `<div class="bg-blue list-timeline-icon"></div>`);
  assert(TABTimelineIcon(["testclass"]).color("blue") == `<div class="bg-blue list-timeline-icon testclass"></div>`);
}
