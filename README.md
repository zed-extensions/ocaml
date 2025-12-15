# Zed OCaml

An [OCaml](https://ocaml.org/) extension for [Zed](https://zed.dev).

# Configuration

OCamllsp can be configured via Zed `settings.json`.
For instance, all inlay hints can be enabled using the following:
```json
  "lsp": {
    "ocamllsp": {
      "settings": {
        "inlayHints": {
          "hintFunctionParams": true,
          "hintPatternVariables": true,
          "hintLetBindings": true
        }
      }
    }
  }
  ```

The configuration options available are documented [here](https://github.com/ocaml/ocaml-lsp/blob/master/ocaml-lsp-server/docs/ocamllsp/config.md).

## Development

To develop this extension, see the [Developing Extensions](https://zed.dev/docs/extensions/developing-extensions) section of the Zed docs.
