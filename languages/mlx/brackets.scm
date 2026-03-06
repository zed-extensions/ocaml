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

(jsx_element_opening
  "<" @open
  ">" @close)

(jsx_element_closing
  "</" @open
  ">" @close)

(jsx_element_self_closing
  "<" @open
  "/>" @close)

(parenthesized_expression
  "begin" @open
  "end" @close)

(structure
  "struct" @open
  "end" @close)

(signature
  "sig" @open
  "end" @close)

(object_expression
  "object" @open
  "end" @close)

(do_clause
  "do" @open
  "done" @close)

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
