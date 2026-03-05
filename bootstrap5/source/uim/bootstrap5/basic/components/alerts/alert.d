module uim.bootstrap5.basic.components.alerts.alert;

@safe:
import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

///Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
class BS5Alert : H5Div {
  mixin H5Template!(BS5Alert, ["alert"], ["role":"alert"]);

//   auto color(string name) {
//     return this.addClasses("alert-" ~ name);
//   }
//   ///
// unittest {
//     // assert(BS5Alert.color("success") == `<div class="alert alert-success" role="alert"></div>`);
//   }

//   BS5Alert link(string content, string url = "#") {
//     this.content(`<a href="` ~ url ~ `" class="alert-link">` ~ content ~ `</a>`);
//     return this;
//   }

//   BS5Alert dismissible(bool show = true, string icon = "&times;") {
//     if (show)     {
//       this.content(`<button type="button" class="close" data-dismiss="alert">` ~ icon ~ `</button>`);
//       this.addClasses("alert-dismissible");
//     }

//     return this;
//   }
//   ///
// unittest {
//     // assert(BS5Alert.color("success").dismissible == `<div class="alert alert-dismissible alert-success" role="alert"><button type="button" class="close" data-dismiss="alert">&times;</button></div>`);
//   }

//   // mixin(MyContent!("heading", "BS5AlertHeading"));
  }


class BS5AlertLink : H5A {
  mixin H5Template!(BS5AlertLink, ["alert-link"], ["href":"#"]);

}
///
unittest {
  // assert(BS5Alert);
  // assert(BS5Alert == `<div class="alert" role="alert"></div>`);

  // assert(BS5Alert("anAlert") == `<div class="alert" role="alert">anAlert</div>`);
}
