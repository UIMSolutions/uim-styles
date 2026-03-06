module uim.bootstrap5.classes.tables.cell;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5TableCell : H5Td {
  mixin H5Template!(BS5TableCell, null, null);
  
//   O colspan(int span) { return this.colspan(to!string(span)); }
//   O colspan(string span) { 
//     this.attributes("colspan", span);
//     return this; }
//   ///
// unittest {
//     // assert(BS5TableCell.colspan(2) == `<td colspan="2"></td>`);
//   }

//   O rowspan(int span) { return this.rowspan(to!string(span)); }
//   O rowspan(string span) { 
//     this.attributes("rowspan", span);
//     return this; }
//   ///
// unittest {
//     // assert(BS5TableCell.rowspan(2) == `<td rowspan="2"></td>`);
//   }
}
///
unittest {
  // assert(BS5TableCell() == `<td></td>`);
}
