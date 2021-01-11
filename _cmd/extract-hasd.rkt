#lang racket

(require odysseus)
(require tabtree/utils)
(require json)

; (begin
;   (hash->hashtree
;     (json->hash
;       (read-file "../examples/HASD/nodes.json")))
;   #t)


(write-file "../examples/HASD/hasd.tree"
    (hashtree->string
      (hash->hashtree
        (json->hash
          (read-file "../examples/HASD/nodes.json")))
      #:exclude-keys '(importedAgeCorrected links nameEn)))

; (define tabtree-hash (hash
;                         (hash 'id 'a 'aa 10 'ab '(20 30 40)) (hash)
;                         (hash 'id 'b) (hash
;                                         (hash 'id 'ba 'baa 'arabidopsis_thaliana 'd "some description" 'bab 30)
;                                         (hash))
;                         (hash 'id 'c 'c 3) (hash)))
;
; (write-file "test.tree" (hashtree->string tabtree-hash))
