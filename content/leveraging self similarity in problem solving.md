+++
{
    "preview": "Certain problems in mathematics allow the leveraging of self similarity be reduced into far simpler problems. In this post I am going to explore one such problem...",
    "date": "2022/1/20"
}
+++

## Leveraging self similarity in problem solving

Certain problems in mathematics allow the leveraging of self similarity be reduced into far simpler problems. In this post I am going to explore one such problem

Solve the equation:

<span class="math display">
$$
    x^{x^{x^{x^{\dots}}}} = 2
$$
</span>

The key trick to solving this problem is noticing that because the exponentiation goes on to infinity, regardless of the chosen starting term, the expression is identical. For example, the expression shown in red below, is the same as the base expression, and is therefore equal to <span class="math inline">$2$</span>.

<span class="math display">
$$
    x^{\color{red}x^{x^{x^{\dots}}}} = 2
$$
</span>

It's important to note that just like in the first example of this section, this fact is only true because the number of terms is infinite.

We can use this fact to make a substitution of <span class="math inline">$2$</span> for the top part of the expression.

<span class="math display">
$$
    \begin{align*}
        x^{2} &= 2 \\
        x &= \sqrt{2}
    \end{align*}
$$        
</span>

That was a pretty quick way to solve what seemed to be a complicated problem. Let's try using our new superpower of solving problems of this type on another problem:

<span class="math display">
$$
    x^{x^{x^{x^{\dots}}}} = 4
$$
</span>

First we notice the self similarity and make a substitution, so we can then solve the equation more simply.

<span class="math display">
$$
    \begin{align*}x^{4} &= 4 \\
        x &= \sqrt[\leftroot{-2}\uproot{2}4]{4} \\
        &= \sqrt{2}
    \end{align*}
$$
</span>

Wait a minute, isn't that what we got for the first problem? Clearly something has gone wrong, it's impossible to take <span class="math inline">$\sqrt{2}$</span> to the power of itself, and then repeatedly take <span class="math inline">$\sqrt{2}$</span> to the power of that result, and somehow simultaneously get <span class="math inline">$2$</span> and <span class="math inline">$4$</span>. In fact, if you take any power of <span class="math inline">$2$</span> as the right hand side of the equation, you will end up with the same solution.

Since we reached a contradiction, we must have done something mathematically invalid along the way, so what could it be? There can't be an issue with our substitution because all we have done is just that, made a direct substitution. However, we have made an assumption in our work that we failed to verify. See if you can spot it before I give it away.

By making the substitution we have assumed that there exists a solution to the equation in the first place. That there is such a value of <span class="math inline">$x$</span> that when applying this repeated exponentiation equals the right hand side of the equation. However, if no such solution exists, then everything completed from that point onward is mathematically invalid.

This is where the real fun of this problem starts, trying to explore which values of <span class="math inline">$x$</span> will converge under this process of repeated exponentiation. When trying to explore and solve a problem like this, it can be illuminating to try and find a graphical way of representing the scenario. Since we are repeatedly applying the same function, a cobweb graph seems like the appropriate choice.

If you are not familiar with cobweb graphs, here is a simple example using a function of <span class="math inline">$f(x) = x^{\frac{3}{2}}$</span>.

<iframe src="https://www.desmos.com/calculator/kojvfuhsbg" width="100%"></iframe>

Here the curve at the top is <span class="math inline">$y = x^{\frac{3}{2}}$</span> and the bottom line is <span class="math inline">$y = x$</span>. This graph is designed to represent what happens when repeatedly applying a function to itself. In this case we start at <span class="math inline">$x = \frac{3}{2}$</span>, and then apply our function of <span class="math inline">$f(x) = x^{\frac{3}{2}}$</span> to get an output shown where the first vertical line segment intersects our function. We then visually show the process of applying this function again by taking that <span class="math inline">$y$</span> value and using it as the <span class="math inline">$x$</span> value of our function. To do this we draw another line segment that takes us back to <span class="math inline">$y = x$</span>, and repeat the process.

Let's use the same process for the function we are using in this problem of <span class="math inline">$f(x) = a^{x}$</span>, and the starting value of <span class="math inline">$a$</span>. In the case of the graph below, <span class="math inline">$a = \frac{3}{2}$</span> is used.

<iframe src="https://www.desmos.com/calculator/7xjn2qpcud" width="100%"></iframe>

In this case it is obvious to see that our repeated application of the function will cause it to go off to infinity. So what values of <span class="math inline">$a$</span> can we put in that will cause it to converge. Well why don't you try and figure it out for yourself by playing around with the above tool.

Notice how if you choose a small enough value for <span class="math inline">$a$</span>, the graphs intersect. When they intersect, the value of the repeated application of our function trends towards the point where the two graphs meet. So to figure out which values of <span class="math inline">$x$</span> converge, we just need to identify which values of <span class="math inline">$a$</span> give a solution to <span class="math inline">$a^{x} = x$</span>. So, let's try working with this expression to isolate <span class="math inline">$a$</span>.

<span class="math display">
$$
    \begin{align*}a^{x} &= x \\
        e^{\ln(a)x} &= x \\
        \ln(a)x &= \ln(x) \\
        a &= e^{\frac{\ln(x)}{x}}
    \end{align*}
$$
</span>

If we then plot this expression for <span class="math inline">$x$</span>, we can try and see what range of values of <span class="math inline">$a$</span> are valid.

<iframe src="https://www.desmos.com/calculator/2c5fmtq635" width="100%"></iframe>

To be expected, there is some maximum value that <span class="math inline">$a$</span> can be, which is the <span class="math inline">$y$</span> value at the turning point of our graph. So let's differentiate to find this key value.

<span class="math display">
$$
    \begin{align*}y &= e^{\frac{\ln(x)}{x}} \\
        \frac{dy}{dx} &= \frac{1 - \ln(x)}{x^{2}} \cdot e^{\frac{\ln(x)}{x}}
    \end{align*}
$$
</span>

Observe that because <span class="math inline">$e^{\frac{\ln(x)}{x}}$</span> can never equal zero, we just need to solve for when <span class="math inline">$1 - \ln(x) = 0$</span>, which yields a solution of <span class="math inline">$x = e$</span>. Substituting this back into our original expression gives <span class="math inline">$y = e^{\frac{1}{e}}$</span>, which is the maximum value of <span class="math inline">$a$</span> which can undergo the repeated exponentiation process and converge, a delightful result.

We can now use the fact that the value of <span class="math inline">$x$</span> which gave us that maximum of <span class="math inline">$a$</span> was <span class="math inline">$e$</span>, as this will be the maximum possible value that such a process of repeated exponentiation can converge to. Since our initial equation had a right hand side of <span class="math inline">$2$</span>, which is less than <span class="math inline">$e$</span>, but the later equation which yielded the same result had a right hand side of <span class="math inline">$4$</span>, which is greater than <span class="math inline">$e$</span>, we can conclude that the answer we got of <span class="math inline">$\sqrt{2}$</span> is only valid in the first case.

