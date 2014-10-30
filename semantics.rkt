#lang racket
 
(require rackunit)                ;; for unit testing
(provide (all-defined-out))
 
 
;; Our state contains two pieces.
(define-struct state (data ptr)
  #:mutable)
 
;; Creates a new state, with a byte array of 30000 zeros, and
;; the pointer at index 0.
(define (new-state)
  (make-state (make-vector 30000 0)
              0))
 
;; increment the data pointer
(define (increment-ptr a-state)
  (set-state-ptr! a-state (add1 (state-ptr a-state))))
 
;; decrement the data pointer
(define (decrement-ptr a-state)
  (set-state-ptr! a-state (sub1 (state-ptr a-state))))
 
;; increment the byte at the data pointer
(define (increment-byte a-state)
  (define v (state-data a-state))
  (define i (state-ptr a-state))
  (vector-set! v i (add1 (vector-ref v i))))
 
;; decrement the byte at the data pointer
(define (decrement-byte a-state)
  (define v (state-data a-state))
  (define i (state-ptr a-state))
  (vector-set! v i (sub1 (vector-ref v i))))
 
;; print the byte at the data pointer
(define (write-byte-to-stdout a-state)
  (define v (state-data a-state))
  (define i (state-ptr a-state))
  (write-byte (vector-ref v i) (current-output-port)))
 
;; read a byte from stdin into the data pointer
(define (read-byte-from-stdin a-state)
  (define v (state-data a-state))
  (define i (state-ptr a-state))
  (vector-set! v i (read-byte (current-input-port))))
 
 
;; we know how to do loops!
(define-syntax-rule (loop a-state body ...)
  (local [(define (loop)
            (unless (= (vector-ref (state-data a-state) (state-ptr a-state))
                        0)
              body ...
              (loop)))]
    (loop)))