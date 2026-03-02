module uim.tabler.components.forms.imagechecks.image;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckImage is used to create an image for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckImage : H5Img {
  mixin H5Template!(TABImageCheckImage, ["form-imagecheck-image"]);
  mixin(HtmlMethods!TABImageCheckImage);
}
///
unittest {
  assert(TABImageCheckImage() == `<img class="form-imagecheck-image" />`);
  assert(TABImageCheckImage(["testclass"]) == `<img class="form-imagecheck-image testclass" />`);
  assert(TABImageCheckImage(["a": "b"]) == `<img class="form-imagecheck-image" a="b" />`);
  assert(TABImageCheckImage(["testclass"], ["a": "b"]) == `<img class="form-imagecheck-image testclass" a="b" />`);

  assert(TABImageCheckImage("Hello") == `<img class="form-imagecheck-image">Hello</img>`);
  assert(TABImageCheckImage(["testclass"], "Hello") == `<img class="form-imagecheck-image testclass">Hello</img>`);
  assert(TABImageCheckImage(["a": "b"], "Hello") == `<img class="form-imagecheck-image" a="b">Hello</img>`);
  assert(TABImageCheckImage(["testclass"], ["a": "b"], "Hello") == `<img class="form-imagecheck-image testclass" a="b">Hello</img>`);
}
