module uim.bootstrap5.basic.components.badges.badge;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

// Badges in Bootstrap are little additional information to highlight text or numbers.
@CssClass("pill", "badge-pill") // Rounded badges
class BS5Badge : H5Span {
  mixin H5Template!(BS5Badge, ["badge"]);

  // Color of badge
  BS5Badge color(string name) {
    addClass("badge-" ~ name);
    return this;
  }
  
}
///
unittest {
  assert(BS5Badge() == `<span class="badge"></span>`);
  assert(BS5Badge(["testclass"]) == `<span class="badge testclass"></span>`);
  assert(BS5Badge(["a": "b"]) == `<span class="badge" a="b"></span>`);
  assert(BS5Badge(["testclass"], ["a": "b"]) == `<span class="badge testclass" a="b"></span>`);

  assert(BS5Badge("Hello") == `<span class="badge">Hello</span>`);
  assert(BS5Badge(["testclass"], "Hello") == `<span class="badge testclass">Hello</span>`);
  assert(BS5Badge(["a": "b"], "Hello") == `<span class="badge" a="b">Hello</span>`);  
  assert(BS5Badge(["testclass"], ["a": "b"], "Hello") == `<span class="badge testclass" a="b">Hello</span>`);

  // assert(BS5Badge.color("secondary") == `<span class="badge badge-secondary"></span>`);
  // assert(BS5Badge.pill().pill(false) == `<span class="badge"></span>`);
}
