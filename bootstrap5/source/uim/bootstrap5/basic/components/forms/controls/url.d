module uim.bootstrap5.basic.components.forms.controls.url;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputUrl : BS5Input {
  mixin H5Template!(BS5InputUrl, ["form-control"], ["type":"url"]);
}
///
unittest {
  assert(BS5InputUrl() == `<input class="form-control" type="url">`);
  assert(BS5InputUrl(["testclass"]) == `<input class="form-control testclass" type="url">`);
  assert(BS5InputUrl(["a":"b"]) == `<input class="form-control" type="url" a="b">`);
  assert(BS5InputUrl(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="url" a="b">`);
}
