module uim.tabler.components.timelines.time;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * TimelineTime is used to create a time for the timeline.
 * https://tabler.io/docs/components/timeline#time
 */
class TABTimelineTime : H5Div {
  mixin H5Template!(TABTimelineTime, ["list-timeline-time"]);
  mixin(HtmlMethods!TABTimelineTime);
}
///
unittest {
  assert(TABTimelineTime() == `<div class="list-timeline-time"></div>`);
  assert(TABTimelineTime(["testclass"]) == `<div class="list-timeline-time testclass"></div>`);
  assert(TABTimelineTime(["a": "b"]) == `<div class="list-timeline-time" a="b"></div>`);
  assert(TABTimelineTime(["testclass"], ["a": "b"]) == `<div class="list-timeline-time testclass" a="b"></div>`);

  assert(TABTimelineTime("Hello") == `<div class="list-timeline-time">Hello</div>`);
  assert(TABTimelineTime(["testclass"], "Hello") == `<div class="list-timeline-time testclass">Hello</div>`);
  assert(TABTimelineTime(["a": "b"], "Hello") == `<div class="list-timeline-time" a="b">Hello</div>`);
  assert(TABTimelineTime(["testclass"], ["a": "b"], "Hello") == `<div class="list-timeline-time testclass" a="b">Hello</div>`);
}