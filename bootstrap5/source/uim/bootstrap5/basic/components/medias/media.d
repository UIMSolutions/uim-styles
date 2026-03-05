module uim.bootstrap5.basic.components.medias.media;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Media : H5Div {
  mixin H5Template!(BS5Media, ["media"]);

  // // mixin(MyContent!("body_", "BS5MediaBody"));
}

///
unittest {
  assert(BS5Media() == `<div class="media"></div>`);
  assert(BS5Media(["testclass"]) == `<div class="media testclass"></div>`);
  assert(BS5Media(["a":"b"]) == `<div class="media" a="b"></div>`);
  assert(BS5Media(["testclass"], ["a":"b"]) == `<div class="media testclass" a="b"></div>`);

  assert(BS5Media("Hello") == `<div class="media">Hello</div>`);
  assert(BS5Media(["testclass"], "Hello") == `<div class="media testclass">Hello</div>`);
  assert(BS5Media(["a":"b"], "Hello") == `<div class="media" a="b">Hello</div>`);
  assert(BS5Media(["testclass"], ["a":"b"], "Hello") == `<div class="media testclass" a="b">Hello</div>`);
}
