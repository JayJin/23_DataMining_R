# R as a Calculator(revisited)

a <- 10
b <- 2
sqrt(a)

a + b
a - b
a * b
a / b
a ^ b


exp(b)
log10(a)
log2(b)
a %% (b+1) # modulus after division
round(1.3456) # round to nearest integer

# 반올림 소숫점 지정
round(1.3456, 1)
round(1.3456, 2)
round(1.3456, 3)

floor(1.6456) # round down to nest lowest integer
ceiling(1.3456) # round up to next largest integer

choose(a, b) # a combination (choose) b : a개 중 b개를 선택하는 갯수
choose(3, 2)
choose(4, 2)
choose(5, 2)

sign(a) # sign of a : 부호 리턴
sign(-10) # -1
sign(8)   # 1
