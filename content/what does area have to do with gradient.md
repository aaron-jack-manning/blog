+++
{
    "preview": "The first fundamental theorem of calculus makes an interesting claim about the relationship between the area under a curve, and the anti-derivative of that curve's corresponding function...",
    "date": "2021/11/12"
}
+++

## What does area have to do with gradient?

The first fundamental theorem of calculus makes an interesting claim about the relationship between the area under a curve, and the anti-derivative of that curve's corresponding function. This is a relationship that is easy to take for granted. Often students are simply taught how to find an anti-derivative, and then told the fact that the difference between the value of that anti-derivative at two points gives the signed area under the initial curve. This is expressed as:

<span class="math display">
$$
    \int_{a}^{b} f(x) dx = F(b) - F(a)
$$
</span>

I want to explore why this is true on an intuitive level, as opposed to presenting a rigorous proof that new calculus students would learn to regurgitate. To begin, let's consider the area under the function <span class="math inline">$\sin(x)$</span> on the interval <span class="math inline">$[0, \pi]$</span>. On the plot below I have also included the anti-derivative of <span class="math inline">$\sin(x)$</span> being <span class="math inline">$-\cos(x)$</span>. Our goal here is to understand why the area shaded in red, <span class="math inline">$\int_{0}^{\pi} \sin(x)$</span>, is equal to the difference in height between the two purple points, namely <span class="math inline">$-\cos(\pi) - -\cos(0) = 2\$</span>

![ftoc1](ftoc1.jpg)

There are a few ways we can approach trying to find the area. One such approach is to work backwards from the average value of the function. Consider a transformation of our shaded area into a rectangle where the width is the same, but the height is equal to the average value of the function.

![ftoc2](ftoc2.jpg)

The width of this rectangle is known, but then to calculate the area we'd need to know the average value of <span class="math inline">$\sin(x)$</span> across that interval. To figure this out, let's use the known relationship to the anti-derivative, since we know that's ultimately where we need to end up. Since <span class="math inline">$\sin(x)$</span> is the gradient function of <span class="math inline">$-\cos(x)$</span>, the average value of <span class="math inline">$\sin(x)$</span> is equal to the average gradient of <span class="math inline">$-\cos(x)$</span>. That average gradient across the interval is equal to the gradient of the secant across that domain, which is the difference in <span class="math inline">$y$</span> divided by the difference in <span class="math inline">$x$</span> of our purple endpoints, namely <span class="math inline">$\frac{2}{\pi}$</span>.

![ftoc3](ftoc3.jpg)

When we multiply this average value of the function by the width of the interval we are examining, we get the area. Remembering that our average value was the difference in height of the anti-derivative divided by the width of the interval, we are just left with the difference in the anti-derivative, namely <span class="math inline">$\frac{2}{\pi} \times \pi = 2$</span>, because the width of the interval we are examining is divided through.
