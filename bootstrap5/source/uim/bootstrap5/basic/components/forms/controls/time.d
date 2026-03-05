module uim.bootstrap5.basic.components.forms.controls.time;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputTime : BS5Input {
  mixin H5Template!(BS5InputTime, ["form-control"], ["type":"time"]);

  // BS5InputTime value(long timestamp) {
  //   attribute("value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString.split("T")[1];
  //   return this;
  // }

  // BS5InputTime value(string timeValue) {
  //   attribute("value"] = timeValue;
  //   return this;
  // }

  // BS5InputTime value(SysTime systime) {
  //   attribute("value"] = (cast(DateTime)systime).toISOExtString.split("T")[1];
  //   return this;
  // }

  // BS5InputTime value(DateTime datetime) {
  //   attribute("value"] = datetime.toISOExtString.split("T")[1];
  //   return this;
  // }
}
///
unittest {
  assert(BS5InputTime() == `<input class="form-control" type="time">`);
  assert(BS5InputTime(["testclass"]) == `<input class="form-control testclass" type="time">`);
  assert(BS5InputTime(["a":"b"]) == `<input class="form-control" type="time" a="b">`);
  assert(BS5InputTime(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="time" a="b">`);
}
