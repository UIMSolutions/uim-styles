module uim.bootstrap5.basic.components.forms.files.file;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/** 
 * BS5FormFile
 * A wrapper to style a file input and trigger the file browser via the included button. The file input is automatically hidden and replaced with a string of text and a "Browse" button. The text will display the name of the selected file, or "No file chosen" if there is no file selected.
 * 
 * https://getbootstrap.com/docs/5.3/forms/file-input/#custom-file-input
  * Note: Bootstrap's custom file input does not support multiple file selection. If you need to allow users to select multiple files, you can use the standard file input without the custom styling.
 */
class BS5FormFile : H5Div {
  mixin H5Template!(BS5FormFile, ["form-file"]);
}
///
unittest {
  assert(BS5FormFile() == `<div class="form-file"></div>`);
  assert(BS5FormFile(["testclass"]) == `<div class="form-file testclass"></div>`);
  assert(BS5FormFile(["a":"b"]) == `<div class="form-file" a="b"></div>`);
  assert(BS5FormFile(["testclass"], ["a":"b"]) == `<div class="form-file testclass" a="b"></div>`);

  assert(BS5FormFile("SomeContent") == `<div class="form-file">SomeContent</div>`);
  assert(BS5FormFile(["testclass"], "SomeContent") == `<div class="form-file testclass">SomeContent</div>`);
  assert(BS5FormFile(["a":"b"], "SomeContent") == `<div class="form-file" a="b">SomeContent</div>`);
  assert(BS5FormFile(["testclass"], ["a":"b"], "SomeContent") == `<div class="form-file testclass" a="b">SomeContent</div>`);
}
