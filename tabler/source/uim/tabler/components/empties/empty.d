module uim.tabler.components.empties.empty;

import uim.tabler;

mixin(ShowModule!());

@safe:

/**
  * Tabler empty component.
  * https://tabler.io/docs/empty
  */
class TABEmpty : H5Div {
  mixin H5Template!(TABEmpty, ["empty"]);
  mixin(HtmlMethods!TABEmpty);

  TABEmpty addAction() {
    addContent(new TABEmptyAction());
    return this;
  }

  TABEmpty addIcon() {
    addContent(new TABEmptyIcon());
    return this;
  }

  TABEmpty addImage() {
    addContent(new TABEmptyImage());
    return this;
  }

  TABEmpty addHeader() {
    addContent(new TABEmptyHeader());
    return this;
  }

  TABEmpty addSubtitle() {
    addContent(new TABEmptySubtitle());
    return this;
  }

  TABEmpty addTitle() {
    addContent(new TABEmptyTitle());
    return this;
  }
}
///
unittest {
  assert(TABEmpty() == `<div class="empty"></div>`);
  assert(TABEmpty(["testclass"]) == `<div class="empty testclass"></div>`);
  assert(TABEmpty(["a": "b"]) == `<div class="empty" a="b"></div>`);
  assert(TABEmpty(["testclass"], ["a": "b"]) == `<div class="empty testclass" a="b"></div>`);

  assert(TABEmpty("Hello") == `<div class="empty">Hello</div>`);
  assert(TABEmpty(["testclass"], "Hello") == `<div class="empty testclass">Hello</div>`);
  assert(TABEmpty(["a": "b"], "Hello") == `<div class="empty" a="b">Hello</div>`);
  assert(TABEmpty(["testclass"], ["a": "b"], "Hello") == `<div class="empty testclass" a="b">Hello</div>`);

  assert(TABEmpty().addImage() == `<div class="empty"><div class="empty-img"></div></div>`);
  assert(TABEmpty().addImage()
      .addImage() == `<div class="empty"><div class="empty-img"></div><div class="empty-img"></div></div>`);
}
