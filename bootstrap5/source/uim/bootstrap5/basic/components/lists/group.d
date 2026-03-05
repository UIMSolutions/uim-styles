module uim.bootstrap5.basic.components.lists.group;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5ListGroup : H5Div {
  mixin H5Template!(BS5ListGroup, ["list-group"]);

  // // mixin(MyContent!("item", "BS5ListGroupItem"));
  // // mixin(MyContent!("link", "BS5ListLink"));
  // // mixin(MyContent!("button", "BS5ListButton"));
}
///
unittest {
  assert(BS5ListGroup() == `<div class="list-group"></div>`);
  assert(BS5ListGroup(["testclass"]) == `<div class="list-group testclass"></div>`);
  assert(BS5ListGroup(["a":"b"]) == `<div class="list-group" a="b"></div>`);
  assert(BS5ListGroup(["testclass"], ["a":"b"]) == `<div class="list-group testclass" a="b"></div>`);

  assert(BS5ListGroup("SomeContent") == `<div class="list-group">SomeContent</div>`);
  assert(BS5ListGroup(["testclass"], "SomeContent") == `<div class="list-group testclass">SomeContent</div>`);
  assert(BS5ListGroup(["a":"b"], "SomeContent") == `<div class="list-group" a="b">SomeContent</div>`);
  assert(BS5ListGroup(["testclass"], ["a":"b"], "SomeContent") == `<div class="list-group testclass" a="b">SomeContent</div>`);

  // // assert(BS5ListGroup().item == `<div class="list-group"><div class="list-group-item"></div></div>`);
  // // assert(BS5ListGroup().link == `<div class="list-group"><a class="list-group-item list-group-item-action"></a></div>`);
  // // assert(BS5ListGroup().button == `<div class="list-group"><button class="list-group-item list-group-item-action" type="button"></button></div>`);   
}