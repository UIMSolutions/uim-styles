module uim.bootstrap5.basic.components.forms.inputgroups.prepend;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/**
  * The .input-group-prepend class is used to prepend elements to an input group. It can be used with both text and buttons.
  * https://getbootstrap.com/docs/5.0/components/input-group/#basic-example
  */
class BS5InputGroupPrepend : H5Div {
  mixin H5Template!(BS5InputGroupPrepend, ["input-group-prepend"]);

  // // mixin(MyContent!("text", "BS5InputGroupText"));
}
///
unittest {
  assert(BS5InputGroupPrepend() == `<div class="input-group-prepend"></div>`);
  assert(BS5InputGroupPrepend(["testclass"]) == `<div class="input-group-prepend testclass"></div>`);
  assert(BS5InputGroupPrepend(["a":"b"]) == `<div class="input-group-prepend" a="b"></div>`);
  assert(BS5InputGroupPrepend(["testclass"], ["a":"b"]) == `<div class="input-group-prepend testclass" a="b"></div>`);

  assert(BS5InputGroupPrepend("SomeContent") == `<div class="input-group-prepend">SomeContent</div>`);
  assert(BS5InputGroupPrepend(["testclass"], "SomeContent") == `<div class="input-group-prepend testclass">SomeContent</div>`);
  assert(BS5InputGroupPrepend(["a":"b"], "SomeContent") == `<div class="input-group-prepend" a="b">SomeContent</div>`);
  assert(BS5InputGroupPrepend(["testclass"], ["a":"b"], "SomeContent") == `<div class="input-group-prepend testclass" a="b">SomeContent</div>`);
}
