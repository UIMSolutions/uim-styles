module uim.bootstrap5.basic.layout.container;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/*
BS5Container / BS5Container
Containers are containing elements to wrap other elements and contain its grid system. 

Default: A fixed container is a (responsive) fixed width container. 
*/
class BS5Container : H5Div {
  mixin H5Template!(BS5Container, ["container"]);

  // O fluid(bool mode = true) {
  //   if (mode)
  //     _classes = _classes.sub("container").add("container-fluid");
  //   return this;
  // }

  // O mode(string mode) {
  //   if (mode.length > 0)
  //     _classes = _classes.sub("container").add("container-" ~ mode);
  //   return this;
  // }

  // // mixin(MyContent!("row", "BS5Row"));
}
///
unittest {
  assert(BS5Container() == `<div class="container"></div>`);
  assert(BS5Container(["testclass"]) == `<div class="container testclass"></div>`);
  assert(BS5Container(["a":"b"]) == `<div class="container" a="b"></div>`);
  assert(BS5Container(["testclass"], ["a":"b"]) == `<div class="container testclass" a="b"></div>`);

  assert(BS5Container("SomeContent") == `<div class="container">SomeContent</div>`);
  assert(BS5Container(["testclass"], "SomeContent") == `<div class="container testclass">SomeContent</div>`);
  assert(BS5Container(["a":"b"], "SomeContent") == `<div class="container" a="b">SomeContent</div>`);
  assert(BS5Container(["testclass"], ["a":"b"], "SomeContent") == `<div class="container testclass" a="b">SomeContent</div>`);
  // // assert(BS5Container.fluid(true) == `<div class="container-fluid"></div>`);
  // // assert(BS5Container.mode("fluid") == `<div class="container-fluid"></div>`); // Alternative
  // // assert(BS5Container.mode("xl") == `<div class="container-xl"></div>`);
  // // assert(BS5Container.row == `<div class="container"><div class="row"></div></div>`);
}

