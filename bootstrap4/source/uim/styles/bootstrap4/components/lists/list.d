module uim.bootstrap.bs4.components.lists.list;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/// An unordered list with list items
class BS4List : BS4Obj {
  mixin(H5This!("UL", ["list-group"]));

  // Removes some borders and rounded corners to render group in a parent container
  O flush() {
    this.addClasses("list-group-flush");
    return this;
  }

  // Add a list item
  mixin(MyContent!("item", "BS4ListItem"));
  ///
unittest {
    assert(BS4List.item == `<ul class="list-group"><li class="list-group-item"></li></ul>`);
    assert(BS4List.item("test") == `<ul class="list-group"><li class="list-group-item">test</li></ul>`);
  }}

  mixin(MyContent!("link", "this.item", "BS4ListLink"));
  ///
unittest {
    assert(BS4List.link == `<ul class="list-group"><li class="list-group-item"><a class="list-group-item list-group-item-action"></a></li></ul>`);
  }}
}
static BS4List");

///
unittest {
  assert(BS4List == `<ul class="list-group"></ul>`);
  assert(BS4List(BS4ListItem) == `<ul class="list-group"><li class="list-group-item"></li></ul>`);
  assert(BS4List(H5.li) == `<ul class="list-group"><li></li></ul>`);
}}
