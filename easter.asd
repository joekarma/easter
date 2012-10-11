;;;; easter.asd

(asdf:defsystem #:easter
  :serial t
  :description "A very simple package for calculating what day easter falls on."
  :author "Joe Taylor <taylor@c0de.co>"
  :license "Public Domain"
  :components ((:file "package")
               (:file "easter"))
  :depends-on (:simple-date-time :iterate))

