module uim.bootstrap5.basic.components.lists.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListButton : H5Button {
  mixin H5Template!(BS5ListButton, ["list-group-item", "list-group-item-action"], ["type":"button"]);

//   /// Set button to active
//   O active(bool value = true) { this.addClasses("active"); return this; }
//   ///
// unittest {
//     // assert(BS5ListButton.active == `<button class="active list-group-item list-group-item-action" type="button"></button>`);
//   }}

//   /// Set button to disabled
//   O disabled(bool value = true) { attribute("disabled"] = "true"; return this; }
//   ///
// unittest {
//     // assert(BS5ListButton.disabled == `<button class="list-group-item list-group-item-action" disabled type="button"></button>`);
//   }}

//   /// Set button color
//   auto color(string aColor) { this.addClasses("list-group-item-"~aColor); return this; }
}
///
unittest {
  assert(BS5ListButton() == `<button class="list-group-item list-group-item-action" type="button"></button>`);
  assert(BS5ListButton(["testclass"]) == `<button class="list-group-item list-group-item-action testclass" type="button"></button>`);
  assert(BS5ListButton(["a":"b"]) == `<button class="list-group-item list-group-item-action" a="b" type="button"></button>`);
  assert(BS5ListButton(["testclass"], ["a":"b"]) == `<button class="list-group-item list-group-item-action testclass" a="b" type="button"></button>`);

  assert(BS5ListButton("SomeContent") == `<button class="list-group-item list-group-item-action" type="button">SomeContent</button>`);
  assert(BS5ListButton(["testclass"], "SomeContent") == `<button class="list-group-item list-group-item-action testclass" type="button">SomeContent</button>`);
  assert(BS5ListButton(["a":"b"], "SomeContent") == `<button class="list-group-item list-group-item-action" a="b" type="button">SomeContent</button>`);
  assert(BS5ListButton(["testclass"], ["a":"b"], "SomeContent") == `<button class="list-group-item list-group-item-action testclass" a="b" type="button">SomeContent</button>`);

  // // assert(BS5ListButton().active == `<button class="active list-group-item list-group-item-action" type="button"></button>`);
  // // assert(BS5ListButton().disabled == `<button class="list-group-item list-group-item-action" disabled type="button"></button>`);
}