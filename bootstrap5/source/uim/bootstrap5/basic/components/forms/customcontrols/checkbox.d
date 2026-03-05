module uim.bootstrap5.basic.components.forms.customcontrols.checkbox;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

/** 
  * The BS5CustomCheckbox class represents a custom checkbox control in Bootstrap 5.
  * It extends the BS5CustomControl class and provides additional functionality specific to checkboxes.
  *
  * Note: The implementation of this class is currently a placeholder and may need to be expanded to fully support all features of a custom checkbox in Bootstrap 5.
  *
  * Example usage:
  * ```
  * auto checkbox = BS5CustomCheckbox();
  * writeln(checkbox); // Outputs: <div class="custom-checkbox custom-control"></div>
  * ```
  */
class BS5CustomCheckbox : BS5CustomControl {
  mixin H5Template!(BS5CustomCheckbox, ["custom-checkbox"]);
}
///
unittest {
  assert(BS5CustomCheckbox() == `<div class="custom-checkbox custom-control"></div>`);
  assert(BS5CustomCheckbox(["testclass"]) == `<div class="custom-checkbox custom-control testclass"></div>`);
  assert(BS5CustomCheckbox(["a":"b"]) == `<div class="custom-checkbox custom-control" a="b"></div>`);
  assert(BS5CustomCheckbox(["testclass"], ["a":"b"]) == `<div class="custom-checkbox custom-control testclass" a="b"></div>`);

  assert(BS5CustomCheckbox() == `<div class="custom-checkbox custom-control"></div>`);
  assert(BS5CustomCheckbox(["testclass"]) == `<div class="custom-checkbox custom-control testclass"></div>`);
  assert(BS5CustomCheckbox(["a":"b"]) == `<div class="custom-checkbox custom-control" a="b"></div>`);
  assert(BS5CustomCheckbox(["testclass"], ["a":"b"]) == `<div class="custom-checkbox custom-control testclass" a="b"></div>`);
}
