module uim.bootstrap5.classes.tables.header;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 
class BS5TableHeader : H5Thead {
  mixin H5Template!(BS5TableHeader, null, null);

//   // mixin(MyContent!("row", "BS5TableRow"));
//   // mixin(MyContent!("tr", "BS5TableRow"));
//   ///
// unittest {
//     // assert(BS5TableHeader.row == `<thead><tr></tr></thead>`);
//     // assert(BS5TableHeader.row.row == `<thead><tr></tr><tr></tr></thead>`);
//     // assert(BS5TableHeader.tr() == `<thead><tr></tr></thead>`);
//   }
}
///
unittest {
  assert(BS5TableHeader() == `<thead></thead>`);
  assert(BS5TableHeader(["testclass"]) == `<thead class="testclass"></thead>`);
  assert(BS5TableHeader(["a":"b"]) == `<thead a="b"></thead>`);
  assert(BS5TableHeader(["testclass"], ["a":"b"]) == `<thead class="testclass" a="b"></thead>`);

  assert(BS5TableHeader("Hello") == `<thead>Hello</thead>`);
  assert(BS5TableHeader(["testclass"], "Hello") == `<thead class="testclass">Hello</thead>`);
  assert(BS5TableHeader(["a":"b"], "Hello") == `<thead a="b">Hello</thead>`);
  assert(BS5TableHeader(["testclass"], ["a":"b"], "Hello") == `<thead class="testclass" a="b">Hello</thead>`);
}
