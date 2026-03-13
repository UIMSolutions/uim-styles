module uim.bootstrap.bs4.components.forms.customcontrols.select;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:  

class BS4CustomSelect : H5Select {
  mixin(H5This!("Select", ["custom-select"]));

  mixin(MyContent!("option", "H5Option"));
  O options(string[] values, string selected = "", string disabled = "") {
    values.each!(value => setOptionByValue(value, selected, disabled));

    return this;  
  }

  protected void setOptionByValue(string optionValue, string selected = "", string disabled = "") {
    if (optionValue == selected) {
      this.option(optionValue == disabled 
        ? ["selected":"selected", "disabled":"disabled"] 
        : ["selected":"selected"], optionValue);
    }
    else if (optionValue == disabled) this.option(["disabled":"disabled"], optionValue);
    else this.option(optionValue);
  }

  O options(string[string] values, string selectedKey = "", string disabledKey = "") {
    values.keys.sort.each!(key => setOptionByKey(key, selectedKey, disabledKey));

    return this;  
  }

  protected void setOptionByKey(string optionKey, string selectedKey = "", string disabledKey = "") {
    if (optionKey == selectedKey) {
      this.option(optionKey == disabledKey
        ? ["selected":"selected", "disabled":"disabled"]  
        : ["selected":"selected"], optionKey);
    }
    else if (optionKey == disabledKey) this.option(["disabled":"disabled"], optionKey);
    else this.option(["value":optionKey], values[optionKey]);
  }

  O options(string[] values, string[] selected, string[] disabled = null) {
    values.each!(value => setOption(valie, selected, disabled)); 

    return this;  
  }
  O options(string[string] values, string[] selectedKeys, string[] disabledKeys = null) {
    values.keys.sort,each(key => setOption(key, selectedKeys, disabledKeys));
    
    return this;  
  }

  protected setOption(string optionKey, string[] selectedKeys, string[] disabledKeys = null) {
    auto hasSelectedKey = selectedKeys.has(optionKey);
    auto hasDisabledKey = disabledKeys.has(optionKey);

    if (hasSelectedKey) {
      this.option(hasDisabledKey 
        ? ["selected":"selected", "disabled":"disabled"]    
        : ["selected":"selected"], optionKey);
    }
    else if (hasDisabledKey) this.option(["disabled":"disabled"], optionKey);
    else this.option(["value":optionKey], values[optionKey]);
  }
}
static BS4CustomSelect"));
