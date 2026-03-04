module uim.bootstrap5.basic.components.collapses.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5CollapseLink : H5A {
  mixin H5Template!(BS5CollapseLink, ["btn"], ["data-toggle":"collapse", "role":"button"]);
}
///
unittest {
  assert(BS5CollapseLink() == `<a class="btn" data-toggle="collapse" role="button"></a>`);
  assert(BS5CollapseLink(["testclass"]) == `<a class="btn testclass" data-toggle="collapse" role="button"></a>`);
  assert(BS5CollapseLink(["a":"b"]) == `<a class="btn" data-toggle="collapse" role="button" a="b"></a>`);
  assert(BS5CollapseLink(["testclass"], ["a":"b"]) == `<a class="btn testclass" data-toggle="collapse" role="button" a="b"></a>`);

  assert(BS5CollapseLink("Hello") == `<a class="btn" data-toggle="collapse" role="button">Hello</a>`);
  assert(BS5CollapseLink(["testclass"], "Hello") == `<a class="btn testclass" data-toggle="collapse" role="button">Hello</a>`);
  assert(BS5CollapseLink(["a":"b"], "Hello") == `<a class="btn" data-toggle="collapse" role="button" a="b">Hello</a>`);
  assert(BS5CollapseLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn testclass" data-toggle="collapse" role="button" a="b">Hello</a>`);
}