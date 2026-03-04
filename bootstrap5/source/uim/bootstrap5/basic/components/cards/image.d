module uim.bootstrap5.basic.components.cards.image;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardImage : H5Img { // default top
  mixin H5Template!(BS5CardImage, ["card-img-top"]);

  // O position(string value) { _classes = _classes.sub("card-img-top").add("card-img-"~value); return this; }
  ///
unittest {
    // assert(BS5CardImage().position("top") == `<img class="card-img-top">`);
    // assert(BS5CardImage().position("bottom") == `<img class="card-img-bottom">`);
  }

}
///
unittest {
  assert(BS5CardImage() == `<img class="card-img-top">`);
  assert(BS5CardImage(["testclass"]) == `<img class="card-img-top testclass">`);
  assert(BS5CardImage(["a":"b"]) == `<img class="card-img-top" a="b">`);
  assert(BS5CardImage(["testclass"], ["a":"b"]) == `<img class="card-img-top testclass" a="b">`);

  // assert(BS5CardImage().position("top") == `<img class="card-img-top">`);
  // assert(BS5CardImage().position("bottom") == `<img class="card-img-bottom">`);
}
