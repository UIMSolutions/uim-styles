module uim.bootstrap.bs4.components.lists.link;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ListLink : BS4Obj {
  mixin(H5This!("A", ["list-group-item", "list-group-item-action"], null));

  O active(bool value = true) { return this.addClasses("active"); }

  O disabled(bool value = true) { return this.addClasses("disabled"); }

  auto color(string aColor) { return this.addClasses("list-group-item-"~aColor); }
}
static BS4ListLink");

///
unittest {
  assert(BS4ListLink == `<a class="list-group-item list-group-item-action"></a>`);
  assert(BS4ListLink.active == `<a class="active list-group-item list-group-item-action"></a>`);
  assert(BS4ListLink.disabled == `<a class="disabled list-group-item list-group-item-action"></a>`);
}}