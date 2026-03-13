module uim.bootstrap.bs4.layout.col;

import uim.bootstrap4;

mixin(ShowModule!());

@safe: 

class BS4Col : BS4Obj {
  mixin(H5This!("Div"));

  O sizes(string[] someSizes...) { 
    sizes(someSizes.dup); 
    
    return this; 
  }

  O sizes(string[] someSizes) { 
    someSizes.each!(s => this.addClasses("col-"~s));

    return this; 
  }
}
static BS4Col"));