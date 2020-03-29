;;;; srfi-3.asd

(cl:in-package :asdf)


(defsystem :srfi-3
  :version "20200330"
  :description "SRFI-3: List-Set Library"
  :long-description "SRFI-3: List-Set Library
https://srfi.schemers.org/srfi-3"
  :author "Olin Shivers"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (:fiveam :srfi-1)
  :components ((:file "package")
               (:file "utils")
               (:file "srfi-3")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-3))))
  (let ((name "https://github.com/g000001/srfi-3")
        (nickname :srfi-3))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


#|(defmethod perform ((o test-op) (c (eql (find-system :srfi-3))))
  (let ((*package*
         (find-package
          "https://github.com/g000001/srfi-3#internals")))
    (eval
     (read-from-string
      "
      (or (let ((result (do-test 128)))
            (cl:print result)
            (apply #'cl:every (lambda (x y z) (= x y z)) (cddr result)))
          (error \"test-op failed\") )"))))|#


;;; *EOF*
