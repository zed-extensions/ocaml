# Zed OCaml

An [OCaml](https://ocaml.org/) extension for [Zed](https://zed.dev).

This extension includes support for:

- OCaml (`.ml`) and OCaml Interface (`.mli`)
- OCaml MLX (`.mlx`)
- Reason (`.re` and `.rei`)
- Dune (`dune`, `dune-project` and `dune-workspace`)
- Menhir (`.mly`)
- OCamllex (`.mll`)
- Odoc (`.mld`)

# Language Server

The extension automatically detects how to start `ocamllsp` based on your project setup, using the following priority order:

1. **Dune Package Management** — If `dune` is in PATH and `dune pkg enabled` succeeds, starts the LSP via `dune tools exec ocamllsp`.
2. **opam** — If `opam` is in PATH, starts via `opam exec -- ocamllsp`. If a local switch (`_opam/`) is found in the project root, it is used automatically.
3. **Direct** — Falls back to running `ocamllsp` directly from PATH.

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
