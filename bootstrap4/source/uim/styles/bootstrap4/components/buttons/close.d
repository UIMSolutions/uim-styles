module uim.bootstrap.bs4.components.buttons.close;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4ButtonClose : BS4Button {
  mixin(H5This!("button", ["close"], `["aria-label":"Close"]`));
  
  override string renderHTML(string[string] bindings = null) {
    this.addContent(H5Span(["aria-hidden":"true"], "&times;"));
    return super.renderHTML;
  }
}
static BS4ButtonClose");

///
unittest {
  assert(BS4ButtonClose == `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
}}
