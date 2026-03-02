module uim.tabler.components.buttons.iconlink;

import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonIconLink : TABButtonLink {
  mixin H5Template!(TABButtonIconLink, ["btn", "btn-icon"], ["role": "button"]);
  mixin(HtmlMethods!TABButtonIconLink);
}
///
unittest {
  assert(TABButtonIconLink() == `<a class="btn btn-icon" role="button"></a>`);

}
