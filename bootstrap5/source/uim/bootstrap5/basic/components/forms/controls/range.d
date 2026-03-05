module uim.bootstrap5.basic.components.forms.controls.range;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

/**
  * Range inputs are used to let users specify a numeric value which must be no less than a given minimum and no more than a given maximum. The exact appearance of the range input varies across browsers, but it generally appears as a slider.
  * https://getbootstrap.com/docs/5.3/forms/range/
  */
class BS5InputRange : BS5Input {
  mixin H5Template!(BS5InputRange, ["form-range"], ["type":"range"]);
}
///
unittest {
  assert(BS5InputRange() == `<input class="form-control" type="range">`); 
  assert(BS5InputRange(["testclass"]) == `<input class="form-range testclass" type="range">`);
  assert(BS5InputRange(["a":"b"]) == `<input class="form-range" type="range" a="b">`);
  assert(BS5InputRange(["testclass"], ["a":"b"]) == `<input class="form-range testclass" type="range" a="b">`); 
}
