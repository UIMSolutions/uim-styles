module uim.bootstrap5.basic.components.tabs.content;

import uim.bootstrap5;

mixin(ShowModule!());

@safe: 

class BS5TabContent : H5Div {
  mixin H5Template!(BS5TabContent, ["tab-content"]);

// auto addPane(string id, string label) { return this.addContent(new BS5TabPane(id, label)); }
}
///
unittest {
  assert(BS5TabContent() == `<div class="tab-content"></div>`);
  assert(BS5TabContent(["testclass"]) == `<div class="tab-content testclass"></div>`);
  assert(BS5TabContent(["a":"b"]) == `<div class="tab-content" a="b"></div>`);
  assert(BS5TabContent(["testclass"], ["a":"b"]) == `<div class="tab-content testclass" a="b"></div>`);

  assert(BS5TabContent("SomeContent") == `<div class="tab-content">SomeContent</div>`);
  assert(BS5TabContent(["testclass"], "SomeContent") == `<div class="tab-content testclass">SomeContent</div>`);
  assert(BS5TabContent(["a":"b"], "SomeContent") == `<div class="tab-content" a="b">SomeContent</div>`);
  assert(BS5TabContent(["testclass"], ["a":"b"], "SomeContent") == `<div class="tab-content testclass" a="b">SomeContent</div>`);
}
