module uim.tabler.components.timelines.content;

import uim.tabler;

@safe:

/** 
 * TimelineContent is used to create a content for the timeline.
 * https://tabler.io/docs/components/timeline#content
 */ 
class TABTimelineContent : H5Div {
  mixin TABTemplate!(["list-timeline-content"]);

  mixin(TABTemplate!("TimelineContent"));
}
///
unittest {
  assert(TABTimelineContent() == `<div class="list-timeline-content"></div>`);
}
