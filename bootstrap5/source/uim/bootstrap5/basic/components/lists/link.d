module uim.bootstrap5.basic.components.lists.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListLink : H5A {
  mixin H5Template!(BS5ListLink, ["list-group-item", "list-group-item-action"]);

//   O active(bool value = true) { return this.addClasses("active"); }
//   ///
//   O disabled(bool value = true) { return this.addClasses("disabled"); }
//   ///
//   auto color(string aColor) { return this.addClasses("list-group-item-"~aColor); }
}
///
unittest {  
  assert(BS5ListLink() == `<a class="list-group-item list-group-item-action"></a>`);
  assert(BS5ListLink(["testclass"]) == `<a class="list-group-item list-group-item-action testclass"></a>`);
  assert(BS5ListLink(["a":"b"]) == `<a class="list-group-item list-group-item-action" a="b"></a>`);
  assert(BS5ListLink(["testclass"], ["a":"b"]) == `<a class="list-group-item list-group-item-action testclass" a="b"></a>`);

  assert(BS5ListLink("SomeContent") == `<a class="list-group-item list-group-item-action">SomeContent</a>`);
  assert(BS5ListLink(["testclass"], "SomeContent") == `<a class="list-group-item list-group-item-action testclass">SomeContent</a>`);
  assert(BS5ListLink(["a":"b"], "SomeContent") == `<a class="list-group-item list-group-item-action" a="b">SomeContent</a>`);
  assert(BS5ListLink(["testclass"], ["a":"b"], "SomeContent") == `<a class="list-group-item list-group-item-action testclass" a="b">SomeContent</a>`);

  // // assert(BS5ListLink().active == `<a class="active list-group-item list-group-item-action"></a>`);
  // // assert(BS5ListLink().disabled == `<a class="disabled list-group-item list-group-item-action"></a>`);
}