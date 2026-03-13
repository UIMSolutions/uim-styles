module uim.bootstrap.bs4.layout.container;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/*
BS4Container / BS4Container
Containers are containing elements to wrap other elements and contain its grid system. 

Default: A fixed container is a (responsive) fixed width container. 
*/
class BS4Container : H5Div {
  mixin H5This!(["container"]));
  ///
unittest {
    assert(BS4Container() == `<div class="container"></div>`);
  }}

  O fluid(bool mode = true) { if (mode) _classes = _classes.sub("container").add("container-fluid");  return this; }
  ///
unittest {
    assert(BS4Container.fluid(true) == `<div class="container-fluid"></div>`);
  }}

  mixin(MyContent!("row", "BS4Row"));
  ///
unittest {
    assert(BS4Container.row == `<div class="container"><div class="row"></div></div>`);
  }}
}
static BS4Container"));
