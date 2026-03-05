module uim.bootstrap5.basic.components.badges.link;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 * Authors: UI Manufaktur UG, https://ui-manufaktur.com 
 */
@CssClass("pill", "badge-pill")  // Rounded badges
class BS5BadgeLink : H5A {
  mixin H5Template!(BS5BadgeLink, ["badge"], null);

  // // Color of badge
  // BS5BadgeLink color(string name) {
  //   this.addClasses("badge-" ~ name);
  //   return this;
  // }
}
///
unittest {
  assert(BS5BadgeLink() == `<a class="badge"></a>`);
  assert(BS5BadgeLink(["testclass"]) == `<a class="badge testclass"></a>`);
  assert(BS5BadgeLink(["a": "b"]) == `<a class="badge" a="b"></a>`);
  assert(BS5BadgeLink(["testclass"], ["a": "b"]) == `<a class="badge testclass" a="b"></a>`);

  assert(BS5BadgeLink("Hello") == `<a class="badge">Hello</a>`);
  assert(BS5BadgeLink(["testclass"], "Hello") == `<a class="badge testclass">Hello</a>`);
  assert(BS5BadgeLink(["a": "b"], "Hello") == `<a class="badge" a="b">Hello</a>`);
  assert(BS5BadgeLink(["testclass"], ["a": "b"], "Hello") == `<a class="badge testclass" a="b">Hello</a>`);

  // assert(BS5BadgeLink.color("secondary") == `<a class="badge badge-secondary"></a>`);
  // assert(BS5BadgeLink.pill() == `<a class="badge badge-pill"></a>`);
  // assert(BS5BadgeLink.pill().pill(false) == `<a class="badge"></a>`);
}
