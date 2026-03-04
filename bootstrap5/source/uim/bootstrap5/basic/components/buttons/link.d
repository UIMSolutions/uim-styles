module uim.bootstrap5.basic.components.buttons.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ButtonLink : H5A {
  mixin H5Template!(BS5ButtonLink, ["btn"], ["role": "button"]);

  BS5ButtonLink disabled() {
    this.addClasses(["disabled"]).attributes(["tabindex":"-1", "aria-disabled":"true"]);
    return this;
  }
}
///
unittest {
  assert(BS5ButtonLink() == `<a class="btn" role="button"></a>`);
  assert(BS5ButtonLink(["testclass"]) == `<a class="btn testclass" role="button"></a>`);
  assert(BS5ButtonLink(["a":"b"]) == `<a class="btn" a="b" role="button"></a>`);
  assert(BS5ButtonLink(["testclass"], ["a":"b"]) == `<a class="btn testclass" a="b" role="button"></a>`);

  assert(BS5ButtonLink("Hello") == `<a class="btn" role="button">Hello</a>`);
  assert(BS5ButtonLink(["testclass"], "Hello") == `<a class="btn testclass" role="button">Hello</a>`);
  assert(BS5ButtonLink(["a":"b"], "Hello") == `<a class="btn" a="b" role="button">Hello</a>`);
  assert(BS5ButtonLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn testclass" a="b" role="button">Hello</a>`);

  assert(BS5ButtonLink().disabled() == `<a class="btn disabled" role="button" tabindex="-1" aria-disabled="true"></a>`);
}
  

