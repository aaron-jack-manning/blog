+++
{
    "preview": "For those unfamiliar, the William Lowell Putnam Mathematical Competition (often just called the Putnam competition) is an annual mathematics competition in the United States for undergraduate mathematics students...",
    "date": "2021/10/31"
}
+++

## Solving a hard problem by solving an easy one

For those unfamiliar, the William Lowell Putnam Mathematical Competition (often just called the Putnam competition) is an annual mathematics competition in the United States for undergraduate mathematics students. Each year's paper contains 12 questions, each worth 10 marks. In the history of the competition, a perfect score has only been achieved 5 times and the median mark is usually zero or one point. In this post I would like to look at question B1 from the 2009 Putnam paper, as an interesting case study for how to solve a hard problem by reducing it to a simpler problem. This being question B1, it is one of the easier questions from that year's paper, and therefore hopefully not too daunting for most readers. Here's the question:

Show that every positive rational number can be written as a quotient of products of factorials of (not necessarily distinct) primes. For example, <span class="math inline">$\frac{10}{9} = \frac{2! \cdot 5!}{3! \cdot 3! \cdot 3!}$</span>.

The method of simplifying a complex question can be very useful within proofs. This is because sometimes complex theorems can be obtained by reaching a simpler result which implies the required result.

The question is asking us to show that given a specific form of an expression we must comply with, there is a way of expressing every positive rational number. A question like this could be quite daunting, especially when you have no idea where to start. So let's try and simplify the question a bit.

Observe that every positive rational number is the quotient of two positive integers. Also observe that the expressions we are using are the *quotient* of products of factorials. Now due to the properties of division and multiplication, the order in which we complete these operations does not prohibit us from reaching an expression in the desired format, and therefore if we can find an expression for two given integers in the desired form, we can divide one by the other and obtain an expression for the rational number which is the first divided by the second. For example:

<span class="math display">
$$
    5 = \frac{5!}{2!2!} \text{\quad and \quad} 3 = \frac{3!}{2!} \text{\quad therefore \quad} \frac{5}{3} = \frac{5!}{2!2!} \div \frac{3!}{2!} = \frac{5!}{2!3!}
$$
</span>

Notice how by showing this implication we have allowed ourselves to solve an easier problem. By proving that every *positive integer* can be expressed as a quotient of products of factorials of primes, and using the simple result above, we can prove the required result.

Let's try our luck at simplifying the problem further by considering the constituent parts of a positive integer. Remember we are allowed to multiply and divide our prime factorials only, but using the fundamental theorem of arithmetic, we know that each positive integer can be expressed uniquely as a product of primes. For example:

<span class="math display">
$$
    15 = 5 \times 3 = \frac{5!}{2!2!} \times \frac{3!}{2!} = \frac{5!3!}{2!2!2!}
$$
</span>

So by using the fact that every integer can be expressed as a product of primes, we only need to prove that every *prime number* can be expressed as a quotient of products of factorials of primes to prove the main theorem we need to reach.

Backtracking through our steps, we have shown the following implications:

<span class="math display">
$$
    \begin{align*}
        &\text{Every positive rational number can be written as a quotient of products of factorials of primes.} \\
        \impliedby &\text{Every positive integer can be written as a quotient of products of factorials of primes.} \\
        \impliedby &\text{Every prime number can be written as a quotient of products of factorials of primes.}
    \end{align*}
$$
</span>

Now let's have a crack at proving our much simpler and easier result. It might help to think of a few examples produced by trial and error.

<span class="math display">
$$
    2 = 2!
$$
</span>

<span class="math display">
$$
    3 = \frac{3!}{2!}
$$
</span>

<span class="math display">
$$
    5 = \frac{5!}{3!2!2!}
$$
</span>

At this point, notice how with each of these, because we are producing prime numbers, we can't reach the number by multiplying smaller factors, instead we have to start with a larger number and divide through by the extra factors. One way to guarantee we're going to have a factor of the result we need, is to start with its factorial.

<span class="math display">
$$
    7 = \frac{7!}{3!5!}
$$
</span>

You might be able to see a bit of a pattern. If you want the challenge of proving this yourself, try figuring out the next one yourself before reading on, the process of doing them will likely help you come up with a more general method.

Here is a more in depth explanation of the most recent example here. Let's start with our <span class="math inline">$11!$</span> on the top, and try and divide through by <span class="math inline">$10!$</span> to get the result we want.

<span class="math display">
$$
    \begin{align*}
        11 &= \frac{11!}{10!} \\
        &= \frac{11!}{10 \times 9 \times 8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2}
    \end{align*}
$$
</span>

Notice that we can deal with the tail end and the bulk of these numbers by taking them to be the factorial of the largest prime less than 11, being 7.

<span class="math display">
$$
    11 = \frac{11!}{10 \times 9 \times 8 \times 7!}
$$
</span>

Also note that that was done without loss of generality. It doesn't matter what prime we have, we can deal with all of the numbers less than or equal to the prime below it easily. So all we need to now deal with is the composite numbers between the desired result and the prime below it. Since we're working with primes, lets try factorising them into a product of prime factors.

<span class="math display">
$$
    11 = \frac{11!}{(5 \times 2) \times (3 \times 3) \times (2 \times 2 \times 2)\times 7!}
$$
</span>

Hang on a minute, haven't we already figured all of these out though? All of our remaining numbers are numbers that we can already express as a quotient of products of factorials of primes, so we can just make a substitution, and then simplify.

<span class="math display">
$$
    \begin{align*}
        11 &= \frac{11!}{(\frac{5!}{3!2!2!} \times 2!) \times (\frac{3!}{2!} \times \frac{3!}{2!}) \times (2! \times 2! \times 2!)\times 7!} \\
        &= \frac{11!}{7!5!3!}
    \end{align*}
$$
</span>

As you can probably see, this will get out of hand very quickly, but luckily enough, we can stop here and generalise what we did for <span class="math inline">$11$</span>.

Consider the set of prime numbers in an increasing order and index to identify them <span class="math inline">$p_{0} = 2, p_{1} = 3, p_{3} = 5$</span>, etc. Consider the following expression of <span class="math inline">$p_{i}$</span> for <span class="math inline">$i > 0$</span>:

<span class="math display">
$$
    p_{i} = \frac{p!}{(p - 1)(p - 2)\dots(p_{i - 1} + 1)p_{i - 1}!}
$$
</span>

Now consider that the terms <span class="math inline">$(p - 1)(p - 2)\dots(p_{i - 1} + 1)$</span> can be expressed as a product of primes less than the prime we are trying to express <span class="math inline">$p_{i}$</span>.

Each of these primes can in turn be expressed in a similar way, with respect to primes less than themselves.

So starting with a base case of <span class="math inline">$2$</span> where <span class="math inline">$2 = 2!$</span>, we can produce each prime in turn using the above method, and hence every prime number can be expressed as a quotient of products of factorials of primes.

Due to the fundamental theorem of arithmetic, we can express any positive integer as a product of primes, and hence the above result implies the same is true of any positive integers by simply taking the product of the expressions for each prime.

Since every positive rational number can be expressed as the quotient of two positive integers, we can apply the above result to generalise that every positive rational number can be expressed as the quotient of products of factorials of primes, the desired result.
