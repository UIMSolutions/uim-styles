module uim.tabler.components.empties.empty;

import uim.tabler;

mixin(ShowModule!());

@safe:

/**
  * Tabler empty component.
  * https://tabler.io/docs/empty
  */
class TABEmpty : H5Div {
  mixin TABThis!(["empty"]);

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

  mixin(TABTemplate!("Empty"));
}
///
unittest {
  assert(TABEmpty() == `<div class="empty"></div>`);
  assert(TABEmpty().addImage() == `<div class="empty"><div class="empty-img"></div></div>`);
  assert(TABEmpty().addImage().addImage() == `<div class="empty"><div class="empty-img"></div><div class="empty-img"></div></div>`);
}
