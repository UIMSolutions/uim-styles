module uim.bootstrap5.basic.components.dropdowns.dropdown;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/**
  Bootstrap 5 dropdown example:
  <div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Dropdown button
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
    </div>
  </div>
*/
class BS5Dropdown : H5Div {
  mixin H5Template!(BS5Dropdown, ["dropdown"]);

  // mixin(MyContent!("button", "BS5ToggleButton"));
  // mixin(MyContent!("link", "BS5DropdownToggleLink"));
  // mixin(MyContent!("menu", "BS5DropdownMenu"));
  // mixin(MyContent!("toggleLink", "BS5DropdownToggleLink"));
}
///
unittest {
  assert(BS5Dropdown() == `<div class="dropdown"></div>`);
  assert(BS5Dropdown(["testclass"]) == `<div class="dropdown testclass"></div>`);
  assert(BS5Dropdown(["a":"b"]) == `<div class="dropdown" a="b"></div>`);
  assert(BS5Dropdown(["testclass"], ["a":"b"]) == `<div class="dropdown testclass" a="b"></div>`);

  assert(BS5Dropdown("Hello") == `<div class="dropdown">Hello</div>`);
  assert(BS5Dropdown(["testclass"], "Hello") == `<div class="dropdown testclass">Hello</div>`);
  assert(BS5Dropdown(["a":"b"], "Hello") == `<div class="dropdown" a="b">Hello</div>`);
  assert(BS5Dropdown(["testclass"], ["a":"b"], "Hello") == `<div class="dropdown testclass" a="b">Hello</div>`);

  // assert(BS5Dropdown().id("abc") == `<div id="abc" class="dropdown"></div>`);
}
