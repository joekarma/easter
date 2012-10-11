;;;; easter.lisp

(in-package #:easter)

(defun easter (year)
  (let* ((a (mod year 19))
         (b (/ year 100))
         (c (mod year 100))
         (d (/ b 4))
         (e (mod b 4))
         (f (/ (+ b 8) 25))
         (g (/ (- b (+ f 1)) 3))
         (h (mod (- (+ (* 19 a) b 15) d g) 30))
         (i (/ c 4))
         (k (mod c 4))
         (l (mod (- (+ 32
                       (* 2 e)
                       (* 2 i))
                    h
                    k)
                 7))
         (m (/ (+ a
                  (* 11 h)
                  (* 22 l))
               451))
         (n (- (+ h l 114)
               (* 7 m))))
    (sunday-after (dt:make-date year
                                (floor (/ n 31))
                                (+ (floor (mod n 31))
                                   1)))))

(defun good-friday (year)
  (friday-before (easter year)))

(defun easter-monday (year)
  (monday-after (easter year)))

(defun sunday-after (d)
  (iter (until (= (dt:day-of-week-of d) 0))
        (dt:day+ d 1))
  d)

(defun monday-after (d)
  (iter (until (= (dt:day-of-week-of d) 1))
        (dt:day+ d 1))
  d)

(defun friday-before (d)
  (iter (until (= (dt:day-of-week-of d) 5))
        (dt:day+ d -1))
  d)
