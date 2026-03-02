module uim.tabler.components.timelines.content;

import uim.tabler;

@safe:

/** 
 * TimelineContent is used to create a content for the timeline.
 * https://tabler.io/docs/components/timeline#content
 */ 
class TABTimelineContent : H5Div {
  mixin H5Template!(TABTimelineContent, ["list-timeline-content"]);
  mixin(HtmlMethods!TABTimelineContent);
}
///
unittest {
  assert(TABTimelineContent() == `<div class="list-timeline-content"></div>`);
  assert(TABTimelineContent(["testclass"]) == `<div class="list-timeline-content testclass"></div>`);
  assert(TABTimelineContent(["a": "b"]) == `<div class="list-timeline-content" a="b"></div>`);
  assert(TABTimelineContent(["testclass"], ["a": "b"]) == `<div class="list-timeline-content testclass" a="b"></div>`);

  assert(TABTimelineContent("Hello") == `<div class="list-timeline-content">Hello</div>`);
  assert(TABTimelineContent(["testclass"], "Hello") == `<div class="list-timeline-content testclass">Hello</div>`);
  assert(TABTimelineContent(["a": "b"], "Hello") == `<div class="list-timeline-content" a="b">Hello</div>`);
  assert(TABTimelineContent(["testclass"], ["a": "b"], "Hello") == `<div class="list-timeline-content testclass" a="b">Hello</div>`);
}
