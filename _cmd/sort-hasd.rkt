#lang racket

(require odysseus)
(require tabtree/utils)

(define-namespace-anchor anchor)
(define ns-own (namespace-anchor->namespace anchor))

(define (sort-by-number a b)
  (let ((an (->number a))
        (bn (->number b)))
    (if (and an bn)
      (< an bn)
      #t)))

(tabtree-sort-and-print #:tabtree-file "../examples/HASD/hasd.tree" #:new-treefile  "../examples/HASD/hasd_new.tree" #:ns ns-own #:sort-f sort-by-number)
