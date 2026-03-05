module uim.bootstrap5.basic.components.forms.controls.week;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

/**
  * BS5InputWeek represents an HTML <input type="week"> element with Bootstrap 5 styling.
  * It allows users to select a specific week and year.
  *
  * Example usage:
  * ```
  * auto weekInput = BS5InputWeek();
  * auto customWeekInput = BS5InputWeek(["custom-class"], ["data-info":"example"], "2024-W01");
  * ```
  */
class BS5InputWeek : BS5Input {
  mixin H5Template!(BS5InputWeek, ["form-control"], ["type":"week"]);
}
///
unittest {
  assert(BS5InputWeek() == `<input class="form-control" type="week">`);
  assert(BS5InputWeek(["testclass"]) == `<input class="form-control testclass" type="week">`);
  assert(BS5InputWeek(["a":"b"]) == `<input class="form-control" type="week" a="b">`);
  assert(BS5InputWeek(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="week" a="b">`);
}
