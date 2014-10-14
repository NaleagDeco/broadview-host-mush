;;;; cli.lisp
;;;;
;;;; Copyright (c) 2014 Gaelan D'costa

(in-package #:broadview-host-mush-cli)
(defvar *quit-now* NIL)

(defun main ()
  (progn
    (intro)
    (repl)))

(defun intro ()
  (princ "Welcome to BROADVIEW HOST MUSH")
  (terpri)
  (terpri)
  (repl))

(defun repl ()
  (loop (if *quit-now*
            (return 0)
            (princ (eval (read))))))

(defun quit ()
  (setq *quit-now* T))
