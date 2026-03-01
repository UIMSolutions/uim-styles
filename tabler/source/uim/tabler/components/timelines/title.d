module uim.tabler.components.timelines.title;

import uim.tabler;

@safe:

/** 
 * TimelineTitle is used to create a title for the timeline.
 * https://tabler.io/docs/components/timeline#title
 */
class TABTimelineTitle : H5P {
  mixin TABThis!(["list-timeline-title"]);

  mixin(TABTemplate!("TimelineTitle"));
}
///
unittest {
  assert(TABTimelineTitle() == `<p class="list-timeline-title"></p>`);
}
