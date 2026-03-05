module uim.bootstrap5.classes.obj;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5Obj : H5Div {
  mixin H5Template!(BS5Obj, ["obj"]);

//   // Adding margins  
//   O margins(string[] values...) {
//     this.margins(values);
//     return cast(O) this;
//   }
//   O margins(string[] values) {
//     foreach(v; values) this.addClasses("m"~v);
//     return cast(O) this;
//   }

//   /// Adding paddings
//   O paddings(string[] values...)  {
//     this.paddings(values);
//     return cast(O) this;
//   }
//   O paddings(string[] values)  {
//     values.each!(v => this.addClasses("p"~v));

//     return cast(O) this;
//   }

/*   /// Clear border 
  O noPadding(string side = null) { 
    this.addClasses("p-0");
    return cast(O) this;
  }

  /// Adding border 
  O border(int value) { 
    if (value > 0) this.addClasses("border-"~to!string(value));
    else this.addClasses("border");
    return cast(O) this;
   }
  O border(string side, int value) { return border(side~"-"~to!string(value)); }
  O border(string value = null) {
    if (value.length > 0) this.addClasses("border-"~value);
    else this.addClasses("border");
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.border() == `<div class="border"></div>`);
    // assert(BS5Obj.border(1) == `<div class="border-1"></div>`);
    // assert(BS5Obj.border("top") == `<div class="border-top"></div>`);
  }

  /// Clear border 
  O noBorder(string side = null) { 
    if (side.length > 0) this.addClasses("border-"~side~"-0");
    else this.addClasses("border-0");
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.noBorder() == `<div class="border-0"></div>`);
  }

  /// Set border color 
  O borderColor(string color) { 
    if (color.length > 0) this.addClasses("border-"~color);
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.borderColor("primary") == `<div class="border-primary"></div>`);
    // assert(BS5Obj.border.borderColor("primary") == `<div class="border border-primary"></div>`);
  }

  /// Change rounded of corners 
  O rounded(string value = "") {
    if (value.length > 0) this.addClasses("rounded-"~value);
    else this.addClasses("rounded");
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.rounded == `<div class="rounded"></div>`);
    // assert(BS5Obj.rounded("top") == `<div class="rounded-top"></div>`);
  }

  /// Clear rounded
  O noRounded() { 
    this.addClasses("rounded-0");
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.noRounded == `<div class="rounded-0"></div>`);
  }

  /// Set size of rounded
  O roundedSize(string value) {
    if (value.length > 0) this.addClasses("rounded-"~value);
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.roundedSize("lg") == `<div class="rounded-lg"></div>`);
  }

  O clearfix() { 
    this.addClasses("clearfix");
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.clearfix == `<div class="clearfix"></div>`);
  }

  O closeButton(string icon = "&times;") { 
    this.content(BS5Button(["close"], ["aria-label":"Close"], H5Span(["aria-label":"true"], icon)));
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.closeButton == `<div><button class="btn close" aria-label="Close" type="button"><span aria-label="true">&times;</span></button></div>`);
  }

  /// Setting text color
  O textColor(string color, int value) { return textColor(color, to!string(value)); }
  O textColor(string color, string value = null) {
    if (value.length > 0) this.addClasses("text-"~color~"-"~value);
    else this.addClasses("text-"~color);
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.textColor("primary") == `<div class="text-primary"></div>`);
    // assert(BS5Obj.textColor("black", "50") == `<div class="text-black-50"></div>`);
  }

  /// Setting background color
  O background(string color, int value) { return background(color, to!string(value)); }
  O background(string color, string value = null) {
    if (value.length > 0) this.addClasses("bg-"~color~"-"~value);
    else this.addClasses("bg-"~color);
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.background("primary") == `<div class="bg-primary"></div>`);
  }

  /// Setting display
  O display(string value) { return this.display(null, value); }
  O display(string breakpoint, string value) {
    if (breakpoint.length > 0) this.addClasses("d-"~breakpoint~"-"~value);
    else this.addClasses("d-"~value);
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.display("none") == `<div class="d-none"></div>`);
    // assert(BS5Obj.display("sm", "block") == `<div class="d-sm-block"></div>`);
  }
  
  /// Setting print display
  O print(string value) {
    if (value.length > 0) this.addClasses("d-print-"~value);
    return cast(O) this;
  }
  ///
unittest {
    // assert(BS5Obj.print("none") == `<div class="d-print-none"></div>`);
  }
 */
// static BS5Obj");
}
///
unittest {
  // // assert(BS5Obj == "<div></div>");
}
