(assert (equal? (reverse '(a b c)) '(c b a)))

; https://groups.csail.mit.edu/mac/ftpdir/scheme-7.4/doc-html/scheme_8.html
(assert (pair? '(a . b)))
(assert (pair? '(a b c)))

(assert (not (pair? '())))
(assert (not (pair? '#(a b))))

(assert (= (length '(a b c)) 3))
(assert (= (length '()) 0))

(assert (not (null? '(a b c))))
(assert (null? '()))

(assert (eq? (list-ref '(a b c d) 2) 'c))

; https://groups.csail.mit.edu/mac/ftpdir/scheme-7.4/doc-html/scheme_7.html

; TODO: add characters to reader
(assert (string=? (make-string 10 #\x) "xxxxxxxxxx"))

(assert (string? "Hi"))
(assert (not (string? 'Hi)))

(assert (= (string-length "") 0))
(assert (= (string-length "The length") 10))
(assert (string=? "PIE" "PIE"))
(assert (not (string=? "PIE" "pie")))

(assert (string=? (list->string (string->list "hello")) "hello"))

; https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Symbols.html
(assert (symbol? 'foo))
(assert (symbol? (car '(a b))))
(assert (not (symbol? "bar")))

(assert (string=? "FLYING-FISH" (symbol->string 'flying-fish)))

; https://groups.csail.mit.edu/mac/ftpdir/scheme-7.4/doc-html/scheme_9.html

(assert (equal? (vector-head #(1 2 3) 2) #(1 2)))


; https://groups.csail.mit.edu/mac/ftpdir/scheme-7.4/doc-html/scheme_13.html
(assert (= (apply + (list 3 4 5 6)) 18))

; Universl Time https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Universal-Time.html
(assert (integer? (get-universal-time)))

; https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Procedure-Operations.html#Procedure-Operations
(assert (procedure? (lambda (x) x)))

(assert (= (gcd 32 -36) 4))
(assert (= (gcd) 0))



