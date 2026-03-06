module uim.bootstrap53.components.breadcrumbs.breadcrumb;

import uim.bootstrap53;

mixin(ShowModule!());

@safe:

/** 
  * Breadcrumbs indicate the current page’s location within a navigational hierarchy that automatically adds separators via CSS.
  * https://getbootstrap.com/docs/5.3/components/breadcrumb/#overview
  *
  * Example:
  * <nav aria-label="breadcrumb">
  *   <ol class="breadcrumb">
  *     <li class="breadcrumb-item"><a href="#">Home</a></li>
  *     <li class="breadcrumb-item"><a href="#">Library</a></li>
  *     <li class="breadcrumb-item active" aria-current="page">Data</li>
  *   </ol>
  * </nav>
  */
class BS53Breadcrumb: H5Nav {
  mixin H5Template!(BS53Breadcrumb, null, ["aria-label":"breadcrumb"]);
}
///
unittest {
  assert(BS53Breadcrumb() == `<nav aria-label="breadcrumb"></nav>`);
  assert(BS53Breadcrumb(["testclass"]) == `<nav class="testclass" aria-label="breadcrumb"></nav>`);
  assert(BS53Breadcrumb(["a":"b"]) == `<nav a="b" aria-label="breadcrumb"></nav>`);
  assert(BS53Breadcrumb(["testclass"], ["a":"b"]) == `<nav class="testclass" a="b" aria-label="breadcrumb"></nav>`);  

  assert(BS53Breadcrumb("Hello") == `<nav aria-label="breadcrumb">Hello</nav>`);
  assert(BS53Breadcrumb(["testclass"], "Hello") == `<nav class="testclass" aria-label="breadcrumb">Hello</nav>`);
  assert(BS53Breadcrumb(["a":"b"], "Hello") == `<nav a="b" aria-label="breadcrumb">Hello</nav>`);
  assert(BS53Breadcrumb(["testclass"], ["a":"b"], "Hello") == `<nav class="testclass" a="b" aria-label="breadcrumb">Hello</nav>`);
}