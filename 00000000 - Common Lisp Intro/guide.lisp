;;;; 00000000 - Common Lisp Intro


; Semicolons create comments for the rest of the line


; Common Lisp is formatted as (<action> <list of args>).
; For example, to add 1 and 3, we can do:
(+ 1 3)


; Variables definitions are done with (defvar <identifier> <value>)
; Global variables typically are surrounded by asterisks in Common Lisp
(defvar *name* "Brian")


; We can then print using (format t <text> <list of values>)
;   - t refers to terminal, where we are printing to
;   - the text is in quotations and works a lot like printf in C/C++
;     this means that it can contain placeholders for values
; (terpri) prints an empty line. I'll be using it to split the output into sections
(format t "Hello ~a!~%" *name*)
(terpri)

; Placeholders:
;   - ~%: new line/line break
;   - ~d: integer
;   - ~f: float
;   - ~5f: 5 digits of float


; Conditionals can be done using (if <condition> <if true> <if false>) or (when <condition> <if true body>)
; From here on, body refers to one or more lines of code
(defvar *age* 17)
(if (>= *age* 18)
    (format t "~a can vote!~%" *name*)          ; if true
    (format t "~a can't vote.~%" *name*))       ; if false
(when (< *age* 18)
    (format t "~a can't vote!~%" *name*)          ; if true
    (format t "~a definitely can't vote!~%" *name*))  ; also if true
(terpri)


; You can then set variables using (setf <identifier> <value>)
(setf *age* 18)


; And define a function to repeat the age check using (defun <identifier> <parameters> <body>)
(defun check-age (name age)
    (if (>= age 18)
        (format t "~a can vote!~%" name)
        (format t "~a can't vote.~%" name)))


; We can then call it like any other action
(check-age *name* *age*)
(check-age "Tony" 99)
(terpri)


; You can chain statements in Common Lisp through
(defun check-age-b (name age)
    (if (>= age 18)
        (format t "~a can vote!~%" name)
        (if (<= age 6)
            (format t "~a is way too young to vote!~%" name)
            (format t "~a can't vote!~&" name))))
(check-age-b "Tony" 5)
(terpri)


; Or more commonly using (cond (<condition> <body>) (<condition> <body>) ...)
(defun check-age-c (name age)
    (cond
        ((>= age 18)
            (format t "~a can vote!~%" name))
        ((<= age 6)
            (format t "~a is way too young to vote!~%" name))
        (T
            (format t "~a can't vote.~%" name))))
(check-age-c "Tony" 5)
(terpri)


; Finally, loops can be done in a multitude of manners in Common Lisp
(loop for x from 1 to 5 do
      (format t "Counting: ~d~%" x))
; The two ranges can be from any number to any other number
(loop for x from 6 to 10 do
      (format t "Counting: ~d~%" x))
(terpri)


; To simply iterate a number of times (dotimes (<identifier> <count>) <body>) may be useful
(dotimes (x 3)
    (format t "Counting to 3!~%")
    (format t "All the way to 3!~%"))
