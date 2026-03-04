module uim.bootstrap5.basic.components.cards.blockquote;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CardBlockquote : H5Blockquote {
  mixin H5Template!(BS5CardBlockquote, ["card-blockquote"]);
}
///
unittest {
  assert(BS5CardBlockquote == `<blockquote class="card-blockquote"></blockquote>`);
  assert(BS5CardBlockquote(["testclass"]) == `<blockquote class="card-blockquote testclass"></blockquote>`);
  assert(BS5CardBlockquote(["a":"b"]) == `<blockquote class="card-blockquote" a="b"></blockquote>`);
  assert(BS5CardBlockquote(["testclass"], ["a":"b"]) == `<blockquote class="card-blockquote testclass" a="b"></blockquote>`);

  assert(BS5CardBlockquote("Hello") == `<blockquote class="card-blockquote">Hello</blockquote>`);
  assert(BS5CardBlockquote(["testclass"], "Hello") == `<blockquote class="card-blockquote testclass">Hello</blockquote>`);
  assert(BS5CardBlockquote(["a":"b"], "Hello") == `<blockquote class="card-blockquote" a="b">Hello</blockquote>`);
  assert(BS5CardBlockquote(["testclass"], ["a":"b"], "Hello") == `<blockquote class="card-blockquote testclass" a="b">Hello</blockquote>`);
}

