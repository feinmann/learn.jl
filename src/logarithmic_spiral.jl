using Plots

# From the inspiring blog post by John D. Cook
# https://www.johndcook.com/blog/2022/05/09/logarithmic-spiral/

ϕ = (1 + 5^0.5)/2
y₀ = 1/(2 + ϕ)
x₀ = (2ϕ + 1) * y₀
θ₀ = atan(-y₀, -x₀)
k = 2 * log(ϕ) / π
a = -x₀ / (exp(k * θ₀) * cos(θ₀))

t = range(-20, θ₀, length = 1000)

x(t) = x₀ + a * exp(k * t) * cos(t)
y(t) = y₀ + a * exp(k * t) * sin(t)

plot(x.(t), y.(t))