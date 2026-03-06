module uim.bootstrap5.classes.tables.row;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

// class BS5TableRow : H5Tr {
//   mixin H5Template!(BS5TableRow, null, null );

// //   /// Adding a header cell
// //   // mixin(MyContent!("th", "H5Th"));
// //   ///

// //   /// Adding a cell
// //   // mixin(MyContent!("cell", "H5Td"));
// //   // mixin(MyContent!("td", "H5Td"));
// //   ///

// // /*
// //   mixin(TProperty!("string[string]", "keyPairs"));
// //   mixin(TProperty!("string[]", "values"));

// //   string renderHTML(BS5TableColumn[] columns) {
// //     this.clearContent;
// //     if (_keyPairs.empty) return renderHTML;
// //     else {
// //       foreach(col; columns) {
// //         if (col.key in _keyPairs) this.content("<td>"~_keyPairs[col.key]~"</td>");
// //       }
// //     }
// //     return super.renderHTML;
// //   }
// //   override string renderHTML(string[string] bindings = null) {
// //     this.clearContent;
// //     if ((_values.length == 0) && (!_keyPairs.empty)) _values = _keyPairs.values;
// //     foreach(v; _values) {
// //       this.content("<td>"~v~"</td>");
// //     }
// //     return super.renderHTML;
// //   }*/

// } 
// ///
// unittest {
//   assert(BS5TableRow() == "<tr></tr>");
//   assert(BS5TableRow(["testclass"]) == `<tr class="testclass"></tr>`);
//   assert(BS5TableRow(["a":"b"]) == `<tr a="b"></tr>`);
//   assert(BS5TableRow(["testclass"], ["a":"b"]) == `<tr class="testclass" a="b"></tr>`);

//   assert(BS5TableRow("Hello") == "<tr>Hello</tr>");
//   assert(BS5TableRow(["testclass"], "Hello") == `<tr class="testclass">Hello</tr>`);
//   assert(BS5TableRow(["a":"b"], "Hello") == `<tr a="b">Hello</tr>`);
//   assert(BS5TableRow(["testclass"], ["a":"b"], "Hello") == `<tr class="testclass" a="b">Hello</tr>`);

//   //// assert(BS5TableRow().values(["a","b"]) == `<tr><td>a</td><td>b</td></tr>`);
// }

