module uim.bootstrap.bs4.components.cards.blockquote;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardBlockquote : H5Blockquote {
  mixin(H5This!("BLOCKQUOTE", ["card-blockquote"]));
  mixin(H5Calls!("CardBlockquote"));
}
///
unittest {
  assert(BS4CardBlockquote == `<blockquote class="card-blockquote"></blockquote>`);
}

