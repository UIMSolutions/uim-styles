module uim.tabler.components.avatars.list;

import uim.tabler;

@safe:

class TABAvatarList : H5Div {
  mixin TABThis!(["avatar-list"]);

  TABAvatarList addAvatar(TABAvatar avatar) {
    addContent(avatar);
    return this;
  }

  mixin(TABTemplate!("AvatarList"));
}

///
unittest {
  assert(TABAvatarList() == `<div class="avatar-list"></div>`);
  assert(TABAvatarList().addAvatar(TABAvatar()) == `<div class="avatar-list"><span class="avatar"></span></div>`);
}
