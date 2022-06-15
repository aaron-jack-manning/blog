+++
{
    "preview": "Polynomials, despite being quite rare in terms of modelling real world systems, are incredibly useful in computational Mathematics, error correction codes, and to be honest, can be just a fun toy for mathematicians to study...",
    "date": "2021/9/29"
}
+++

## A better approach to polynomial division

Polynomials, despite being quite rare in terms of modelling real world systems, are incredibly useful in computational Mathematics, error correction codes, and to be honest, can be just a fun toy for mathematicians to study. Unfortunately, as a high school topic, polynomials can be quite bland and boring. When first introduced, they are a type of expression that can show up in other problems, and as such it can be handy to know how to manipulate and work with them, including through long division. The goal here being to learn how to work with polynomials as quick as possible with a thorough understanding of how it works, to then move on to the interesting bits.

### The Standard Method

Here is a common example as to how one would do polynomial division the conventional way, in this case to divide <span class="math inline">$x^4 + 2x^3 + 3x + 2$</span> by <span class="math inline">$x^2 + 2x + 3$</span>.

First we write our divisor out the front of our polynomial that we wish to divide, with a vinculum over it.

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 + x^2 + 0x - 3}\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}
    \end{array}
$$
</span>

Now we ask ourselves, how many times does or polynomial go into our first term of <span class="math inline">$x^4$</span>? Well, uhhhh, <span class="math inline">$x^2$</span> times? This is what students are expected to say, and expected to write, but does this really make any sense? If you multiply <span class="math inline">$x^2$</span> by <span class="math inline">$x^2 + 2x + 3$</span> you don't get <span class="math inline">$x^4$</span> because you still have leftover terms, and this notion of a remainder is far less intuitive in the context of polynomials.

Many people choose to think of this as how many times does the first term of our divisor divide the first term of our polynomial, but can you see a clear reason why you would do that? We are trying to divide our whole divisor in, not just the first term. Let's just march on though in the way we're supposed to and see what happens.

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 +} x^2 \phantom{+ 0x - 3}\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}
    \end{array}
$$
</span>

Now we multiply <span class="math inline">$x^2$</span> by our divisor and are left with a polynomial we then subtract from our initial polynomial, completely ignoring the tail end of the terms. Why do we do this? Why can we ignore these terms for now and write them in later? Why do we write in specifically the number of terms that we do? These are all questions with answers, but answers that are not intuitive or obvious from the way we complete the operation. I am a firm believer that mathematical notation and process should be explanatory in and of itself as much as possible.

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 +} x^2 \phantom{+ 0x - 3}\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\kern-.2ex \\[-3pt]\underline{-x^4 - 2x^3 - 3x^2} \phantom{+ 3x - 2}
    \end{array}
$$
</span>

After completing the subtraction and writing down our remaining terms, we are left with the following:

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 +} x^2 \phantom{+ 0x - 3}\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\kern-.2ex \\[-3pt]\underline{-x^4 - 2x^3 - 3x^2} \phantom{+ 3x - 2} \\[-3pt]-3x^2 + 3x + 2
    \end{array}
$$
</span>

Which then allows us to repeat the process from before, asking how many times <span class="math inline">$x^2$</span> divides <span class="math inline">$-3x^2$</span>, and writing that up the top.

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 +} x^2 \phantom{+ 0x} - 3\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\kern-.2ex \\[-3pt]\underline{-x^4 - 2x^3 - 3x^2} \phantom{+ 3x - 2} \\[-3pt]-3x^2 + 3x + 2
    \end{array}
$$
</span>

We can then subtract <span class="math inline">$-3$</span> times our divisor and we are done.

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 +} x^2 \phantom{+ 0x} - 3\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\kern-.2ex \\[-3pt]\underline{-x^4 - 2x^3 - 3x^2} \phantom{+ 3x - 2} \\[-3pt]-3x^2 + 3x + 2\\[-3pt]\underline{3x^2 + 6x + 9}
    \end{array}
$$
</span>

<span class="math display">
$$
    \require{enclose}
    \begin{array}{rll}
        \phantom{x^4 + 2x^3 +} x^2 \phantom{+ 0x} - 3\\[-3pt]x^2 + 2x + 3\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\kern-.2ex \\[-3pt]\underline{-x^4 - 2x^3 - 3x^2} \phantom{+ 3x - 2} \\[-3pt]-3x^2 + 3x + 2\\[-3pt]\underline{3x^2 + 6x + 9}\\[-3pt]9x + 11
    \end{array}
$$
</span>

This leaves the divisor on the right, our polynomial that we started with under our vinculum, the quotient over the vinculum and the remainder at the bottom. Not only is it confusing to have the quotient written over the initial polynomial, but the whole process is a series of memorised steps that don't really make mathematical sense so that we can then memorise where each part of our expression is to ultimately write it in the form we want: <span class="math inline">$P(x) = D(x)Q(x) + R(x)$</span>.

<span class="math display">
$$
    (x^4 + 2x^3 + 3x + 2) = (x^2 - 3)(x^2 + 2x + 3) + (9x + 11)
$$
</span>

### A Better Approach

I now propose an alternate approach to polynomial division, which I will argue is simpler, easier to learn, more intuitive and works better within the problems that it is used. It will also provide us with the result in a nicer format and most importantly will rely on students existing intuition for how division works with numbers and how to manipulate algebraic expressions. However, we should first look at how the division algorithm works with integers, to show just how nicely the polynomial form will follow on from it.

Let's say we want to divide <span class="math inline">$45$</span> by <span class="math inline">$13$</span>. The division algorithm states that for any positive integers <span class="math inline">$a$</span> and <span class="math inline">$b$</span>, there exists a unique <span class="math inline">$q$</span> and <span class="math inline">$r$</span> with <span class="math inline">$0 \\leq r < b$</span> such that:

<span class="math display">
$$
    a = qb + r
$$
</span>

This is just that for any choice of <span class="math inline">$a$</span>, and a  <span class="math inline">$b$</span> that we wish to divide it by, we can find a unique quotient and remainder. So for our above example, the largest multiple of <span class="math inline">$13$</span> that is still lass than <span class="math inline">$45$</span> is <span class="math inline">$3$</span>, hence:

<span class="math display">
$$
    45 = 13 \cdot 3 + 6
$$
</span>

We will now complete a very similar process for polynomials, with some small differences. These differences however should clearly show what is happening as the division occurs and should make sense from start to finish with respect to the underlying mathematics.

We begin by writing out the polynomial we wish to divide on one side of an equation, and the divisor on the other, leaving space for other things we will write in. This is because ultimately we want our initial polynomial in terms of the divisor.

<span class="math display">
$$
    x^4 + 2x^3 + 3x + 2 = \phantom{x^2}(x^2 + 2x + 3) \phantom{-3x^2 + 3x + 2}
$$
</span>

Now the process of polynomial division is just about matching algebraic terms. In order for our right hand side to be equal to our left hand side, we must make our first term <span class="math inline">$x^4$</span>. To do this we multiply by <span class="math inline">$x^4$</span>.

<span class="math display">
$$
    x^4 + 2x^3 + 3x + 2 = x^2(x^2 + 2x + 3) \phantom{-3x^2 + 3x + 2}
$$
</span>

So we have matched the first term for when we expand our right hand side, but we need to make sure our expressions are equal, so we add and subtract lower degree terms to compensate. For example, when we expand our right hand side we will end up with a <span class="math inline">$2x^3$</span> term, which we already have on the left hand side. So good so far. The next term we will get will be <span class="math inline">$3x^2$</span>, but that's not on the left hand side so we have to subtract it to make sure our equation holds. Similarly, we will be missing the <span class="math inline">$3x + 2$</span>, so we will also add that to the end.

<span class="math display">
$$
    x^4 + 2x^3 + 3x + 2 = x^2(x^2 + 2x + 3) -3x^2 + 3x + 2
$$
</span>

Now we just repeat the exact same thing for the tail end of our terms. So we can for now ignore our first term of <span class="math inline">$x^2(x^2 + 2x + 3)$</span>, and just divide <span class="math inline">$-3x^2 + 3x + 2$</span> by our divisor. In this case, we need to multiply our quotient by <span class="math inline">$-3$</span> to match our leading term, and then we can add or subtract our extra terms so our expression is still equal.

<span class="math display">
$$
    x^4 + 2x^3 + 3x + 2 = x^2(x^2 + 2x + 3) -3(x^2 + 2x + 3) + 9x + 11
$$
</span>

Since the degree of our remaining expression is less than our divisor, we have nothing more to divide. So let's just factorise out divisor and we are done!

<span class="math display">
$$
    x^4 + 2x^3 + 3x + 2 = (x^2 + 2x + 3)(x^2 - 3) + 9x + 11
$$
</span>

Now, with no further work, just as a consequence of the process, we are left with the standard form of <span class="math inline">$P(x) = D(x)Q(x) + R(x)$</span>.

With a little bit of practice this process becomes easy, allowing your full working to look just like this:

<span class="math display">
$$
    \begin{align}
        x^4 + 2x^3 + 3x + 2 &= x^2(x^2 + 2x + 3) - 3x^2 + 3x + 2 \\&= x^2(x^2 + 2x + 3) - 3(x^2 + 2x + 3) + 9x + 11 \\&= (x^2 + 2x + 3)(x^2 - 3) + 9x + 11
    \end{align}
$$
</span>

Not only is this method easier to learn and intuitively understand for someone being introduced to the topic, it is also better suited to the cases where polynomial division is actually used. For example, consider the use of the Euclidean Algorithm to find the greatest common divisor of two polynomials. We will use the same example as before, meaning the first few steps are already done for us.

<span class="math display">
$$
    \begin{align}
        x^4 + 2x^3 + 3x + 2 &= x^2(x^2 + 2x + 3) - 3x^2 + 3x + 2 \\&= x^2(x^2 + 2x + 3) - 3(x^2 + 2x + 3) + 9x + 11 \\&= (x^2 + 2x + 3)(x^2 - 3) + 9x + 11 \\x^2 + 2x + 3 &= \frac{1}{9}x(9x + 11) + \frac{7}{9}x + 3 \\&= \frac{1}{9}x(9x + 11) + \frac{7}{81}(9x + 11) + \frac{166}{81} \\&= (9x + 11)\left(\frac{1}{9}x + \frac{7}{81}\right) + \frac{166}{81} \\9x + 1 &= \frac{166}{81}\left(\frac{729}{166}x + \frac{891}{166}\right)
    \end{align}
$$
</span>

Note how this process looks just like how it would be written for using the Euclidean Algorithm to find the greatest common denominator of two integers.

My ultimate goal in writing this post is to encourage readers to further consider how mathematical methods for computations influence one's understanding of the concept itself, and more importantly to realise that some methods are easy precisely because they're familiar, and that makes it hard to identify where they could be problematic for people learning them for the first time.
