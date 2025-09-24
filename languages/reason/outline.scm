; let bindings
(value_definition
  "let" @context
  (let_binding
    pattern: (value_name) @name)) @item

; exception Foo
(exception_definition
  "exception" @context
  (constructor_declaration
    (constructor_name) @name)) @item

; module M = ...
(module_definition
  "module" @context
  (module_binding
    name: (module_name) @name)) @item

; module type T = ...
(module_type_definition
  "module" @context
  "type"  @context
  name: (_) @name) @item

; type t = ...
(type_definition
  "type" @context
  (type_binding
    name: (_) @name)) @item

; external foo : ...
(external
  "external" @context
  (value_name) @name) @item
