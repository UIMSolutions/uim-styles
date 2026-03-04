module uim.bootstrap5.basic.components.cards.subtitle;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/** 
  * A card subtitle is a quick description of the content. It is placed under the title and is often used to provide additional information about the content of the card. It is typically styled with a smaller font size and a lighter color than the title to differentiate it from the main heading.
  * 
  * In Bootstrap 5, you can create a card subtitle by using the `.card-subtitle` class on an element within the card body. This class applies specific styles to make the subtitle visually distinct from the title and other content in the card.
  * 
  * Example usage:
  * ```html
  * <div class="card">
  *   <div class="card-body">
  *     <h5 class="card-title">Card Title</h5>
  *    
  */
class BS5CardSubtitle : H5H6 {
  mixin H5Template!(BS5CardSubtitle, ["card-subtitle"]);
}
///
unittest {
  assert(BS5CardSubtitle() == `<h6 class="card-subtitle"></h6>`);
  assert(BS5CardSubtitle(["testclass"]) == `<h6 class="card-subtitle testclass"></h6>`);
  assert(BS5CardSubtitle(["a":"b"]) == `<h6 class="card-subtitle" a="b"></h6>`);
  assert(BS5CardSubtitle(["testclass"], ["a":"b"]) == `<h6 class="card-subtitle testclass" a="b"></h6>`);

  assert(BS5CardSubtitle("Hello") == `<h6 class="card-subtitle">Hello</h6>`);
  assert(BS5CardSubtitle(["testclass"], "Hello") == `<h6 class="card-subtitle testclass">Hello</h6>`);
  assert(BS5CardSubtitle(["a":"b"], "Hello") == `<h6 class="card-subtitle" a="b">Hello</h6>`);
  assert(BS5CardSubtitle(["testclass"], ["a":"b"], "Hello") == `<h6 class="card-subtitle testclass" a="b">Hello</h6>`);

  // assert(BS5CardSubtitle.content("SomeThing") == `<h6 class="card-subtitle">SomeThing</h6>`);
}
