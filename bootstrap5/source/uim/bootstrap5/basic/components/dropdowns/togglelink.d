module uim.bootstrap5.basic.components.dropdowns.togglelink;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5DropdownToggleLink : BS5ButtonLink {
  mixin BS5This!(["btn", "dropdown-toggle"], [
      "href": "#",
      "aria-expanded": "false",
      "role": "button",
      "data-bs-toggle": "dropdown"
    ]);
}
///
unittest {
  assert(BS5DropdownToggleLink() == `<a class="btn dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button"></a>`);
  assert(BS5DropdownToggleLink(["testclass"]) == `<a class="btn dropdown-toggle testclass" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button"></a>`);
  assert(BS5DropdownToggleLink(["a":"b"]) == `<a class="btn dropdown-toggle" a="b" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button"></a>`);
  assert(BS5DropdownToggleLink(["testclass"], ["a":"b"]) == `<a class="btn dropdown-toggle testclass" a="b" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button"></a>`);

  assert(BS5DropdownToggleLink("Hello") == `<a class="btn dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button">Hello</a>`);
  assert(BS5DropdownToggleLink(["testclass"], "Hello") == `<a class="btn dropdown-toggle testclass" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button">Hello</a>`);
  assert(BS5DropdownToggleLink(["a":"b"], "Hello") == `<a class="btn dropdown-toggle" a="b" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button">Hello</a>`);
  assert(BS5DropdownToggleLink(["testclass"], ["a":"b"], "Hello") == `<a class="btn dropdown-toggle testclass" a="b" aria-expanded="false" data-bs-toggle="dropdown" href="#" role="button">Hello</a>`);
}
