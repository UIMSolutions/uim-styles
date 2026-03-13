module uim.bootstrap.bs4.components.medias.body_;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4MediaBody : H5Div {
  mixin H5This!(["media-body"]));
}
static BS4MediaBody");

///
unittest {
  assert(BS4MediaBody == `<div class="media-body"></div>`);
}}
