module uim.tabler.components.footer;

import uim.tabler;

@safe:

/** 
 * Footer is used to create a footer for the page.
 * https://tabler.io/docs/layout#footer
 */
class TABFooter : H5Footer {
  mixin H5Template!(TABFooter, ["footer"]);
  mixin(HtmlMethods!TABFooter);
}
///
unittest {
  assert(TABFooter() == `<footer class="footer"></footer>`);
  assert(TABFooter(["testclass"]) == `<footer class="footer testclass"></footer>`);
  assert(TABFooter(["a": "b"]) == `<footer class="footer" a="b"></footer>`);
  assert(TABFooter(["testclass"], ["a": "b"]) == `<footer class="footer testclass" a="b"></footer>`);

  assert(TABFooter("Hello") == `<footer class="footer">Hello</footer>`);
  assert(TABFooter(["testclass"], "Hello") == `<footer class="footer testclass">Hello</footer>`);
  assert(TABFooter(["a": "b"], "Hello") == `<footer class="footer" a="b">Hello</footer>`);
  assert(TABFooter(["testclass"], ["a": "b"], "Hello") == `<footer class="footer testclass" a="b">Hello</footer>`);
}
