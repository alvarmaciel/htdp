;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercises) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (distance x y)
  ( sqrt (+ (sqr x) (sqr y))))

(define (csurface l)
  (sqr l))

(define (cvolume l)
  (* l (csurface l)))

(define (string-first s)
  (if (> (string-length s) 1)
      (string-ith s 0) s))

(define (string-last s)
  (if (> (string-length s) 1)
      (string-ith s (- (string-length s) 1 )) s))

;; Define ==>. The function consumes two Boolean values, call
;; them sunny and friday. Its answer is #true if sunny is false or friday is true.
;; Note Logicians call this Boolean operation implication, and they use the notation
;; sunny = > friday for this purpose.

(define (==> sunny friday)
  (if
   (or (not sunny) friday) #true
  #false))

;; Exercise 16. Define the function image-area, which counts the number of
;; pixels in a given image. See exercise 6 for ideas.
(define (image-area image)
  (* (image-width image) (image-height image)))

;; Exercise 17. Define the function image-classify, which consumes an
;; image and conditionally produces "tall" if the image is taller than wide, "wide"
;; if it is wider than tall, or "square" if its width and height are the same. See
;; exercise 8 for ideas.


(define (wide-or-tall image)
  (if (> (image-height image) (image-width image)) "tall"
      "wide"))

(define (image-classify image)
  (if (= (image-width image) (image-height image)) "square"
      (wide-or-tall image)))

;; Define the function string-join, which consumes two strings and appends them with "_" in between. See exercise 2 for ideas.
(define (string-join string_a string_b)
  (string-append string_a "_" string_b))

;;Exercise 19. Define the function string-insert, which consumes a string str plus a number i and inserts "_" at the ith position
;; of str. Assume i is a number between 0 and the length of the given string (inclusive).
;;See exercise 3 for ideas. Ponder how string-insert copes with "".

(define (string-insert str i)
  (string-append (substring str 0 i) "_" (substring str i)))

;;Exercise 20. Define the function string-delete, which consumes a string plus a number i and deletes the ith position from str.
;; Assume i is a number between 0 (inclusive) and the length of the given string (exclusive).
;;See exercise 4 for ideas. Can string-delete deal with empty strings?
(define (string-delete str i)
  (string-append (substring str 0 (- i 1)) (substring str i)))