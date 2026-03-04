module uim.bootstrap5.basic.components.forms.controls.date;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5InputDate : BS5Input {
  mixin H5Template!(BS5InputDate, ["form-control"], ["type":"date"]);

  // BS5InputDate value(long timestamp) {
  //   attribute("value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString.split("T")[0];
  //   return this;
  // }
  // ///
  // unittest {
  //   /// TODO
  // }

  // BS5InputDate value(string dateValue) {
  //   attribute("value"] = dateValue;
  //   return this;
  // }
  // ///
  // unittest {
  //   /// TODO
  // }

  // BS5InputDate value(SysTime systime) {
  //   attribute("value"] = (cast(DateTime)systime).toISOExtString.split("T")[0];
  //   return this;
  // }
  // ///
  // unittest {
  //   /// TODO
  // }

  // BS5InputDate value(DateTime datetime) {
  //   attribute("value"] = datetime.toISOExtString.split("T")[0];
  //   return this;
  // }
  // ///
  // unittest {
  //   /// TODO  
  // }
}
///
unittest {
  assert(BS5InputDate() == `<input class="form-control" type="date" />`);
  assert(BS5InputDate(["testclass"]) == `<input class="form-control testclass" type="date" />`);
  assert(BS5InputDate(["a":"b"]) == `<input class="form-control" a="b" type="date" />`);
  assert(BS5InputDate(["testclass"], ["a":"b"]) == `<input class="form-control testclass" a="b" type="date" />`);
}
