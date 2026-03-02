module uim.tabler.components.forms.imagechecks.imagecontent;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckImageContent is used to create a content for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckImageContent : H5Span {
  mixin H5Template!(TABImageCheckImageContent, ["form-imagecheck-image"]);
  mixin(HtmlMethods!TABImageCheckImageContent);
}
///
unittest {
  assert(TABImageCheckImageContent() == `<span class="form-imagecheck-image"></span>`);
  assert(TABImageCheckImageContent(["testclass"]) == `<span class="form-imagecheck-image testclass"></span>`);  
  assert(TABImageCheckImageContent(["a": "b"]) == `<span class="form-imagecheck-image" a="b"></span>`);
  assert(TABImageCheckImageContent(["testclass"], ["a": "b"]) == `<span class="form-imagecheck-image testclass" a="b"></span>`);

  assert(TABImageCheckImageContent("Hello") == `<span class="form-imagecheck-image">Hello</span>`);
  assert(TABImageCheckImageContent(["testclass"], "Hello") == `<span class="form-imagecheck-image testclass">Hello</span>`);
  assert(TABImageCheckImageContent(["a": "b"], "Hello") == `<span class="form-imagecheck-image" a="b">Hello</span>`);
  assert(TABImageCheckImageContent(["testclass"], ["a": "b"], "Hello") == `<span class="form-imagecheck-image testclass" a="b">Hello</span>`);
}
