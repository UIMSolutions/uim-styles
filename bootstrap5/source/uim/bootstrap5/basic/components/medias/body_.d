module uim.bootstrap5.basic.components.medias.body_;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5MediaBody : H5Div {
  mixin H5Template!(BS5MediaBody, ["media-body"]);
}
///
unittest {
  assert(BS5MediaBody() == `<div class="media-body"></div>`);
  assert(BS5MediaBody(["testclass"]) == `<div class="media-body testclass"></div>`);
  assert(BS5MediaBody(["a":"b"]) == `<div class="media-body" a="b"></div>`);
  assert(BS5MediaBody(["testclass"], ["a":"b"]) == `<div class="media-body testclass" a="b"></div>`);

  assert(BS5MediaBody("Hello") == `<div class="media-body">Hello</div>`);
  assert(BS5MediaBody(["testclass"], "Hello") == `<div class="media-body testclass">Hello</div>`);
  assert(BS5MediaBody(["a":"b"], "Hello") == `<div class="media-body" a="b">Hello</div>`);
  assert(BS5MediaBody(["testclass"], ["a":"b"], "Hello") == `<div class="media-body testclass" a="b">Hello</div>`); 
}
