module uim.bootstrap5.basic.components.navbars.brand;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/**
  * BS5NavbarBrand
  * Use for your company, product, or project name. It works best as a link to your homepage or a landing page.
  * https://getbootstrap.com/docs/5.0/components/navbar/#brand
  * The BS5NavbarBrand can be an image or text. When using an image, be sure to set the height of the image to match the height of the navbar.
  * The BS5NavbarBrand is used to identify the website or application. It is usually placed at the left side of the navbar, but it can also be placed at the right side of the navbar.
  * The BS5NavbarBrand is a required element of the navbar. It must be used inside the navbar container.
  *
  * Example:
  * ```
  * auto navbar = BS5Navbar("My Navbar", BS5NavbarBrand("My Brand"));
  * ```
  * This will create a navbar with the brand "My Brand".
  */
class BS5NavbarBrand : H5A {
  mixin H5Template!(BS5NavbarBrand, ["navbar-brand"]);

  // // mixin(MyContent!("image", "H5IMG"));
}
///
unittest {
  assert(BS5NavbarBrand() == `<a class="navbar-brand"></a>`);
  assert(BS5NavbarBrand(["testclass"]) == `<a class="navbar-brand testclass"></a>`);
  assert(BS5NavbarBrand(["a":"b"]) == `<a class="navbar-brand" a="b"></a>`);
  assert(BS5NavbarBrand(["testclass"], ["a":"b"]) == `<a class="navbar-brand testclass" a="b"></a>`);

  assert(BS5NavbarBrand("Hello") == `<a class="navbar-brand">Hello</a>`);
  assert(BS5NavbarBrand(["testclass"], "Hello") == `<a class="navbar-brand testclass">Hello</a>`);
  assert(BS5NavbarBrand(["a":"b"], "Hello") == `<a class="navbar-brand" a="b">Hello</a>`);
  assert(BS5NavbarBrand(["testclass"], ["a":"b"], "Hello") == `<a class="navbar-brand testclass" a="b">Hello</a>`);
}
