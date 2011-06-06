;;;; srfi-3.asd

(cl:in-package :asdf)

(defsystem :srfi-3
  :serial t
  :components ((:file "package")
               (:file "utils")
               (:file "srfi-3")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-3))))
  (load-system :srfi-3)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-3-internal :srfi-3))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

