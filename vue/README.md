# uim-vue

Vue.js 3 integration helpers for D projects using `vibe.d` and `uim-framework`.

## What this package provides

- Entry module: `uim.vue`
- Re-exported integration namespaces:
  - `uim.vue.components`
  - `uim.vue.helpers`
  - `uim.vue.interfaces`
  - `uim.vue.mixins`
- Utility helpers for Vue 3 runtime URLs and bootstrapping JavaScript snippets

## Module structure

Source root:

`source/uim/vue/`

Important modules:

- `package.d` → exports `uim.vue`
- `helpers/app.d` → Vue app options and bootstrap script helpers

## Usage

```d
import uim.vue;

auto script = createVueBootstrapScript(VueAppOptions(
  mountSelector: "#app",
  componentName: "App",
  templateMarkup: "<app-root />"
));
```

### Minimal vibe.d route example

```d
import vibe.core.core : runApplication;
import vibe.http.server : HTTPServerSettings, listenHTTP;
import uim.vue;

void main(string[] args)
{
  auto router = createVueDemoRouter();

  auto settings = new HTTPServerSettings;
  settings.port = 8080;
  settings.bindAddresses = ["127.0.0.1", "::1"];

  auto listener = listenHTTP(settings, router);
  runApplication(&args);
}
```

## License

Apache-2.0
