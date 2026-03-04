module uim.bootstrap5.basic.components.forms.controls.number;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

@StringAttribute("value")
class BS5InputNumber : H5Input {
  mixin H5Template!(BS5InputNumber, ["form-control"], ["type": "number"]);

  // BS5InputNumber value(int aValue) {
  //   attribute("value"] = to!string(aValue);
  //   return this;
  // }

  // BS5InputNumber value(long aValue) {
  //   attribute("value"] = to!string(aValue);
  //   return this;
  // }

  // BS5InputNumber value(size_t aValue) {
  //   attribute("value"] = to!string(aValue);
  //   attribute("min"] = "0";
  //   return this;
  // }
}
///
unittest {
  assert(BS5InputNumber() == `<input class="form-control" type="number" />`);
  assert(BS5InputNumber(["testclass"]) == `<input class="form-control testclass" type="number" />`);
  assert(BS5InputNumber(["a":"b"]) == `<input class="form-control" a="b" type="number" />`);
  assert(BS5InputNumber(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="number" />`);
}
