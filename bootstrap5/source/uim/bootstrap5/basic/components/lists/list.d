module uim.bootstrap5.basic.components.lists.list;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/// An unordered list with list items
class BS5List : H5Ul {
  mixin H5Template!(BS5List, ["list-group"]);

//   // Removes some borders and rounded corners to render group in a parent container
//   O flush() {
//     this.addClasses("list-group-flush");
//     return this;
//   }

//   // Add a list item
//   // mixin(MyContent!("item", "BS5ListItem"));

//   // Add a list link
//   // mixin(MyContent!("link", "BS5ListLink"));

  // Add a list button
//   // mixin(MyContent!("button", "BS5ListButton"));
}
///
unittest {
  assert(BS5List() == `<ul class="list-group"></ul>`);
  assert(BS5List(["testclass"]) == `<ul class="list-group testclass"></ul>`);
  assert(BS5List(["a":"b"]) == `<ul class="list-group" a="b"></ul>`);
  assert(BS5List(["testclass"], ["a":"b"]) == `<ul class="list-group testclass" a="b"></ul>`);

  assert(BS5List("SomeContent") == `<ul class="list-group">SomeContent</ul>`);
  assert(BS5List(["testclass"], "SomeContent") == `<ul class="list-group testclass">SomeContent</ul>`);
  assert(BS5List(["a":"b"], "SomeContent") == `<ul class="list-group" a="b">SomeContent</ul>`);
  assert(BS5List(["testclass"], ["a":"b"], "SomeContent") == `<ul class="list-group testclass" a="b">SomeContent</ul>`);

  // assert(BS5List(BS5ListItem) == `<ul class="list-group"><li class="list-group-item"></li></ul>`);
  // assert(BS5List().item == `<ul class="list-group"><li class="list-group-item"></li></ul>`);
  // assert(BS5List(H5.li) == `<ul class="list-group"><li></li></ul>`);
}
