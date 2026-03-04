module uim.bootstrap5.basic.components.dropdowns.togglebutton;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5DropdownToggle : BS5Button {
  mixin BS5This!(["btn", "dropdown-toggle"], ["aria-haspopup":"true", "aria-expanded":"false"]);
}
///
unittest {
  assert(BS5DropdownToggle() == `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS5DropdownToggle(["testclass"]) == `<button class="btn dropdown-toggle testclass" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS5DropdownToggle(["a":"b"]) == `<button class="btn dropdown-toggle" a="b" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS5DropdownToggle(["testclass"], ["a":"b"]) == `<button class="btn dropdown-toggle testclass" a="b" aria-expanded="false" aria-haspopup="true" type="button"></button>`);

  assert(BS5DropdownToggle("Hello") == `<button class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS5DropdownToggle(["testclass"], "Hello") == `<button class="btn dropdown-toggle testclass" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS5DropdownToggle(["a":"b"],"Hello") == `<button class="btn dropdown-toggle" a="b" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
  assert(BS5DropdownToggle(["testclass"], ["a":"b"], "Hello") == `<button class="btn dropdown-toggle testclass" a="b" aria-expanded="false" aria-haspopup="true" type="button"></button>`);

  // assert(BS5DropdownToggle().id("id") == `<button id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></button>`);
}
