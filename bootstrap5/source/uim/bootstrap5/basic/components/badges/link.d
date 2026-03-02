module uim.bootstrap5.basic.components.badges.link;

@safe:
import uim.bootstrap5;

mixin(ShowModule!());

@safe:

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 * Authors: UI Manufaktur UG, https://ui-manufaktur.com 
 */
class BS5BadgeLink : H5A {
  mixin H5Template!(BS5BadgeLink, ["badge"], null);
  mixin(HtmlMethods!BS5BadgeLink);

  // Color of badge
  // auto color(string name) {
  //   return this.addClasses("badge-" ~ name);
  // }
  ///
  unittest {
    // assert(BS5BadgeLink.color("secondary") == `<a class="badge badge-secondary"></a>`);
  }

  //Rounded badges
  // BS5BadgeLink pill(bool mode = true) {
  //   if (mode)
  //     this.addClasses("badge-pill");
  //   return this;
  // }
  ///
  unittest {
    // assert(BS5BadgeLink.pill(true) == `<a class="badge badge-pill"></a>`);
  }

}
///
unittest {
  // assert(BS5BadgeLink == `<a class="badge"></a>`);
}
