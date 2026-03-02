module uim.bootstrap5;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

public {
  import uim.core;
  import uim.oop;
  import uim.html;
  import uim.style;

  import uim.bootstrap5.basic;
  import uim.bootstrap5.classes;
  import uim.bootstrap5.complex;
  import uim.bootstrap5.icons;
  import uim.bootstrap5.mixins;
}

// auto bs5CardComponents(string selComponent) {
//   H5Obj[] items;
//   items ~= (selComponent == "accordions" ? BS5ListItem(["active"], "Accordions") : BS5ListItem(
//       "Accordions"));
//   items ~= (selComponent == "alerts" ? BS5ListItem(["active"], "Alerts") : BS5ListItem("Alerts"));
//   items ~= (selComponent == "badges" ? BS5ListItem(["active"], "Badges") : BS5ListItem("Badges"));

//   return BS5Card
//     .header("Components")
//     .list(["list-group-flush"], items);
// }
