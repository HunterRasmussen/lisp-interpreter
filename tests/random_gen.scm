
; check that we can load an interact with this file

(let ((data (read-path "random_gen.sexpr")))
    (display (length data))
    (display "records: ")
    (newline)
    (let ((record (car data)))
        (assert (eq? (assoc record 'index) 0)
        (assert (eq? (assoc record 'isActive) 'True)))
        (assert (eq? (assoc record 'age) 26))))
   