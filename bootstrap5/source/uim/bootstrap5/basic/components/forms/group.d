module uim.bootstrap5.basic.components.forms.group;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5FormGroup : H5Div {
  mixin H5Template!(BS5FormGroup, ["form-group"]);

  // // mixin(MyAttribute!("readOnly", "readonly"));
  // // mixin(MyAttribute!("value", "value"));
  // // mixin(MyAttribute!("placeHolder", "placeholder"));

  // // mixin(MyContent!("label", "H5Label"));
  // O label(string forId, string title, string[] someClasses = null, string[string] someAttributes = null) {
  //   someAttributes["for"] = forId;
  //   this.content(H5Label(someClasses, someAttributes, title));
  //   return this;
  // }
  // // mixin(MyContent!("div", "H5Div"));
  
  // // mixin(MyContent!("col", "BS5Col"));
  // // mixin(MyContent!("input", "BS5Input"));
  // // mixin(MyContent!("button", "BS5InputButton"));
  // // mixin(MyContent!("checkbox", "BS5Checkbox"));
  // // mixin(MyContent!("color", "BS5InputColor"));
  // // mixin(MyContent!("inputDate", "BS5InputDate"));
  // // mixin(MyContent!("inputDateTime", "BS5InputDateTime"));
  // // mixin(MyContent!("email", "BS5InputEmail"));
  // // mixin(MyContent!("file", "BS5InputFile"));
  // // mixin(MyContent!("group", "BS5InputGroup"));
  // // mixin(MyContent!("inputHidden", "BS5InputHidden"));
  // // mixin(MyContent!("image", "BS5InputImage"));
  // // mixin(MyContent!("month", "BS5InputMonth"));
  // // mixin(MyContent!("number", "BS5InputNumber"));
  // // mixin(MyContent!("password", "BS5Password"));
  // // mixin(MyContent!("radio", "BS5Radio"));
  // // mixin(MyContent!("inputRange", "BS5InputRange"));
  // // mixin(MyContent!("inputReset", "BS5InputReset"));
  // // mixin(MyContent!("search", "BS5InputSearch"));
  // // mixin(MyContent!("select", "BS5InputSelect"));
  // // mixin(MyContent!("submit", "BS5InputSubmit"));
  // // mixin(MyContent!("telephone", "BS5InputTelephone"));
  // // mixin(MyContent!("text", "BS5InputText"));
  // // mixin(MyContent!("textarea", "BS5InputTextarea"));
  // // mixin(MyContent!("inputTime", "BS5InputTime"));
  // // mixin(MyContent!("url", "BS5InputUrl"));
  // // mixin(MyContent!("week", "BS5InputWeek"));
}
///
unittest {
  assert(BS5FormGroup() == `<div class="form-group"></div>`);
  assert(BS5FormGroup(["testclass"]) == `<div class="form-group testclass"></div>`);
  assert(BS5FormGroup(["a":"b"]) == `<div class="form-group" a="b"></div>`);
  assert(BS5FormGroup(["testclass"], ["a":"b"]) == `<div class="form-group testclass" a="b"></div>`);

  assert(BS5FormGroup("SomeContent") == `<div class="form-group">SomeContent</div>`);
  assert(BS5FormGroup(["testclass"], "SomeContent") == `<div class="form-group testclass">SomeContent</div>`);
  assert(BS5FormGroup(["a":"b"], "SomeContent") == `<div class="form-group" a="b">SomeContent</div>`);
  assert(BS5FormGroup(["testclass"], ["a":"b"], "SomeContent") == `<div class="form-group testclass" a="b">SomeContent</div>`);
}
