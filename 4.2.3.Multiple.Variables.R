# 4.2.1 다변량 분석

# 4.2.1.1 상관 분석

divcnt <- function (n) sum(n %% 1:n == 0)
nums <- 1:100
divs <- sapply(nums, divcnt)
primes <- nums[divs == 2]
primes
length(primes)
