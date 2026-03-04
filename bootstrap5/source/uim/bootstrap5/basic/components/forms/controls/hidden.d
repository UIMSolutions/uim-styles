module uim.bootstrap5.basic.components.forms.controls.hidden;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

@StringAttribute("value")
class BS5InputHidden : BS5Input {
  mixin H5Template!(BS5InputHidden, null, ["type":"hidden"]);

  // BS5InputHidden value(UUID id) {
  //   this.value(id.toString);
  //   return this;
  // }
}
///
unittest {
  assert(BS5InputHidden() == `<input class="form-control" type="hidden" />`);
  assert(BS5InputHidden(["testclass"]) == `<input class="form-control testclass" type="hidden" />`);  
  assert(BS5InputHidden(["a":"b"]) == `<input class="form-control" a="b" type="hidden" />`);
  assert(BS5InputHidden(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="hidden" />`);
}
