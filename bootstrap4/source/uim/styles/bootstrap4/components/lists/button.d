module uim.bootstrap.bs4.components.lists.button;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ListButton : BS4Obj {
  mixin(H5This!("button", ["list-group-item", "list-group-item-action"], null));

  /// Set button to active
  O active(bool value = true) { this.addClasses("active"); return this; }

  /// Set button to disabled
  O disabled(bool value = true) { attribute("disabled"] = "disabled"; return this; }

  /// Set button color
  auto color(string aColor) { this.addClasses("list-group-item-"~aColor); return this; }
}
static BS4ListButton");

///
unittest {
  assert(BS4ListButton == `<button class="list-group-item list-group-item-action"></button>`);
  assert(BS4ListButton.active == `<button class="active list-group-item list-group-item-action"></button>`);
  assert(BS4ListButton.disabled == `<button class="list-group-item list-group-item-action" disabled></button>`);
}}