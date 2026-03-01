module uim.bootstrap.bs4.content.images.fluid;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:

class BS4ImageFluid : BS4Image {
  mixin(BS4This!(["img-fluid"]));

  mixin(BS4Template!("CardButton"));
  mixin(HtmlMethods!BS4CardButton);
}
///
unittest {
  assert(BS4ImageFluid == `<img class="img-fluid">`);
}
