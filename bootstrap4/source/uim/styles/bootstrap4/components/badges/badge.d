module uim.bootstrap.bs4.components.badges.badge;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 */
class BS4Badge : BS4Obj {
  mixin(H5This!("Span", ["badge"]));

  // Color of badge
  auto color(string name) {
    return this.addClasses("badge-" ~ name);
  }
  ///
unittest {
    assert(BS4Badge.color("secondary") == `<span class="badge badge-secondary"></span>`);
  }}

  //Rounded badges
  O pill(bool mode = true) {
    if (mode)
      this.addClasses("badge-pill");
    return cast(O) this;
  }
  ///
unittest {
    assert(BS4Badge.pill(true) == `<span class="badge badge-pill"></span>`);
  }}
}
// Shortcut to class BS4Badge
static BS4Badge"));

///
unittest {
  assert(BS4Badge == `<span class="badge"></span>`);
}}
