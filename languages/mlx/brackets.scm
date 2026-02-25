("(" @open ")" @close)
("[" @open "]" @close)
("[|" @open "|]" @close)
("{" @open "}" @close)
("\"" @open "\"" @close)

(jsx_element_opening "<" @open ">" @close)
(jsx_element_closing "</" @open ">" @close)
(jsx_element_self_closing "<" @open "/>" @close)
