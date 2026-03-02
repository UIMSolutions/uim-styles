module uim.bootstrap5.classes.tables.column;

import uim.bootstrap5;

mixin(ShowModule!());

@safe:

class BS5TableColumn : H5Th {
  mixin H5Template!(BS5TableColumn, null, ["scope": "col"]);

  // mixin(TProperty!("string", "key"));
  // mixin(TProperty!("string", "title"));
  // mixin(TProperty!("int", "width"));
  // mixin(TProperty!("string", "type"));

  // override string renderHTML(string[string] bindings = null) {
  //   this.clearContent;
  //   attribute("scope"]="col";
  //   if (_width) attribute("width"]=to!string(_width);
  //   this.content(_title);
  //   return super.renderHTML;
  // }

}
///
unittest {
  // assert(BS5TableColumn() == `<th scope="col"></th>`);
  // assert(BS5TableColumn().title("xyz") == `<th scope="col">xyz</th>`);
}
