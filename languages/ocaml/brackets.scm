("(" @open
  ")" @close)

("[" @open
  "]" @close)

("[|" @open
  "|]" @close)

("{" @open
  "}" @close)

("\"" @open
  "\"" @close)

(parenthesized_expression
  "begin" @open
  "end" @close)

(structure
  "struct" @open
  "end" @close)

(signature
  "sig" @open
  "end" @close)

(if_expression
  (then_clause "then" @open)
  (else_clause "else" @close))

(let_expression
  (value_definition "let" @open)
  "in" @close)

(let_module_expression
  "let" @open
  "in" @close)

(let_open_expression
  "let" @open
  "in" @close)

(let_exception_expression
  "let" @open
  "in" @close)
