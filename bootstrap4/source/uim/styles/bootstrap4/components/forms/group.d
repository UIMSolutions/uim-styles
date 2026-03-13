module uim.bootstrap.bs4.components.forms.group;

import uim.bootstrap4;

mixin(ShowModule!());

@safe:

class BS4FormGroup : H5Div {
  mixin H5This!(["form-group"]);

  mixin(MyAttribute!("readOnly", "readonly"));
  mixin(MyAttribute!("value", "value"));
  mixin(MyAttribute!("placeHolder", "placeholder"));

  mixin(MyContent!("label", "H5Label"));
  O label(string forId, string title, string[] someClasses = null, string[string] someAttributes = null) {
    someAttributes["for"] = forId;
    this.addContent(H5Label(someClasses, someAttributes, title));
    return this;
  }

  BS4FormGoup addDiv() {
    this.addContent(H5Div());
    return this;
  }

  BS4FormGroup addCol() {
    this.addContent(BS4Col());
    return this;
  }

  BS4FormGroup addInput() {
    this.addContent(BS4Input());
    return this;
  }

  BS4FormGroup addButton() {
    this.addContent(BS4InputButton());
    return this;
  }

  BS4FormGroup addCheckbox() {
    this.addContent(BS4Checkbox());
    return this;
  }

  BS4FormGroup addColor() {
    this.addContent(BS4InputColor());
    return this;
  }

  BS4FormGroup addInputDate() {
    this.addContent(BS4InputDate());
    return this;
  }

  BS4FormGroup addInputDateTime() {
    this.addContent(BS4InputDateTime());
    return this;
  }

  BS4FormGroup addEmail() {
    this.addContent(BS4InputEmail());
    return this;
  }

  BS4FormGroup addFile() {
    this.addContent(BS4InputFile());
    return this;
  }

  BS4FormGroup addGroup() {
    this.addContent(BS4InputGroup());
    return this;
  }

  BS4FormGroup addInputHidden() {
    this.addContent(BS4InputHidden());
    return this;
  }

  BS4FormGroup addImage() {
    this.addContent(BS4InputImage());
    return this;
  }

  BS4FormGroup addMonth() {
    this.addContent(BS4InputMonth());
    return this;
  }

  BS4FormGroup addNumber() {
    this.addContent(BS4InputNumber());
    return this;
  }

  BS4FormGroup addPassword() {
    this.addContent(BS4Password());
    return this;
  }

  BS4FormGroup addRadio() {
    this.addContent(BS4Radio());
    return this;
  }

  BS4FormGroup addInputRange() {
    this.addContent(BS4InputRange());
    return this;
  }

  BS4FormGroup addInputReset() {
    this.addContent(BS4InputReset());
    return this;
  }

  BS4FormGroup addSearch() {
    this.addContent(BS4InputSearch());
    return this;
  }

  BS4FormGroup addSelect() {
    this.addContent(BS4InputSelect());
    return this;
  }

  BS4FormGroup addSubmit() {
    this.addContent(BS4InputSubmit());
    return this;
  }

  BS4FormGroup addTelephone() {
    this.addContent(BS4InputTelephone());
    return this;
  }

  BS4FormGroup addText() {
    this.addContent(BS4InputText());
    return this;
  }

  BS4FormGroup addTextarea() {
    this.addContent(BS4InputTextarea());
    return this;
  }

  BS4FormGroup addInputTime() {
    this.addContent(BS4InputTime());
    return this;
  }

  BS4FormGroup addUrl() {
    this.addContent(BS4InputUrl());
    return this;
  }

  BS4FormGroup addWeek() {
    this.addContent(BS4InputWeek());
    return this;
  }

  mixin(BS4Calls!("FormGroup"));
}

///
unittest {
  assert(BS4FormGroup == `<div class="form-group"></div>`);
}
