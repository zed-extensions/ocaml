("(" @open ")" @close)
("[" @open "]" @close)
("[|" @open "|]" @close)
("{" @open "}" @close)
("\"" @open "\"" @close)

(jsx_element_opening "<" @open ">" @close)
(jsx_element_closing "</" @open ">" @close)
(jsx_element_self_closing "<" @open "/>" @close)

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