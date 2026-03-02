module uim.tabler.components.buttons.link;


import uim.tabler;

mixin(ShowModule!());

@safe:

class TABButtonLink : H5A {
  mixin TABTemplate!(["btn"], ["role": "button"]);
  
  mixin(TABTemplate!("ButtonLink"));
}
///
unittest {
  assert(TABButtonLink() == `<a class="btn" role="button"></a>`);
}
