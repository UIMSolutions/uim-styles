module uim.bootstrap5.basic.components.forms.controls.text;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

/** 
 * BS5InputText represents a text input field in Bootstrap 5 forms.
 * It extends the BS5Input class and provides additional functionality specific to text inputs.
 */
class BS5InputText : BS5Input {
  mixin H5Template!(BS5InputText, ["form-control"], ["type":"text"]);
  
  // BS5InputText value(UUID id) {
  //   this.value(id.toString);
  //   return this;
  // }

  // BS5InputText value(bool aValue) {
  //   value(aValue ? "true" : "false");
  //   return this;
  // }

  // BS5InputText value(string txt) {
  //   attribute("value"] = txt;
  //   return this;
  // }
}
///
unittest {
  assert(BS5InputText() == `<input class="form-control" type="text">`);
  assert(BS5InputText(["testclass"]) == `<input class="form-control testclass" type="text">`);
  assert(BS5InputText(["a":"b"]) == `<input class="form-control" type="text" a="b">`);
  assert(BS5InputText(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="text" a="b">`);
}
