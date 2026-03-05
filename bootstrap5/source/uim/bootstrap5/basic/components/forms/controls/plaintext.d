module uim.bootstrap5.basic.components.forms.controls.plaintext;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:  

class BS5InputPlaintext : BS5Input {
  mixin H5Template!(BS5InputPlaintext, ["form-control-plaintext"], ["type":"text"]);
}
///
unittest {
  assert(BS5InputPlaintext() == `<input class="form-control-plaintext" type="text">`);
  assert(BS5InputPlaintext(["testclass"]) == `<input class="form-control-plaintext testclass" type="text">`);
  assert(BS5InputPlaintext(["a":"b"]) == `<input class="form-control-plaintext" type="text" a="b">`);
  assert(BS5InputPlaintext(["testclass"], ["a":"b"]) == `<input class="form-control-plaintext testclass" type="text" a="b">`);

  assert(BS5InputPlaintext("Hello") == `<input class="form-control-plaintext" type="text" value="Hello">`);
  assert(BS5InputPlaintext(["testclass"], "Hello") == `<input class="form-control-plaintext testclass" type="text" value="Hello">`);
  assert(BS5InputPlaintext(["a":"b"], "Hello") == `<input class="form-control-plaintext" type="text" a="b" value="Hello">`);
  assert(BS5InputPlaintext(["testclass"], ["a":"b"], "Hello") == `<input class="form-control-plaintext testclass" type="text" a="b" value="Hello">`);
}
