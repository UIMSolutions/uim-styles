module uim.bootstrap.bs4.components.cards.subtitle;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4CardSubtitle : BS4Obj {
  mixin(H5This!("H6", ["card-subtitle"]));
  override public void initialize() {
    super.initialize;
    _tag = "h6";
  }
}
static BS4CardSubtitle");

///
unittest {
  assert(BS4CardSubtitle == `<h6 class="card-subtitle"></h6>`);
  assert(BS4CardSubtitle.addContent("SomeThing") == `<h6 class="card-subtitle">SomeThing</h6>`);
}}
