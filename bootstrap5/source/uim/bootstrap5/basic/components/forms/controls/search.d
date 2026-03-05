module uim.bootstrap5.basic.components.forms.controls.search;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputSearch : BS5Input {
  mixin H5Template!(BS5InputSearch, ["form-control"], ["type":"search"]);
}
///
unittest {
  assert(BS5InputSearch() == `<input class="form-control" type="search">`);  
  assert(BS5InputSearch(["testclass"]) == `<input class="form-control testclass" type="search">`);
  assert(BS5InputSearch(["a":"b"]) == `<input class="form-control" type="search" a="b">`);
  assert(BS5InputSearch(["testclass"], ["a":"b"]) == `<input class="form-control testclass" type="search" a="b">`);  
  
  assert(BS5InputSearch("Hello") == `<input class="form-control" type="search" value="Hello">`);
  assert(BS5InputSearch(["testclass"], "Hello") == `<input class="form-control testclass" type="search" value="Hello">`);
  assert(BS5InputSearch(["a":"b"], "Hello") == `<input class="form-control" type="search" a="b" value="Hello">`);
  assert(BS5InputSearch(["testclass"], ["a":"b"], "Hello") == `<input class="form-control testclass" type="search" a="b" value="Hello">`);
}
