module uim.bootstrap5.basic.components.buttons.group;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5ButtonGroup : H5Div {
  mixin H5Template!(BS5ButtonGroup, ["btn-group"], ["role": "group"]);

  // // Set size of button group
  // BS5ButtonGroup size(string value) {
  //   this.addClasses("btn-group-" ~ value);
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5ButtonGroup.size("lg") == `<div class="btn-group btn-group-lg" role="group"></div>`);
  // }

  // BS5ButtonGroup vertical(bool mode = true) {
  //   if (mode) {
  //     _classes = _classes.sub("btn-group");
  //     _classes ~= "btn-group-vertical";
  //   } else {
  //     _classes = _classes.sub("btn-group-vertical");
  //     _classes ~= "btn-group";
  //   }
  //   return this;
  // }
  // ///
  // unittest {
  //   // assert(BS5ButtonGroup.vertical == `<div class="btn-group-vertical" role="group"></div>`);
  // }

  // // mixin(MyAttribute!("label", "aria-label"));

  // // mixin(MyContent!("button", "BS5Button"));
  // ///
  // unittest {
  //   assert(
  //     BS5ButtonGroup.button == `<div class="btn-group" role="group"><button class="btn" type="button"></button></div>`);
  // }

  // // mixin(MyContent!("link", "BS5ButtonLink"));

}
///
unittest {
  // assert(BS5ButtonGroup() == `<div class="btn-group" role="group"></div>`);
}

