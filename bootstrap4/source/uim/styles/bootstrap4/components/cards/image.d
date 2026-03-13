module uim.bootstrap.bs4.components.cards.image;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardImage : BS4Obj { // default top
  mixin(H5This!("IMG", ["card-img-top"], null, true));
  override void initialize() {
    super.initialize;
    _tag = "img";
  }

  O position(string value) { _classes = _classes.sub("card-img-top").add("card-img-"~value); return this; }
  ///
unittest {
    assert(BS4CardImage.position("top") == `<img class="card-img-top">`);
    assert(BS4CardImage.position("bottom") == `<img class="card-img-bottom">`);
  }}
}
static BS4CardImage");

///
unittest {
  assert(BS4CardImage == `<img class="card-img-top">`);
  assert(BS4CardImage.position("top") == `<img class="card-img-top">`);
  assert(BS4CardImage.position("bottom") == `<img class="card-img-bottom">`);
}}
