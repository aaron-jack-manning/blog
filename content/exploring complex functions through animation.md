+++
{
    "preview": "It's undeniable that one of the hardest things about studying complex analysis early on is gaining a visual intuition for what complex valued functions with complex domains \"look like\", and how things like limits, derivatives, and integrals relate to such functions.",
    "date": "2022/3/17"
}
+++

## Exploring complex functions through animation

It's undeniable that one of the hardest things about studying complex analysis early on is gaining a visual intuition for what complex valued functions with complex domains "look like", and how things like limits, derivatives, and integrals relate to such functions. For this post, I have put together some animations to experiment with trying to provide a visual intuition for complex mappings, using the function <span class="math inline">$f(z) = z^3$</span> as an example.

This post is loosely inspired by the book \"Visual Complex Analysis\" by Tristan Needham.

When typically drawing a function, the input and output spaces would be drawn independently of each other, allowing easily for drawing a total of two dimensions in the input and output space, and reasonably allowing three dimensions. However, when trying to represent a function from two-dimensional space to two-dimensional space, such as a function of complex numbers, this becomes much trickier.

One of the most common ways of resolving this problem is by drawing a vector field. A vector field maps each input point to a vector and draws that vector with the tail at the point where the function is evaluated. By choosing to represent the complex number outputs as vectors, we can draw the function <span class="math inline">$f(z) = z^3$</span> as follows.

![vector field](complex-cubic-vector-field.png)

Notice the difference in colours between the different vectors. This is because if drawing the output vectors at their full length, it would be very hard to get any useful information due to the way they overlap. To remedy this problem, they are all drawn to the same size and colour is used to indicate magnitude, with the blue end of the colour spectrum showing shorter vectors and the red end showing longer vectors. This is quite a neat way of showing four dimensions across a two-dimensional plane, but it doesn't really give a clear understanding of what the function is doing.

Another way that a complex mapping can be represented is by showing what happens to a curve in the complex plane under the mapping. For analytic functions at least, it is generally possible to choose an appropriate curve to give a good idea as to how the function behaves off this curve. One thing that is lost in this kind of visualisation is specifically how the rate of change of the point on the path with respect to the parameter in the input space maps to the rate of change in the output space. This can be resolved through a bit of animation. Consider the animation below showing a point moving in a spiral in the input space on the left, and the cube of that point on the right-hand side.

<iframe src="https://www.youtube.com/embed/o757O7r0WdM" width="100%"></iframe>

This better shows how the modulus and arguments of the complex number changes with the right point rotating around the origin faster, whilst also moving away from it faster for larger values.

This visualisation does however have the disadvantage that it only shows what happens to a very specific subset of the plane.

So, for this next visualisation, instead of showing a point moving through the input and output space at the same time, we could animate how the path changes across one complex plane. The choice of that path will depend greatly on the function, here I have chosen to use a variety of radial lines and partial circles so that the way the angle and modulus of the complex number changes are independently obvious.

<iframe src="https://www.youtube.com/embed/e3wMnB4zymE" width="100%"></iframe>

Personally, I think this last visualisation works best. It clearly shows how the angle of the complex number is tripled, and how the modulus being cubed causes it to decrease for small values and increase for large values, depending on which side of one they sit on.

This also really helps in understanding why equations of the form <span class="math inline">$z^3 = a$</span> have <span class="math inline">$3$</span> solutions, as a full rotation of the complex plane overlaps itself three times.

If you're interested in how the animations in this post were created, take a look at the library that I wrote which I used to create them [here](https://github.com/aaron-jack-manning/mathil). After putting in the upfront time to developing an animation system, I plan on doing many more posts like this, so feedback on what kinds of things would be interesting is very welcome, since this post is a bit of a short proof of concept.
