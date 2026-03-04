module uim.bootstrap5.basic.components.forms.controls.datetime;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputDateTime : BS5Input {
  mixin H5Template!(BS5InputDateTime, null, ["type":"datetime-local"]);

  // BS5InputDateTime value(long timestamp) {
  //   attribute("value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString;
  //   return this;
  // }
  
  // BS5InputDateTime value(SysTime systime) {
  //   attribute("value"] = (cast(DateTime)systime).toISOExtString;
  //   return this;
  // }

  // BS5InputDateTime value(DateTime datetime) {
  //   attribute("value"] = datetime.toISOExtString;
  //   return this;
  // }
}
///
unittest {
  assert(BS5InputDateTime() == `<input class="form-control" type="datetime-local" />`);
  assert(BS5InputDateTime(["testclass"]) == `<input class="form-control testclass" type="datetime-local" />`);
  assert(BS5InputDateTime(["a":"b"]) == `<input class="form-control" type="datetime-local" a="b" />`);
  assert(BS5InputDateTime(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="datetime-local" a="b" />`);
}
