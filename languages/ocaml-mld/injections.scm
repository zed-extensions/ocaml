((code_block
  (code_content) @injection.content)
  (#set! injection.language "ocaml"))

((tagged_code_block
  language: (code_language) @injection.language
  content: (code_content) @injection.content))
