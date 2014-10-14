;;;; broadview-host-mush.asd
;;;;
;;;; Copyright (c) 2014 Gaelan D'costa

(asdf:defsystem #:broadview-host-mush
  :description "A MUSH based on my house"
  :author "Gaelan D'costa"
  :license "MIT"
  :serial t
  :pathname "src/"
  :components ((:file "package")
               (:file "broadview-host-mush")
               (:file "cli")))

(asdf:defsystem #:broadview-host-mush/tests
  :description "Tests for broadview-host-mush"
  :author "Gaelan D'costa"
  :license "MIT"
  :serial t
  :depends-on (:FiveAM :broadview-host-mush)
  :pathname "t/"
  :components ((:file "package")
               (:file "tests")))
