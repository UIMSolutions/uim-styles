module uim.bootstrap5.basic.components.cards.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/**
  * CardText is used to add text content to a card body.
  * It can be used to add a paragraph of text, or to add a list of items.
  * It can also be used to add a block of text that is styled as a card text.
  *
  * Example usage:
  * ```
  * BS5CardBody()
  *   .text("This is some text content for the card body.")
  *   .text("This is some more text content for the card body.");
  * ```
  */
class BS5CardText : H5P {
  mixin H5Template!(BS5CardText, ["card-text"]);
}
///
unittest {
  assert(BS5CardText() == `<p class="card-text"></p>`);
  assert(BS5CardText(["testclass"]) == `<p class="card-text testclass"></p>`);
  assert(BS5CardText(["a":"b"]) == `<p class="card-text" a="b"></p>`);
  assert(BS5CardText(["testclass"], ["a":"b"]) == `<p class="card-text testclass" a="b"></p>`);

  assert(BS5CardText("Hello") == `<p class="card-text">Hello</p>`);
  assert(BS5CardText(["testclass"], "Hello") == `<p class="card-text testclass">Hello</p>`);
  assert(BS5CardText(["a":"b"], "Hello") == `<p class="card-text" a="b">Hello</p>`);
  assert(BS5CardText(["testclass"], ["a":"b"], "Hello") == `<p class="card-text testclass" a="b">Hello</p>`);

  // assert(BS5CardText.content("SomeThing") == `<p class="card-text">SomeThing</p>`);
}
