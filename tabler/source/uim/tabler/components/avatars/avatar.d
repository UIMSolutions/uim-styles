module uim.tabler.components.avatars.avatar;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
  * Avatar is used to create an avatar for the user.
  * https://tabler.io/docs/components/avatar
  * 
  * ```d
  * auto avatar = TABAvatar("John Doe").addClass("avatar-md").addClass("avatar-rounded");
  * assert(avatar == `<span class="avatar avatar-md avatar-rounded">John Doe</span>`);  
  */
class TABAvatar : H5Span {
  mixin TABTemplate!(TABAvatar, ["avatar"]);
  mixin(HtmlMethods!TABAvatar);
}
///
unittest {
  assert(TABAvatar() == `<span class="avatar"></span>`);
  assert(TABAvatar(["testclass"]) == `<span class="avatar testclass"></span>`);
  assert(TABAvatar(["a": "b"]) == `<span class="avatar" a="b"></span>`);
  assert(TABAvatar(["testclass"], ["a": "b"]) == `<span class="avatar testclass" a="b"></span>`);

  assert(TABAvatar("Hello") == `<span class="avatar">Hello</span>`);
  assert(TABAvatar(["testclass"], "Hello") == `<span class="avatar testclass">Hello</span>`);
  assert(TABAvatar(["a": "b"], "Hello") == `<span class="avatar" a="b">Hello</span>`);
  assert(TABAvatar(["testclass"], ["a": "b"], "Hello") == `<span class="avatar testclass" a="b">Hello</span>`);
}
