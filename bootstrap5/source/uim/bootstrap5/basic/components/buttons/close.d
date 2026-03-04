module uim.bootstrap5.basic.components.buttons.close;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5ButtonClose : H5Button {
  mixin H5Template!(BS5ButtonClose, ["close"], ["aria-label":"Close"]);

  // override string renderHTML(string[string] bindings = null) {
  //   this.content(H5Span(["aria-hidden": "true"], "&times;"));
  //   return super.renderHTML;
  // }
}
///
unittest {
  assert(BS5ButtonClose() == `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
  assert(BS5ButtonClose(["testclass"]) == `<button class="btn close testclass" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
  assert(BS5ButtonClose(["a":"b"]) == `<button class="btn close" a="b" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
  assert(BS5ButtonClose(["testclass"], ["a":"b"]) == `<button class="btn close testclass" a="b" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);

  assert(BS5ButtonClose("Hello") == `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
  assert(BS5ButtonClose(["testclass"], "Hello") == `<button class="btn close testclass" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
  assert(BS5ButtonClose(["a":"b"], "Hello") == `<button class="btn close" a="b" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
  assert(BS5ButtonClose(["testclass"], ["a":"b"], "Hello") == `<button class="btn close testclass" a="b" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
}
