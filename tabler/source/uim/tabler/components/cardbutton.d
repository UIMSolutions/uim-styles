module uim.tabler.components.cardbutton;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * CardButton is used to create a button in the Card component.
 * https://tabler.io/docs/card#card-buttons
 */
class TABCardButton : H5A {
  mixin TABTemplate!(["card-btn"]);

  mixin(TABTemplate!("CardButton"));
  mixin H5Template!TABCardButton;
}
///
unittest {
  assert(TABCardButton() == `<a class="card-btn"></a>`);
  assert(TABCardButton(["testclass"]) == `<a class="card-btn testclass"></a>`);
  assert(TABCardButton(["a":"b"]) == `<a class="card-btn" a="b"></a>`);
  assert(TABCardButton(["testclass"], ["a":"b"]) == `<a class="card-btn testclass" a="b"></a>`);

  assert(TABCardButton("Hello") == `<a class="card-btn">Hello</a>`);
  assert(TABCardButton(["testclass"], "Hello") == `<a class="card-btn testclass">Hello</a>`);
  assert(TABCardButton(["a":"b"], "Hello") == `<a class="card-btn" a="b">Hello</a>`);
  assert(TABCardButton(["testclass"], ["a":"b"], "Hello") == `<a class="card-btn testclass" a="b">Hello</a>`);

  assert(TABCardButton().href("https://example.com") == `<a class="card-btn" href="https://example.com"></a>`);
}
