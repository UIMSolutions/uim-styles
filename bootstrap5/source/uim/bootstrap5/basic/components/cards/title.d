module uim.bootstrap5.basic.components.cards.title;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5CardTitle : H5H4 {
  mixin H5Template!(BS5CardTitle, ["card-title"]);

  // BS5CardTitle level(uint value) {
  //   if (value > 0)
  //     _tag = "h" ~ to!string(value);
  //   return this;
  // }

  // BS5CardTitle level(string value) {
  //   if (value.length > 0)
  //     _tag = "h" ~ value;
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5CardTitle.level(2) == `<h2 class="card-title"></h2>`);
  // }

}
///
unittest {
  assert(BS5CardTitle() == `<h4 class="card-title"></h4>`);
  assert(BS5CardTitle(["testclass"]) == `<h4 class="card-title testclass"></h4>`);
  assert(BS5CardTitle(["a":"b"]) == `<h4 class="card-title" a="b"></h4>`);
  assert(BS5CardTitle(["testclass"], ["a":"b"]) == `<h4 class="card-title testclass" a="b"></h4>`);

  assert(BS5CardTitle("Hello") == `<h4 class="card-title">Hello</h4>`);
  assert(BS5CardTitle(["testclass"], "Hello") == `<h4 class="card-title testclass">Hello</h4>`);
  assert(BS5CardTitle(["a":"b"], "Hello") == `<h4 class="card-title" a="b">Hello</h4>`);
  
  assert(BS5CardTitle(["testclass"], ["a":"b"], "Hello") == `<h4 class="card-title testclass" a="b">Hello</h4>`);

  // assert(BS5CardTitle.content("SomeThing") == `<h4 class="card-title">SomeThing</h4>`);
}
