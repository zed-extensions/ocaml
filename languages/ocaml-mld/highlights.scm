; Headings
(heading
  "{" @punctuation.bracket
  level: (heading_level) @number
  "}" @punctuation.bracket)

(heading
  label: (heading_label) @label)

(heading_content) @title

; Code blocks
(code_block
  "{[" @punctuation.bracket
  "]}" @punctuation.bracket)

(tagged_code_block
  "{" @punctuation.bracket
  "@" @operator
  language: (code_language) @label
  "[" @punctuation.bracket
  "]}" @punctuation.bracket)

(code_content) @text.literal

; Verbatim blocks
(verbatim_block
  "{v" @punctuation.bracket
  "v}" @punctuation.bracket)

(verbatim_content) @text.literal

; Inline code
(inline_code
  "[" @punctuation.bracket
  "]" @punctuation.bracket)

(inline_code_content) @text.literal

; Styles
(bold
  "{b" @punctuation.bracket
  "}" @punctuation.bracket)

(bold
  content: (_)+ @emphasis.strong)

(italic
  "{i" @punctuation.bracket
  "}" @punctuation.bracket)

(italic
  content: (_)+ @emphasis)

(emph
  "{e" @punctuation.bracket
  "}" @punctuation.bracket)

(emph
  content: (_)+ @emphasis)

(superscript
  "{^" @punctuation.bracket
  "}" @punctuation.bracket)

(subscript
  "{_" @punctuation.bracket
  "}" @punctuation.bracket)

(center
  "{C" @punctuation.bracket
  "}" @punctuation.bracket)

(left
  "{L" @punctuation.bracket
  "}" @punctuation.bracket)

(right
  "{R" @punctuation.bracket
  "}" @punctuation.bracket)

; References and links
(ref
  "{" @punctuation.bracket
  "!" @operator
  id: (ref_id) @link_uri
  "}" @punctuation.bracket)

(ref_with_text
  "!" @operator
  id: (ref_id) @link_uri)

(ref_with_text
  "{" @punctuation.bracket
  "}" @punctuation.bracket)

(ref_with_text
  text: (_)+ @link_text)

(link
  ":" @operator
  url: (link_url) @link_uri)

(link
  "{" @punctuation.bracket
  "}" @punctuation.bracket)

; Lists
(ul_bullet) @punctuation.list_marker
(ol_number) @punctuation.list_marker

(tagged_ul
  "{ul" @keyword
  "}" @keyword)

(tagged_ol
  "{ol" @keyword
  "}" @keyword)

(list_item
  "{" @punctuation.bracket
  (list_dash) @punctuation.list_marker
  "}" @punctuation.bracket)

(list_item
  "{li" @keyword
  "}" @keyword)

; Math and targets
(math_block
  "{math" @keyword
  "}" @keyword)

(math_inline
  "{m" @keyword
  "}" @keyword)

(math_content) @text.literal

(target_specific
  "{%" @keyword
  "%}" @keyword)

(target_specific
  target: (target_name) @label
  ":" @operator)

(target_content) @text.literal

; Directives
(modules_directive
  "{!modules:" @keyword
  "}" @keyword)

(module_name) @type
(indexlist_directive) @keyword

; Media
(media_simple
  "}" @punctuation.bracket)

(media_simple
  [
    "{image:"
    "{image!"
    "{video:"
    "{video!"
    "{audio:"
    "{audio!"
  ] @punctuation.bracket)

(media_simple
  source: (media_source) @link_uri)

(media_with_text
  "}" @punctuation.bracket)

(media_with_text
  [
    "{{image:"
    "{{image!"
    "{{video:"
    "{{video!"
    "{{audio:"
    "{{audio!"
  ] @punctuation.bracket)

(media_with_text
  source: (media_source) @link_uri)

(media_with_text
  text: (_)+ @link_text)

; Tags
(author_tag
  "@author" @keyword)

(author_tag
  value: (tag_text) @string)

(since_tag
  "@since" @keyword)

(since_tag
  value: (tag_text) @string)

(version_tag
  "@version" @keyword)

(version_tag
  value: (tag_text) @string)

(deprecated_tag
  "@deprecated" @keyword)

(return_tag
  ["@return" "@returns"] @keyword)

(param_tag
  "@param" @keyword)

(param_tag
  name: (param_name) @variable.parameter)

(raise_tag
  ["@raise" "@raises"] @keyword)

(raise_tag
  name: (exception_name) @type)

(before_tag
  "@before" @keyword)

(before_tag
  version: (word) @string)

(see_tag
  "@see" @keyword)

(see_tag
  ref: (see_ref) @link_uri)

(hint_tag) @keyword

; Escapes
(escape_sequence) @string.escape
