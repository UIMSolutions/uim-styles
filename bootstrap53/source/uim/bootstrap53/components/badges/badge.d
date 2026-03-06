module uim.bootstrap53.components.badges.badge;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/**
  * Implements the Bootstrap 5.3 badge component.
  * @see https://getbootstrap.com/docs/5.3/components/badge/
  *
  * @param classes Additional CSS classes to add to the badge.
  * @param attributes Additional HTML attributes to add to the badge.
  * @param content The content to place inside the badge.
  * Example:
  * <span class="badge bg-primary">Primary</span>
  * <span class="badge bg-secondary">Secondary</span>
  * <span class="badge bg-success">Success</span>
  * <span class="badge bg-danger">Danger</span>
  * <span class="badge bg-warning text-dark">Warning</span>
  * <span class="badge bg-info text-dark">Info</span>
  * <span class="badge bg-light text-dark">Light</span>
  * <span class="badge bg-dark">Dark</span>
  * <span class="badge bg-primary rounded-pill">Primary</span>
  * <span class="badge bg-secondary rounded-pill">Secondary</span>
  * <span class="badge bg-success rounded-pill">Success</span>
  * <span class="badge bg-danger rounded-pill">Danger</span>
  * <span class="badge bg-warning text-dark rounded-pill">Warning</span>
  * <span class="badge bg-info text-dark rounded-pill">Info</span>
  * <span class="badge bg-light text-dark rounded-pill">Light</span>
  * <span class="badge bg-dark rounded-pill">Dark</span>
  */
@CssClass("pill", "rounded-pill")
class BS53Badge : H5Span {
  mixin H5Template!(BS53Badge, ["badge"], null);
}
///
unittest {
  assert(BS53Badge() == `<span class="badge"></span>`);
  assert(BS53Badge(["testclass"]) == `<span class="badge testclass"></span>`);
  assert(BS53Badge(["a":"b"]) == `<span class="badge" a="b"></span>`);
  assert(BS53Badge(["testclass"], ["a":"b"]) == `<span class="badge testclass" a="b"></span>`);  

  assert(BS53Badge("Hello") == `<span class="badge">Hello</span>`);
  assert(BS53Badge(["testclass"], "Hello") == `<span class="badge testclass">Hello</span>`);
  assert(BS53Badge(["a":"b"], "Hello") == `<span class="badge" a="b">Hello</span>`);
  assert(BS53Badge(["testclass"], ["a":"b"], "Hello") == `<span class="badge testclass" a="b">Hello</span>`);
}