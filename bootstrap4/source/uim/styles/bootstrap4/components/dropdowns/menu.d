module uim.bootstrap.bs4.components.dropdowns.menu;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4DropdownMenu : H5Div {
  mixin H5This!(["dropdown-menu"]);

  mixin(MyAttribute!("label", "aria-labelledby"));

  mixin(MyContent!("divider", "BS4DropdownDivider"));
  mixin(MyContent!("header", "BS4DropdownHeader"));
  mixin(MyContent!("item", "BS4DropdownItem"));
  mixin(MyContent!("link", "BS4DropdownLink"));
  mixin(MyContent!("form", "BS4DropdownForm"));
  mixin(MyContent!("text", "BS4DropdownText"));
  ///
unittest {
    assert(BS4DropdownMenu.link == `<div class="dropdown-menu"><a class="dropdown-item"></a></div>`);
  }}
static BS4DropdownMenu");
}
///
unittest {
  assert(BS4DropdownMenu == `<div class="dropdown-menu"></div>`);
}
