module uim.tabler.components.forms.imagechecks.figure;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * ImageCheckFigure is used to create a figure for an image check. It is used in the FormImageCheck component.
 * https://tabler.io/docs/forms#image-checks
 */
class TABImageCheckFigure : H5Span {
  mixin H5Template!(TABImageCheckFigure, ["form-imagecheck-figure"]);
  mixin(HtmlMethods!TABImageCheckFigure);
}
///
unittest {
  assert(TABImageCheckFigure() == `<span class="form-imagecheck-figure"></span>`);
}
