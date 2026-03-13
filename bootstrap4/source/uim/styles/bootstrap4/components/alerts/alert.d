module uim.bootstrap.bs4.components.alerts.alert;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

///Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
class BS4Alert : H5Div {
  mixin(H5This!("BS4Alert");

  override bool initialize(Json[string] args = null) {
    if (!super.initialize(args)) {
      return false;
    }

    addClasses("alert");
    attribute("role", "alert");
    return true;
  }

  auto color(string name) {
    return this.addClasses("alert-" ~ name);
  }
  ///
unittest {
    assert(BS4Alert.color("success") == `<div class="alert alert-success" role="alert"></div>`);
  }

  O link(string content, string url = "#") {
    this.addContent(`<a href="` ~ url ~ `" class="alert-link">` ~ content ~ `</a>`);
    return cast(O) this;
  }

  O dismissible(bool show = true, string icon = "&times;") {
    if (show)     {
      this.addContent(`<button type="button" class="close" data-dismiss="alert">` ~ icon ~ `</button>`);
      this.addClasses("alert-dismissible");
    }
    return cast(O) this;
  }
  ///
unittest {
    assert(BS4Alert.color("success").dismissible == `<div class="alert alert-dismissible alert-success" role="alert"><button type="button" class="close" data-dismiss="alert">&times;</button></div>`);
  }

  auto addHeading(string content) {
    this.addContent(`<h4 class="alert-heading">` ~ content ~ `</h4>`);
    return this;
  }

static BS4Alert opCall(string content = null) {
    auto alert = new BS4Alert;
    if (content !is null) {
      alert.addContent(content);
    }
    return alert;
  }
}

class BS4AlertLink : H5Div {
  mixin(H5This!(["alert-link"], ["href":"#"]));
}

mixin(BS4Calls!("Alert"));

///
unittest {
  assert(BS4Alert == `<div class="alert" role="alert"></div>`);
  assert(BS4Alert("anAlert") == `<div class="alert" role="alert">anAlert</div>`);
}
