module uim.bootstrap5.basic.components.forms.files.label;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/** 
  * The <label> element, when used with the form-file component, can be used to style a label for the file input. It is required when using the form-file component and should be used to display the name of the selected file.
  * 
  * ```html
  * <div class="form-file">
  *   <input type="file" class="form-file-input" id="customFile">
  *   <label class="form-file-label" for="customFile">Choose file</label>
  * </div>
  * ```
  */
class BS5FormFileLabel : H5Label {
  mixin H5Template!(BS5FormFileLabel, ["form-file-label"]);
}
///
unittest {
  assert(BS5FormFileLabel() == `<label class="form-file-label"></label>`);
  assert(BS5FormFileLabel(["testclass"]) == `<label class="form-file-label testclass"></label>`);
  assert(BS5FormFileLabel(["a":"b"]) == `<label class="form-file-label" a="b"></label>`);
  assert(BS5FormFileLabel(["testclass"], ["a":"b"]) == `<label class="form-file-label testclass" a="b"></label>`);

  assert(BS5FormFileLabel("SomeContent") == `<label class="form-file-label">SomeContent</label>`);
  assert(BS5FormFileLabel(["testclass"], "SomeContent") == `<label class="form-file-label testclass">SomeContent</label>`);
  assert(BS5FormFileLabel(["a":"b"], "SomeContent") == `<label class="form-file-label" a="b">SomeContent</label>`);
  assert(BS5FormFileLabel(["testclass"], ["a":"b"], "SomeContent") == `<label class="form-file-label testclass" a="b">SomeContent</label>`);
}
