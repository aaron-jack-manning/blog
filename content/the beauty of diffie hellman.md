+++
{
    "preview": "Consider that you and a friend wish to communicate from a distance securely. Across the internet encryption algorithms are used to secure data that needs to be kept private such as passwords, banking details and text messages...",
    "date": "2021/12/4"
}
+++

## The beauty of Diffie-Hellman

Consider that you and a friend wish to communicate from a distance securely. Across the internet encryption algorithms are used to secure data that needs to be kept private such as passwords, banking details and text messages. These encryption algorithms (often) depend on a shared secret though. Let's first examine on a high level how these algorithms are used.

To send a message to your friend, you first need to encrypt it. This encryption is done with a specific algorithm and a specific encryption key, which turns your message into scrambled data that wouldn't make any sense to someone trying to intercept it. When your friend receives the message, they decrypt it using the same algorithm and the same key, which will turn it back into readable data. Often the analogy of locking the data away in a safe is used. If you have the key, you can lock data away or pull data out.

This method of encryption is called symmetric encryption, because both the sender and receiver use the same key. Here is where the problem is: how do you share the key in the first place? Before sharing keys, you do not have an encrypted channel to share data through, and anyone listening in could just steal the key and then unscramble all future messages.

One way to share such a key is called the Diffie-Hellman key exchange protocol, which I will describe here in such a way that it should make sense even if you have studied very little mathematics.

---

Let's first start with the ultimate goal. If you're not familiar with the relevant mathematics or computing theories, this might sound a little bit like magic, but I am going to describe a method that you and your friend could use to share a secret number, that you know, your friend knows, and no one else can find out, even if they listen to everything you say. You could yell everything to your friend across a room and no one in the room would be able to know your secret number at the end.

You start by selecting two numbers. I will explain where these numbers will come from later in the post, for now all you need to know is that we're picking one of them to be prime (the only other positive numbers that are factors of it are one and itself) and the other to be smaller than the first. We will call these the modulus and the base respectively.

Let's say you select <span class="math inline">$23$</span> and <span class="math inline">$7$</span>. You then yell out to your friend what the numbers are. You and your friend are each now going to think of a random number of your choice, which is preferably not too small. Let's say you think of the number <span class="math inline">$7$</span>.

You now take the base and raise it to the power of the selected number. This means we are going to multiply seven <span class="math inline">$5$</span>s together to ultimately get <span class="math inline">$78125$</span>. Now you just need to take this new number and find the remainder when dividing it by the modulus. In this case <span class="math inline">$78125$</span> divided by <span class="math inline">$23$</span> is equal to <span class="math inline">$3396$</span> with a remainder of <span class="math inline">$17$</span>. All of this is done privately without telling anyone. While you have been doing this your friend has been doing the exact same thing with their randomly chosen secret number. You can now share what you ended up with.

You yell out <span class="math inline">$17$</span> and your friend yells out <span class="math inline">$20$</span> back to you. Now with the new number as the starting point, you do the exact same thing as you did before but with this new number as your new base. Raise it to the power of your secret number of <span class="math inline">$7$</span>, and find the remainder when dividing by the modulus of <span class="math inline">$23$</span>. This gives a result of <span class="math inline">$21$</span>.

Believe it or not, even having chosen a completely different secret number, your friend now has the same secret number at the end, being <span class="math inline">$21$</span>.

---

So why does this give the same number? Let's for a moment ignore the step where we took the remainder by division. Under this simpler protocol, all that happened was you took the base, raised it to your secret number then gave it to your friend to raise it to their secret number. From their perspective, they did the same thing. The numbers are the same because *the order doesn't matter when taking exponents*. Raising a number to the power <span class="math inline">$3$</span> and then raising it to the power of <span class="math inline">$2$</span> is the same as raising it to the power of <span class="math inline">$6$</span>.

So what about that step where we divided by the modulus and took the remainder. Well it turns out that the exponentiation's order is independent even when we include that step. I'm not going to fully explain that in the interest of keeping this post accessible, but if you're interested in proving it for yourself, start by proving that it's true for multiplication.

---

The other cool thing about this method is that someone listening in wouldn't know what number you ended up with. Let's think about why that is. It comes down to one important fact. If I tell you I took <span class="math inline">$5$</span>, raised it to the power of a secret number, and then took the remainder of the result upon division by <span class="math inline">$23$</span>, how can you figure out what that number is? Without the division step, it's actually quite easy. If I told you I raised <span class="math inline">$2$</span> to the power of a number to get <span class="math inline">$8$</span>, it's not too hard to figure out that the number was <span class="math inline">$3$</span>. Many of you will recognise this as just calculating a logarithm. But when we take the remainder upon division by some other number, the result looks nothing like the numbers we started with, it could even be smaller than the number we started with. It turns out that the most effective way to solve this problem, is just an advanced version of trial and error. Now with numbers of the size that we chose in this example, it won't take long to guess it. However, in real world applications, very large numbers are chosen.

---

This leaves one last thing to explain. Where did those original numbers of <span class="math inline">$5$</span> and <span class="math inline">$23$</span> come from? There is one criterion I didn't mention at the time that is important, and that is that <span class="math inline">$5$</span> is what is called a primitive root modulo <span class="math inline">$23$</span>. What that means in general terms is that if you keep raising <span class="math inline">$5$</span> to different powers and taking the remainder upon division by <span class="math inline">$23$</span>, you get different results for all powers up to <span class="math inline">$22$</span>. If for example we chose <span class="math inline">$25$</span> as our modulus. Then every power of <span class="math inline">$5$</span> is divisible by <span class="math inline">$25$</span>, so we repeatedly get a remainder of <span class="math inline">$0$</span>, which we don't want. This additional criterion maximises the number of possible numbers we could get after we raise to our power and take the remainder.
