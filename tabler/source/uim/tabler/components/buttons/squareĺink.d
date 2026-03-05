module uim.tabler.components.buttons.squarelink;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Square Link Button
 * @see https://docs.tabler.io/ui/components/buttons#square-link-button
 * 
 * Example:
 * ```d
 * auto button = TABButtonSquareLink("Click Me");
 * ```
 */
class TABButtonSquareLink : TABButtonLink {
  mixin H5Template!(TABButtonSquareLink, ["btn", "btn-square"], ["role": "button"]);
}
///
unittest {
  assert(TABButtonSquareLink() == `<a class="btn btn-square" role="button"></a>`);
  assert(TABButtonSquareLink(["testclass"]) == `<a class="btn btn-square testclass" role="button"></a>`);
  assert(TABButtonSquareLink(["a":"b"]) == `<a class="btn btn-square" a="b" role="button"></a>`);
  assert(TABButtonSquareLink(["testclass"], ["a":"b"]) == `<a class="btn btn-square testclass" a="b" role="button"></a>`);

  assert(TABButtonSquareLink("Hello") == `<a class="btn btn-square" role="button">Hello</a>`);
  assert(TABButtonSquareLink(["testclass"], "Hello") == `<a class="btn btn-square testclass" role="button">Hello</a>`);
  assert(TABButtonSquareLink(["a":"b"], "Hello") == `<a class="btn btn-square" a="b" role="button">Hello</a>`);
  assert(TABButtonSquareLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn btn-square testclass" a="b" role="button">Hello</a>`);
}
