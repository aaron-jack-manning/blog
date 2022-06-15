+++
{
    "preview": "There are few problem solving challenges more satisfying than a nice integral. Integration is fundamentally built upon differentiation, as an attempt to reverse a known and algorithmic process...",
    "date": "2021/10/17"
}
+++

## An elegant solution to an ugly integral

> Differentiation is mechanics, integration is art.

There are few problem solving challenges more satisfying than a nice integral. Integration is fundamentally built upon differentiation, as an attempt to reverse a known and algorithmic process. However, by the nature of that algorithm, not only are there functions which do not have an elementary derivative, there are plenty of integration challenges that can only be solved through creative thinking and pattern matching and it is my belief that the mathematics that is the most enjoyable and beautiful is that which cannot be done by a series of steps or an algorithm, but rather requires genuine insight.

I would like to explore a problem from the 2006 MIT integration Bee.

<span class="math display">
$$
    \int \sin(101x)\sin^{99}(x) \quad dx
$$
</span>

Now before you read on, I would encourage you to take the challenge for yourself. High school level calculus is sufficient to solve this problem, but that certainly doesn't mean it will be that level of difficulty. **Spoilers follow.**

The first thing to notice is how close our coefficient of <span class="math inline">$x$</span> inside the first <span class="math inline">$\sin$</span> is to the power of the second. Any attempt to solve this problem by conventional means with powers of trigonometric functions is going to get out of hand very quickly. An integral of this kind requires a bit of a creative trick. In fact, I will show a solution to this problem that can be written neatly and clearly with 3 lines of working.

Let's start by thinking through this problem as we would any integral by asking ourselves, what kind of expression can we differentiate to get this? One thing we can try is to get a coefficient of <span class="math inline">$100$</span>, since <span class="math inline">$101$</span> is very close to that already, and differentiating a power of <span class="math inline">$100$</span> will leave a power of <span class="math inline">$99$</span>. One way we can do that is use the trigonometric angle sum formulas, identifying that <span class="math inline">$\sin(101x) = \sin(100x + x)$</span>. Applying the corresponding identity leaves us with:

<span class="math display">
$$
    \int (\sin(100x)\cos(x) + \cos(100x)\sin(x))\sin^{99}(x) \quad dx
$$
</span>

Just viewing the term on the right hand side, because we have <span class="math inline">$\sin(x)$</span>, distributing the <span class="math inline">$\sin^{99}(x)$</span> will give us a power of <span class="math inline">$100$</span> on one side and a power of 99 on the other. Some readers may be able to see where this is going...

<span class="math display">
$$
    \int \sin(100x)\cos(x)\sin^{99}(x) + \cos(100x)\sin^{100}(x) \quad dx
$$
</span>

Do you see the solution yet? If you read on without trying this problem it's not too late to still try and finish it yourself!

Maybe re-arranging the terms and putting some brackets in will make it a little more obvious?

<span class="math display">
$$
    \int (\cos(x)\sin^{99}(x))\sin(100x) + \cos(100x)\sin^{100}(x) \quad dx
$$
</span>

The key aspect to solving the integral from here is identifying that the derivative of <span class="math inline">$\sin^{100}(x)$</span> in the right hand term is a scalar multiple of <span class="math inline">$\cos(x)\sin^{99}(x)$</span>, and that the derivative of <span class="math inline">$\sin(100x)$</span> is the same scalar multiple of <span class="math inline">$\cos(100x)$</span> in the left hand term. So multiplying by this value:

<span class="math display">
$$
    \frac{1}{100} \int (100\cos(x)\sin^{99}(x))\sin(100x) + (100\cos(100x))\sin^{100}(x) \quad dx
$$
</span>

Gives us an integral of the form:

<span class="math display">
$$
    \int \frac{du}{dx}v + \frac{dv}{dx}u \quad dx
$$
</span>

With <span class="math inline">$u = \sin^{100}(x)$</span> and <span class="math inline">$v = \sin(100x)$</span>.

Hence, the solution to our integral is:

<span class="math display">
$$
    \frac{1}{100} \sin(100x) \sin^{100}(x) + C
$$
</span>

A truly elegant result!

