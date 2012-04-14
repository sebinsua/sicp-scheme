#! /usr/bin/env racket
#lang scheme

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-two-largest-squares x y z)
  (cond ((and (> x y) (> z x)) (sum-of-squares x z))
        ((and (> y x) (> z x)) (sum-of-squares y z))
        (else (sum-of-squares x y))))

(sum-of-two-largest-squares 15 9 7)
