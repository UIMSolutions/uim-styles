module uim.tabler.components.timelines.time;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * TimelineTime is used to create a time for the timeline.
 * https://tabler.io/docs/components/timeline#time
 */
class TABTimelineTime : H5Div {
  mixin TABTemplate!(["list-timeline-time"]);

  mixin(TABTemplate!("TimelineTime"));
}
///
unittest {
  assert(TABTimelineTime() == `<div class="list-timeline-time"></div>`);
}