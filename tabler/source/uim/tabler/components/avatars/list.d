module uim.tabler.components.avatars.list;

import uim.tabler;

@safe:

class TABAvatarList : H5Div {
  mixin H5Template!(TABAvatarList, ["avatar-list"]);
  mixin(HtmlMethods!TABAvatarList);

  TABAvatarList addAvatar(TABAvatar avatar) {
    addContent(avatar);
    return this;
  }
}
///
unittest {
  assert(TABAvatarList() == `<div class="avatar-list"></div>`);
  assert(TABAvatarList(["testclass"]) == `<div class="avatar-list testclass"></div>`);
  assert(TABAvatarList(["a": "b"]) == `<div class="avatar-list" a="b"></div>`);
  assert(TABAvatarList(["testclass"], ["a": "b"]) == `<div class="avatar-list testclass" a="b"></div>`);

  assert(TABAvatarList("Hello") == `<div class="avatar-list">Hello</div>`);
  assert(TABAvatarList(["testclass"], "Hello") == `<div class="avatar-list testclass">Hello</div>`);
  assert(TABAvatarList(["a": "b"], "Hello") == `<div class="avatar-list" a="b">Hello</div>`);
  assert(TABAvatarList(["testclass"], ["a": "b"], "Hello") == `<div class="avatar-list testclass" a="b">Hello</div>`);

  assert(TABAvatarList().addAvatar(TABAvatar()) == `<div class="avatar-list"><span class="avatar"></span></div>`);
}
