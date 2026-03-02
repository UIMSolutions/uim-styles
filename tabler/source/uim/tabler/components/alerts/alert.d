module uim.tabler.components.alerts.alert;

import uim.tabler;

mixin(ShowModule!());

@safe:

/** 
 * Alert is used to create an alert component.
 * https://tabler.io/docs/alerts
 */
class TABAlert : H5Div {
  mixin H5Template!(TABAlert,["alert"], ["role":"alert"]);
  mixin(HtmlMethods!TABAlert);

  TABAlert color(string value) {
    this.addClass(value);
    return this;
  }

  TABAlert colorBg(string value) {
    this.addClass("bg-" ~ value);
    return this;
  }

  TABAlert colorBorder(string value) {
    this.addClass("border-" ~ value);
    return this;
  }

  TABAlert colorText(string value) {
    this.addClass("text-" ~ value);
    return this;
  }

  TABAlert colorIcon(string value) {
    this.addClass("icon-" ~ value);
    return this;
  }

  TABAlert colorAccent(string value) {
    this.addClass("accent-" ~ value);
    return this;
  }

  TABAlert colorGradient(string value) {
    this.addClass("gradient-" ~ value);
    return this;
  }

  TABAlert colorGradientFrom(string value) {
    this.addClass("gradient-from-" ~ value);
    return this;
  }

  TABAlert colorGradientTo(string value) {
    this.addClass("gradient-to-" ~ value);
    return this;
  }

  TABAlert important(bool value = true) {
    if (value) {
      this.addClass("alert-important");
    } // else {
    //   this.removeClass("alert-important");
    // }
    return this;
  }

  TABAlert background(bool value = true) {
    if (value) {
      this.addClass("alert-background");
    }//  else {
    //   this.removeClass("alert-background");
    // }
    return this;
  } 

  TABAlert success(bool value = true) {
    if (value) {
      this.addClass("alert-success");
    }//  else {
    //   this.removeClass("alert-success");
    // }
    return this;
  } 

  TABAlert outline(bool value = true) {
    if (value) {
      this.addClass("alert-outline");
    }//  else {
    //   this.removeClass("alert-outline");
    // }
    return this;
  } 

  mixin(AddContentCalls!("TABAlert", "icon", "TABAlertIcon"));


}
///
unittest {
  assert(TABAlert() == `<div class="alert" role="alert"></div>`);
  // assert(TABAlert().color("blue") == `<div class="bg-blue alert" role="alert"></div>`);
}
