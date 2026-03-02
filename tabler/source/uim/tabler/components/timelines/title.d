module uim.tabler.components.timelines.title;

import uim.tabler;

@safe:

/** 
 * TimelineTitle is used to create a title for the timeline.
 * https://tabler.io/docs/components/timeline#title
 */
class TABTimelineTitle : H5P {
  mixin H5Template!(TABTimelineTitle, ["list-timeline-title"]);
  mixin(HtmlMethods!TABTimelineTitle);
}
///
unittest {
  assert(TABTimelineTitle() == `<p class="list-timeline-title"></p>`);
  assert(TABTimelineTitle(["testclass"]) == `<p class="list-timeline-title testclass"></p>`);
  assert(TABTimelineTitle(["a": "b"]) == `<p class="list-timeline-title" a="b"></p>`);
  assert(TABTimelineTitle(["testclass"], ["a": "b"]) == `<p class="list-timeline-title testclass" a="b"></p>`);

  assert(TABTimelineTitle("Hello") == `<p class="list-timeline-title">Hello</p>`);
  assert(TABTimelineTitle(["testclass"], "Hello") == `<p class="list-timeline-title testclass">Hello</p>`);
  assert(TABTimelineTitle(["a": "b"], "Hello") == `<p class="list-timeline-title" a="b">Hello</p>`);
  assert(TABTimelineTitle(["testclass"], ["a": "b"], "Hello") == `<p class="list-timeline-title testclass" a="b">Hello</p>`);
}
