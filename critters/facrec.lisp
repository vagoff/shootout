(defun factorial (n)
  (if (= n 0)
      1
      (* n (factorial (- n 1))))
)

(defun main () (
  format t "Factorial: ~D"  (factorial 100)
))
