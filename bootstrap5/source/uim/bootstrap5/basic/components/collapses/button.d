module uim.bootstrap5.basic.components.collapses.button;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CollapseButton : H5Button {
  mixin H5Template!(BS5CollapseButton, ["btn"], ["data-toggle":"collapse", "role":"button"]);
}
///
unittest {
  assert(BS5CollapseButton() == `<button class="btn" data-toggle="collapse" role="button"></button>`);
  assert(BS5CollapseButton(["testclass"]) == `<button class="btn testclass" data-toggle="collapse" role="button"></button>`);
  assert(BS5CollapseButton(["a":"b"]) == `<button class="btn" data-toggle="collapse" role="button" a="b"></button>`);
  assert(BS5CollapseButton(["testclass"], ["a":"b"]) == `<button class="btn testclass" data-toggle="collapse" role="button" a="b"></button>`); 

  assert(BS5CollapseButton("Hello") == `<button class="btn" data-toggle="collapse" role="button">Hello</button>`);
  assert(BS5CollapseButton(["testclass"], "Hello") == `<button class="btn testclass" data-toggle="collapse" role="button">Hello</button>`);
  assert(BS5CollapseButton(["a":"b"], "Hello") == `<button class="btn" data-toggle="collapse" role="button" a="b">Hello</button>`);
  assert(BS5CollapseButton(["testclass"], ["a":"b"], "Hello") == `<button class="btn testclass" data-toggle="collapse" role="button" a="b">Hello</button>`);
}