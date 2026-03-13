module uim.bootstrap.bs4.components.medias.media;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Media : H5Div {
  mixin H5This!(["media"]));

  mixin(MyContent!("body_", "BS4MediaBody"));
}
static BS4Media");

///
unittest {
  assert(BS4Media == `<div class="media"></div>`);
}}
