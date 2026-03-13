module uim.bootstrap.bs4.content.images.thumbnail;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ImageFluid : BS4Image {
  mixin(H5Template!("Img", ["img-thumbnail"]));
}
static BS4ImageFluid"));

///
unittest {
  assert(BS4ImageFluid == `<img class="img-thumbnail">`);
}}