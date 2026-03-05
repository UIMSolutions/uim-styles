module uim.bootstrap5.basic.components.navs.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5NavLink : H5A {
  mixin H5Template!(BS5NavLink, ["nav-link"], ["href":"#"]);

//   O active(bool value = true) { if (value) this.addClasses("active"); return this; }
//   ///
//   O disabled(bool value = true) { if (value) this.addClasses("disabled"); return this; }

//   O dropdownToggle(bool mode = true) { 
//     return this
//       .addClasses("dropdown-toggle")
//       .addAttributes(["data-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"]); }
}
///
unittest {
  assert(BS5NavLink() == `<a class="nav-link" href="#"></a>`);
  assert(BS5NavLink(["testclass"]) == `<a class="nav-link testclass" href="#"></a>`);
  assert(BS5NavLink(["a":"b"]) == `<a class="nav-link" a="b" href="#"></a>`);
  assert(BS5NavLink(["testclass"], ["a":"b"]) == `<a class="nav-link testclass" a="b" href="#"></a>`);

  assert(BS5NavLink("SomeContent") == `<a class="nav-link" href="#">SomeContent</a>`);
  assert(BS5NavLink(["testclass"], "SomeContent") == `<a class="nav-link testclass" href="#">SomeContent</a>`);
  assert(BS5NavLink(["a":"b"], "SomeContent") == `<a class="nav-link" a="b" href="#">SomeContent</a>`);
  assert(BS5NavLink(["testclass"], ["a":"b"], "SomeContent") == `<a class="nav-link testclass" a="b" href="#">SomeContent</a>`);
}