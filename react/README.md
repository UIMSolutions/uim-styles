# uim-react

React.js 19.2 integration helpers for D projects using `vibe.d` and `uim-framework`.

## What this package provides

- Entry module: `uim.react`
- Re-exported integration namespaces:
  - `uim.react.components`
  - `uim.react.helpers`
  - `uim.react.interfaces`
  - `uim.react.mixins`
- Utility helpers for React 19.2 runtime URLs and bootstrapping JavaScript snippets

## Module structure

Source root:

`source/uim/react/`

Important modules:

- `package.d` → exports `uim.react`
- `helpers/app.d` → React app options and bootstrap script helpers
- `components/demo.d` → minimal `vibe.d` route and page generator

## Usage

```d
import uim.react;

auto script = createReactBootstrapScript(ReactAppOptions(
  mountSelector: "#app",
  headingText: "React 19.2 + D + vibe.d"
));
```

### Minimal vibe.d route example

```d
import vibe.core.core : runApplication;
import vibe.http.server : HTTPServerSettings, listenHTTP;
import uim.react;

void main(string[] args)
{
  auto router = createReactDemoRouter();

  auto settings = new HTTPServerSettings;
  settings.port = 8080;
  settings.bindAddresses = ["127.0.0.1", "::1"];

  auto listener = listenHTTP(settings, router);
  runApplication(&args);
}
```

## License

Apache-2.0
