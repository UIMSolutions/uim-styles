module uim.bootstrap53.components.cards.body_;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

class BS53Card : H5Div {
  mixin H5Template!(BS53Card, ["card"], null);
}
///
unittest {
  assert(BS53Card() == `<div class="card"></div>`);
  assert(BS53Card(["testclass"]) == `<div class="card testclass"></div>`);
  assert(BS53Card(["a":"b"]) == `<div class="card" a="b"></div>`);
  assert(BS53Card(["testclass"], ["a":"b"]) == `<div class="card testclass" a="b"></div>`);  

  assert(BS53Card("Hello") == `<div class="card">Hello</div>`);
  assert(BS53Card(["testclass"], "Hello") == `<div class="card testclass">Hello</div>`);
  assert(BS53Card(["a":"b"], "Hello") == `<div class="card" a="b">Hello</div>`);
  assert(BS53Card(["testclass"], ["a":"b"], "Hello") == `<div class="card testclass" a="b">Hello</div>`);
}