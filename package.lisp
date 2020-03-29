;;;; package.lisp

(cl:in-package common-lisp-user)


(defpackage "https://github.com/g000001/srfi-3"
  (:use)
  (:export
   lset<=
   lset=
   lset-adjoin
   lset-union
   lset-union!
   lset-intersection
   lset-intersection!
   lset-difference
   lset-difference!
   lset-xor
   lset-xor!
   lset-diff+intersection
   lset-diff+intersection!
   adjoin
   adjoinq
   adjoinv
   union
   unionq
   unionv
   union!
   unionq!
   unionv!
   intersection
   intersectionq
   intersectionv
   intersection!
   intersectionq!
   intersectionv!
   list-difference
   list-differenceq
   list-differencev
   list-difference!
   list-differenceq!
   list-differencev!
   list-xor
   list-xorq
   list-xorv
   list-xor!
   list-xorq!
   list-xorv!
   diff+intersection
   diff+intersectionq
   diff+intersectionv
   diff+intersection!
   diff+intersectionq!
   diff+intersectionv!))


(defpackage "https://github.com/g000001/srfi-3#internals"
  (:use
   "https://github.com/g000001/srfi-3"
   cl
   fiveam)
  (:shadow loop let map member assoc)
  (:shadowing-import-from
   "https://github.com/g000001/srfi-1"
   filter
   filter!
   lset-diff+intersection
   lset-diff+intersection!
   partition
   partition!)
  (:shadowing-import-from
   "https://github.com/g000001/srfi-3"
   adjoin
   union
   intersection))


;;; *EOF*
