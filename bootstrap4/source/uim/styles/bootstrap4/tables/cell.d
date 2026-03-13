module uim.bootstrap.bs4.tables.cell;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4TableCell : BS4Obj {
  mixin(H5This!"Td");
  
  O colspan(int span) { return this.colspan(to!string(span)); }
  O colspan(string span) { 
    this.attributes("colspan", span);
    return this; }
  ///
unittest {
    assert(BS4TableCell.colspan(2) == `<td colspan="2"></td>`);
  }}

  O rowspan(int span) { return this.rowspan(to!string(span)); }
  O rowspan(string span) { 
    this.attributes("rowspan", span);
    return this; }
  ///
unittest {
    assert(BS4TableCell.rowspan(2) == `<td rowspan="2"></td>`);
  }}
}
static BS4TableCell");

///
unittest {
  assert(BS4TableCell == `<td></td>`);
}}
