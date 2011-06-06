;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-3
  (:export :lset<=
           :lset=
           :lset-adjoin
           :lset-union
           :lset-union!
           :lset-intersection
           :lset-intersection!
           :lset-difference
           :lset-difference!
           :lset-xor
           :lset-xor!
           :lset-diff+intersection
           :lset-diff+intersection!
           :adjoin
           :adjoinq
           :adjoinv
           :union
           :unionq
           :unionv
           :union!
           :unionq!
           :unionv!
           :intersection
           :intersectionq
           :intersectionv
           :intersection!
           :intersectionq!
           :intersectionv!
           :list-difference
           :list-differenceq
           :list-differencev
           :list-difference!
           :list-differenceq!
           :list-differencev!
           :list-xor
           :list-xorq
           :list-xorv
           :list-xor!
           :list-xorq!
           :list-xorv!
           :diff+intersection
           :diff+intersectionq
           :diff+intersectionv
           :diff+intersection!
           :diff+intersectionq!
           :diff+intersectionv!))

(defpackage :srfi-3-internal
  (:use :srfi-3 :cl :fiveam)
  (:shadow :loop :let :map :member :assoc)
  (:shadowing-import-from :srfi-1 :filter
                          :filter!
                          :lset-diff+intersection
                          :lset-diff+intersection!
                          :partition
                          :partition!)
  (:shadowing-import-from :srfi-3
                          :adjoin
                          :union
                          :intersection))

