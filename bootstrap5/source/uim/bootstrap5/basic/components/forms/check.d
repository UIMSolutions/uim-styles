module uim.bootstrap5.basic.components.forms.check;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

@StringAttribute("forId", "for")
@CssClass("inline", "form-check-inline")
class BS5FormCheck : H5Div {
  mixin H5Template!(BS5FormCheck, ["form-check"], null);

  // mixin(MyContent!("label", "BS5FormCheckLabel"));
}
///
unittest {
  assert(BS5FormCheck() == `<div class="form-check"></div>`);
  assert(BS5FormCheck(["testclass"]) == `<div class="form-check testclass"></div>`);
  assert(BS5FormCheck(["a":"b"]) == `<div class="form-check" a="b"></div>`);
  assert(BS5FormCheck(["testclass"], ["a":"b"]) == `<div class="form-check testclass" a="b"></div>`);

  assert(BS5FormCheck("Hello") == `<div class="form-check">Hello</div>`);
  assert(BS5FormCheck(["testclass"], "Hello") == `<div class="form-check testclass">Hello</div>`);
  assert(BS5FormCheck(["a":"b"], "Hello") == `<div class="form-check" a="b">Hello</div>`);
  assert(BS5FormCheck(["testclass"], ["a":"b"], "Hello") == `<div class="form-check testclass" a="b">Hello</div>`);

  assert(BS5FormCheck.forId("test") == `<div class="form-check" for="test"></div>`);
  assert(BS5FormCheck.inline() == `<div class="form-check form-check-inline"></div>`);
}
