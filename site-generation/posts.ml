open General
open Attributes open Css open Nodes open CssConversions open View

open BlogPost

let leveraging_self_similarity_in_problem_solving =
    let open String in
    {
        title = "Leveraging self similarity in problem solving";
        api_name = "leveraging-self-similarity-in-problem-solving";
        date = {
            date = 20;
            month = January;
            year = 2022;
        };
        preview = "Certain problems in mathematics allow the leveraging of self similarity be reduced into far simpler problems. In this post I am going to explore one such problem...";
        content = [
            Paragraph "Certain problems in mathematics allow the leveraging of self similarity be reduced into far simpler problems. In this post I am going to explore one such problem.";
            Paragraph "Solve the equation:";
            Display_maths "\\[x^{x^{x^{x^{\\dots}}}} = 2\\]";
            Paragraph (String.concat ["The key trick to solving this problem is noticing that because the exponentiation goes on to infinity, regardless of the chosen starting term, the expression is identical. For example, the expression shown in red below, is the same as the base expression, and is therefore equal to "; inline_maths "\\(2\\)"; "."]);
            Display_maths "\\[x^{\\color{red}x^{x^{x^{\\dots}}}} = 2\\]";
            Paragraph "It's important to note that just like in the first example of this section, this fact is only true because the number of terms is infinite.";
            Paragraph (String.concat ["We can use this fact to make a substitution of "; inline_maths "\\(2\\)"; " for the top part of the expression."]);
            Display_maths "\\begin{align*}x^{2} &= 2 \\\\ x &= \\sqrt{2}\\end{align*}";
            Paragraph "That was a pretty quick way to solve what seemed to be a complicated problem. Let's try using our new superpower of solving problems of this type on another problem:";
            Display_maths "\\[x^{x^{x^{x^{\\dots}}}} = 4\\]";
            Paragraph "First we notice the self similarity and make a substitution, so we can then solve the equation more simply.";
            Display_maths "\\begin{align*}x^{4} &= 4 \\\\ x &= \\sqrt[\\leftroot{-2}\\uproot{2}4]{4} \\\\ &= \\sqrt{2} \\end{align*}";
            Paragraph ("Wait a minute, isn't that what we got for the first problem? Clearly something has gone wrong, it's impossible to take " + inline_maths "\\(\\sqrt{2}\\)" + " to the power of itself, and then repeatedly take " + inline_maths "\\(\\sqrt{2}\\)" + " to the power of that result, and somehow simultaneously get " + inline_maths "\\(2\\)" + " and " + inline_maths "\\(4\\)" + ". In fact, if you take any power of " + inline_maths "\\(2\\)" + " as the right hand side of the equation, you will end up with the same solution.");
            Paragraph "Since we reached a contradiction, we must have done something mathematically invalid along the way, so what could it be? There can't be an issue with our substitution because all we have done is just that, made a direct substitution. However, we have made an assumption in our work that we failed to verify. See if you can spot it before I give it away.";
            Paragraph ("By making the substitution we have assumed that there exists a solution to the equation in the first place. That there is such a value of " + inline_maths "\\(x\\)" + " that when applying this repeated exponentiation equals the right hand side of the equation. However, if no such solution exists, then everything completed from that point onward is mathematically invalid.");
            Paragraph ("This is where the real fun of this problem starts, trying to explore which values of " + inline_maths "\\(x\\)" + " will converge under this process of repeated exponentiation. When trying to explore and solve a problem like this, it can be illuminating to try and find a graphical way of representing the scenario. Since we are repeatedly applying the same function, a cobweb graph seems like the appropriate choice.");
            Paragraph ("If you are not familiar with cobweb graphs, here is a simple example using a function of " + inline_maths "\\(f(x) = x^{\\frac{3}{2}}\\)" + ".");
            IFrame "https://www.desmos.com/calculator/kojvfuhsbg";
            Paragraph ("Here the curve at the top is " + inline_maths "\\(y = x^{\\frac{3}{2}}\\)" + " and the bottom line is " + inline_maths "\\(y = x\\)" + ". This graph is designed to represent what happens when repeatedly applying a function to itself. In this case we start at " + inline_maths "\\(x = \\frac{3}{2}\\)" + ", and then apply our function of " + inline_maths "\\(f(x) = x^{\\frac{3}{2}}\\)" + " to get an output shown where the first vertical line segment intersects our function. We then visually show the process of applying this function again by taking that " + inline_maths "\\(y\\)" + " value and using it as the " + inline_maths "\\(x\\)" + " value of our function. To do this we draw another line segment that takes us back to " + inline_maths "\\(y = x\\)" + ", and repeat the process.");
            Paragraph ("Let's use the same process for the function we are using in this problem of " + inline_maths "\\(f(x) = a^{x}\\)" + ", and the starting value of " + inline_maths "\\(a\\)" + ". In the case of the graph below, " + inline_maths "\\(a = \\frac{3}{2}\\)" + " is used.");
            IFrame "https://www.desmos.com/calculator/7xjn2qpcud";
            Paragraph ("In this case it is obvious to see that our repeated application of the function will cause it to go off to infinity. So what values of " + inline_maths "\\(a\\)" + " can we put in that will cause it to converge. Well why don't you try and figure it out for yourself by playing around with the above tool.");
            Paragraph ("Notice how if you choose a small enough value for " + inline_maths "\\(a\\)" + ", the graphs intersect. When they intersect, the value of the repeated application of our function trends towards the point where the two graphs meet. So to figure out which values of " + inline_maths "\\(x\\)" + " converge, we just need to identify which values of " + inline_maths "\\(a\\)" + " give a solution to " + inline_maths "\\(a^{x} = x\\)" + ". So, let's try working with this expression to isolate " + inline_maths "\\(a\\)" + ".");
            Display_maths "\\begin{align*}a^{x} &= x \\\\ e^{\\ln(a)x} &= x \\\\ \\ln(a)x &= \\ln(x) \\\\ a &= e^{\\frac{\\ln(x)}{x}}\\end{align*}";
            Paragraph ("If we then plot this expression for " + inline_maths "\\(x\\)" + ", we can try and see what range of values of " + inline_maths "\\(a\\)" + " are valid.");
            IFrame "https://www.desmos.com/calculator/2c5fmtq635";
            Paragraph ("To be expected, there is some maximum value that " + inline_maths "\\(a\\)" + " can be, which is the " + inline_maths "\\(y\\)" + " value at the turning point of our graph. So let's differentiate to find this key value.");
            Display_maths "\\begin{align*}y &= e^{\\frac{\\ln(x)}{x}} \\\\ \\frac{dy}{dx} &= \\frac{1 - \\ln(x)}{x^{2}} \\cdot e^{\\frac{\\ln(x)}{x}}\\end{align*}";
            Paragraph ("Observe that because " + inline_maths "\\(e^{\\frac{\\ln(x)}{x}}\\)" + " can never equal zero, we just need to solve for when " + inline_maths "\\(1 - \\ln(x) = 0\\)" + ", which yields a solution of " + inline_maths "\\(x = e\\)" + ". Substituting this back into our original expression gives " + inline_maths "\\(y = e^{\\frac{1}{e}}\\)" + ", which is the maximum value of " + inline_maths "\\(a\\)" + " which can undergo the repeated exponentiation process and converge, a delightful result.");
            Paragraph ("We can now use the fact that the value of " + inline_maths "\\(x\\)" + " which gave us that maximum of " + inline_maths "\\(a\\)" + " was " + inline_maths "\\(e\\)" + ", as this will be the maximum possible value that such a process of repeated exponentiation can converge to. Since our initial equation had a right hand side of " + inline_maths "\\(2\\)" + ", which is less than " + inline_maths "\\(e\\)" + ", but the later equation which yielded the same result had a right hand side of " + inline_maths "\\(4\\)" + ", which is greater than " + inline_maths "\\(e\\)" + ", we can conclude that the answer we got of " + inline_maths "\\(\\sqrt{2}\\)" + " is only valid in the first case.");
        ];
    }

let the_beauty_of_diffie_hellman =
    let open String in
    {
        title = "The beauty of Diffie-Hellman";
        api_name = "the-beauty-of-diffie-hellman";
        date = {
            date = 4;
            month = December;
            year = 2021;
        };
        preview = "Consider that you and a friend wish to communicate from a distance securely. Across the internet encryption algorithms are used to secure data that needs to be kept private such as passwords, banking details and text messages...";
        content = [
            Paragraph "Consider that you and a friend wish to communicate from a distance securely. Across the internet encryption algorithms are used to secure data that needs to be kept private such as passwords, banking details and text messages. These encryption algorithms (often) depend on a shared secret though. Let's first examine on a high level how these algorithms are used.";
            Paragraph "To send a message to your friend, you first need to encrypt it. This encryption is done with a specific algorithm and a specific encryption key, which turns your message into scrambled data that wouldn't make any sense to someone trying to intercept it. When your friend receives the message, they decrypt it using the same algorithm and the same key, which will turn it back into readable data. Often the analogy of locking the data away in a safe is used. If you have the key, you can lock data away or pull data out.";
            Paragraph "This method of encryption is called symmetric encryption, because both the sender and receiver use the same key. Here is where the problem is: how do you share the key in the first place? Before sharing keys, you do not have an encrypted channel to share data through, and anyone listening in could just steal the key and then unscramble all future messages.";
            Paragraph "One way to share such a key is called the Diffie-Hellman key exchange protocol, which I will describe here in such a way that it should make sense even if you have studied very little mathematics.";
            Divider;
            Paragraph "Let's first start with the ultimate goal. If you're not familiar with the relevant mathematics or computing theories, this might sound a little bit like magic, but I am going to describe a method that you and your friend could use to share a secret number, that you know, your friend knows, and no one else can find out, even if they listen to everything you say. You could yell everything to your friend across a room and no one in the room would be able to know your secret number at the end.";
            Paragraph "You start by selecting two numbers. I will explain where these numbers will come from later in the post, for now all you need to know is that we're picking one of them to be prime (the only other positive numbers that are factors of it are one and itself) and the other to be smaller than the first. We will call these the modulus and the base respectively.";
            Paragraph ("Let's say you select " + inline_maths "\\(23\\)" + " and " + inline_maths "\\(7\\)" + ". You then yell out to your friend what the numbers are. You and your friend are each now going to think of a random number of your choice, which is preferably not too small. Let's say you think of the number " + inline_maths "\\(7\\)" + ".");
            Paragraph ("You now take the base and raise it to the power of the selected number. This means we are going to multiply seven " + inline_maths "\\(5\\)" + "s together to ultimately get " + inline_maths "\\(78125\\)" + ". Now you just need to take this new number and find the remainder when dividing it by the modulus. In this case " + inline_maths "\\(78125\\)" + " divided by " + inline_maths "\\(23\\)" + " is equal to " + inline_maths "\\(3396\\)" + " with a remainder of " + inline_maths "\\(17\\)" + ". All of this is done privately without telling anyone. While you have been doing this your friend has been doing the exact same thing with their randomly chosen secret number. You can now share what you ended up with.");
            Paragraph (String.concat ["You yell out "; inline_maths "\\(17\\)"; " and your friend yells out "; inline_maths "\\(20\\)"; " back to you. Now with the new number as the starting point, you do the exact same thing as you did before but with this new number as your new base. Raise it to the power of your secret number of "; inline_maths "\\(7\\)"; ", and find the remainder when dividing by the modulus of "; inline_maths "\\(23\\)"; ". This gives a result of "; inline_maths "\\(21\\)"; "."]);
            Paragraph ("Believe it or not, even having chosen a completely different secret number, your friend now has the same secret number at the end, being " + inline_maths "\\(21\\)" + ".");
            Divider;
            Paragraph ("So why does this give the same number? Let's for a moment ignore the step where we took the remainder by division. Under this simpler protocol, all that happened was you took the base, raised it to your secret number then gave it to your friend to raise it to their secret number. From their perspective, they did the same thing. The numbers are the same because " + italics "the order doesn't matter when taking exponents" + ". Raising a number to the power " + inline_maths "\\(3\\)" + " and then raising it to the power of " + inline_maths "\\(2\\)" + " is the same as raising it to the power of " + inline_maths "\\(6\\)" + ".");
            Paragraph "So what about that step where we divided by the modulus and took the remainder. Well it turns out that the exponentiation's order is independent even when we include that step. I'm not going to fully explain that in the interest of keeping this post accessible, but if you're interested in providing it for yourself, start by proving that it's true for multiplication.";
            Divider;
            Paragraph ("The other cool thing about this method is that someone listening in wouldn't know what number you ended up with. Let's think about why that is. It comes down to one important fact. If I tell you I took " + inline_maths "\\(5\\)" + ", raised it to the power of a secret number, and then took the remainder of the result upon division by " + inline_maths "\\(23\\)" + ", how can you figure out what that number is? Without the division step, it's actually quite easy. If I told you I raised " + inline_maths "\\(2\\)" + " to the power of a number to get " + inline_maths "\\(8\\)" + ", it's not too hard to figure out that the number was " + inline_maths "\\(3\\)" + ". Many of you will recognise this as just calculating a logarithm. But when we take the remainder upon division by some other number, the result looks nothing like the numbers we started with, it could even be smaller than the number we started with. It turns out that the most effective way to solve this problem, is just an advanced version of trial and error. Now with numbers of the size that we chose in this example, it won't take long to guess it. However, in real world applications, very large numbers are chosen.");
            Divider;
            Paragraph ("This leaves one last thing to explain. Where did those original numbers of " + inline_maths "\\(5\\)" + " and " + inline_maths "\\(23\\)" + " come from? There is one criterion I didn't mention at the time that is important, and that is that " + inline_maths "\\(5\\)" + " is what is called a primitive root modulo " + inline_maths "\\(23\\)" + ". What that means in general terms is that if you keep raising " + inline_maths "\\(5\\)" + " to different powers and taking the remainder upon division by " + inline_maths "\\(23\\)" + ", you get different results for all powers up to " + inline_maths "\\(22\\)" + ". If for example we chose " + inline_maths "\\(25\\)" + " as our modulus. Then every power of " + inline_maths "\\(5\\)" + " is divisible by " + inline_maths "\\(25\\)" + ", so we repeatedly get a remainder of " + inline_maths "\\(0\\)" + ", which we don't want. This additional criterion maximises the number of possible numbers we could get after we raise to our power and take the remainder.");
        ];
    }

let what_does_area_have_to_do_with_gradient =
    let open String in
    {
        title = "What does area have to do with gradient?";
        api_name = "what-does-area-have-to-do-with-gradient";
        date = {
            date = 12;
            month = November;
            year = 2021;
        };
        preview = "The first fundamental theorem of calculus makes an interesting claim about the relationship between the area under a curve, and the anti-derivative of that curve's corresponding function...";
        content = [
            Paragraph "The first fundamental theorem of calculus makes an interesting claim about the relationship between the area under a curve, and the anti-derivative of that curve's corresponding function. This is a relationship that is easy to take for granted. Often students are simply taught how to find an anti-derivative, and then told the fact that the difference between the value of that anti-derivative at two points gives the signed area under the initial curve. This is expressed as:";
            Display_maths "\\[\\int_{a}^{b} f(x) dx = F(b) - F(a)\\]";
            Paragraph ("I want to explore why this is true on an intuitive level, as opposed to presenting a rigorous proof that new calculus students would learn to regurgitate. To begin, let's consider the area under the function " + (inline_maths "\\(\\sin(x)\\)") + " on the interval " + (inline_maths "\\([0, \\pi]\\)") + ". On the plot below I have also included the anti-derivative of " + inline_maths "\\(\\sin(x)\\)" + " being " + (inline_maths "\\(-\\cos(x)\\)") + ". Our goal here is to understand why the area shaded in red, " + (inline_maths "\\(\\int_{0}^{\\pi} \\sin(x)\\)") + ", is equal to the difference in height between the two red points, " + (inline_maths "\\(-\\cos(\\pi) - -\\cos(0) = 2\\)"));
            Image "ftoc1.jpg";
            (* IFrame "https://www.desmos.com/calculator/epprqxdhur"; *)
            Paragraph "There are a few ways we can approach trying to find the area. One such approach is to work backwards from the average value of the function. Consider a transformation of our shaded area into a rectangle where the width is the same, but the height is equal to the average value of the function.";
            Image "ftoc2.jpg";
            (* IFrame "https://www.desmos.com/calculator/c9poivd99d"; *)
            Paragraph ("The width of this rectangle is known, but then to calculate the area we'd need to know the average value of " + (inline_maths "\\(\\sin(x)\\)") + " across that interval. To figure this out, let's use the known relationship to the anti-derivative, since we know that's ultimately where we need to end up. Since " + (inline_maths "\\(\\sin(x)\\)") + " is the gradient function of " + (inline_maths "\\(-\\cos(x)\\)") + ", the average value of " + (inline_maths "\\(\\sin(x)\\)") + " is equal to the average gradient of " + (inline_maths "\\(-\\cos(x)\\)") + ". That average gradient across the interval is equal to the gradient of the secant across that domain, which is the difference in " + (inline_maths "\\(y\\)") + " divided by the difference in " + (inline_maths "\\(x\\)") + " of our red endpoints.");
            Image "ftoc3.jpg";
            (* IFrame "https://www.desmos.com/calculator/cffzhaqzie"; *)
            Paragraph ("When we multiply this average value by the width of the interval to get the area, we are simply left with the difference in " + (inline_maths "\\(y\\)") + " of our two endpoints, which is the anti-derivative evaluated at the endpoints.");
        ];
    }

let solving_a_hard_problem_by_solving_an_easy_one =
    let open String in
    {
        title = "Solving a hard problem by solving an easy one";
        api_name = "solving-a-hard-problem-by-solving-an-easy-one";
        date = {
            date = 31;
            month = October;
            year = 2021;
        };
        preview = "For those unfamiliar, the William Lowell Putnam Mathematical Competition (often just called the Putnam competition) is an annual mathematics competition in the United States for undergraduate mathematics students...";
        content = [
            Paragraph "For those unfamiliar, the William Lowell Putnam Mathematical Competition (often just called the Putnam competition) is an annual mathematics competition in the United States for undergraduate mathematics students. Each year's paper contains 12 questions, each worth 10 marks. In the history of the competition, a perfect score has only been achieved 5 times and the median mark is usually zero or one point. In this post I would like to look at question B1 from the 2009 Putnam paper, as an interesting case study for how to solve a hard problem by reducing it to a simpler problem. This being question B1, it is one of the easier questions from that year's paper, and therefore hopefully not too daunting for most readers. Here's the question:";
            Paragraph ("Show that every positive rational number can be written as a quotient of products of factorials of (not necessarily distinct) primes. For example, " + (inline_maths "\\(\\frac{10}{9} = \\frac{2! \\cdot 5!}{3! \\cdot 3! \\cdot 3!}\\)") + ".");
            Paragraph "The method of simplifying a complex question can be very useful within proofs. This is because sometimes complex theorems can be obtained by reaching a simpler result which implies the required result.";
            Paragraph "The question is asking us to show that given a specific form of an expression we must comply with, there is a way of expressing every positive rational number. A question like this could be quite daunting, especially when you have no idea where to start. So let's try and simplify the question a bit.";
            Paragraph ("Observe that every positive rational number is the quotient of two positive integers. Also observe that the expressions we are using are the " + italics "quotient" + " of products of factorials. Now due to the properties of division and multiplication, the order in which we complete these operations does not prohibit us from reaching an expression in the desired format, and therefore if we can find an expression for two given integers in the desired form, we can divide one by the other and obtain an expression for the rational number which is the first divided by the second. For example:");
            Display_maths "\\[5 = \\frac{5!}{2!2!} \\text{\\quad and \\quad} 3 = \\frac{3!}{2!} \\text{\\quad therefore \\quad} \\frac{5}{3} = \\frac{5!}{2!2!} \\div \\frac{3!}{2!} = \\frac{5!}{2!3!}\\]";
            Paragraph ("Notice how by showing this implication we have allowed ourselves to solve an easier problem. By proving that every " + italics "positive integer" + " can be expressed as a quotient of products of factorials of primes, and using the simple result above, we can prove the required result.");
            Paragraph "Let's try our luck at simplifying the problem further by considering the constituent parts of a positive integer. Remember we are allowed to multiply and divide our prime factorials only, but using the fundamental theorem of arithmetic, we know that each positive integer can be expressed uniquely as a product of primes. For example:";
            Display_maths "\\[15 = 5 \\times 3 = \\frac{5!}{2!2!} \\times \\frac{3!}{2!} = \\frac{5!3!}{2!2!2!}\\]";
            Paragraph ("So by using the fact that every integer can be expressed as a product of primes, we only need to prove that every " + italics "prime number" + " can be expressed as a quotient of products of factorials of primes to prove the main theorem we need to reach.");
            Paragraph "Backtracking through our steps, we have shown the following implications:";
            Display_maths "\\begin{align*}&\\text{Every positive rational number can be written as a quotient of products of factorials of primes.} \\\\ \\impliedby &\\text{Every positive integer can be written as a quotient of products of factorials of primes.} \\\\ \\impliedby &\\text{Every prime number can be written as a quotient of products of factorials of primes.}\\end{align*}";
            Paragraph "Now let's have a crack at proving our much simpler and easier result. It might help to think of a few examples produced by trial and error.";
            Display_maths "\\[2 = 2!\\]";
            Display_maths "\\[3 = \\frac{3!}{2!}\\]";
            Display_maths "\\[5 = \\frac{5!}{3!2!2!}\\]";
            Paragraph "At this point, notice how with each of these, because we are producing prime numbers, we can't reach the number by multiplying smaller factors, instead we have to start with a larger number and divide through by the extra factors. One way to guarantee we're going to have a factor of the result we need, is to start with its factorial.";
            Display_maths "\\[7 = \\frac{7!}{3!5!}\\]";
            Paragraph "You might be able to see a bit of a pattern. If you want the challenge of proving this yourself, try figuring out the next one yourself before reading on, the process of doing them will likely help you come up with a more general method.";
            Paragraph ("Here is a more in depth explanation of the most recent example here. Let's start with our " + (inline_maths "\\(11!\\)") + " on the top, and try and divide through by " + (inline_maths "\\(10!\\)") + " to get the result we want.");
            Display_maths "\\begin{align*}11 &= \\frac{11!}{10!} \\\\ &= \\frac{11!}{10 \\times 9 \\times 8 \\times 7 \\times 6 \\times 5 \\times 4 \\times 3 \\times 2}\\end{align*}";
            Paragraph "Notice that we can deal with the tail end and the bulk of these numbers by taking them to be the factorial of the largest prime less than 11, being 7.";
            Display_maths "\\begin{align*}11 &= \\frac{11!}{10 \\times 9 \\times 8 \\times 7!}\\end{align*}";
            Paragraph "Also note that that was done without loss of generality. It doesn't matter what prime we have, we can deal with all of the numbers less than or equal to the prime below it easily. So all we need to now deal with is the composite numbers between the desired result and the prime below it. Since we're working with primes, lets try factorising them into a product of prime factors.";
            Display_maths "\\begin{align*}11 &= \\frac{11!}{(5 \\times 2) \\times (3 \\times 3) \\times (2 \\times 2 \\times 2)\\times 7!}\\end{align*}";
            Paragraph "Hang on a minute, haven't we already figured all of these out though? All of our remaining numbers are numbers that we can already express as a quotient of products of factorials of primes, so we can just make a substitution, and then simplify.";
            Display_maths "\\begin{align*}11 &= \\frac{11!}{(\\frac{5!}{3!2!2!} \\times 2!) \\times (\\frac{3!}{2!} \\times \\frac{3!}{2!}) \\times (2! \\times 2! \\times 2!)\\times 7!} \\\\ &= \\frac{11!}{7!5!3!}\\end{align*}";
            Paragraph ("As you can probably see, this will get out of hand very quickly, but luckily enough, we can stop here and generalise what we did for " + inline_maths "\\(11\\)" + ".");
            Paragraph ("Consider the set of prime numbers in an increasing order and index to identify them " + (inline_maths "\\(p_{0} = 2, p_{1} = 3, p_{3} = 5\\)") + ", etc. Consider the following expression of " + (inline_maths "\\(p_{i}\\)") + " for " + (inline_maths "\\(i > 0\\)") + ":");
            Display_maths "\\[p_{i} = \\frac{p!}{(p - 1)(p - 2)\\dots(p_{i - 1} + 1)p_{i - 1}!}\\]";
            Paragraph ("Now consider that the terms " + (inline_maths "\\((p - 1)(p - 2)\\dots(p_{i - 1} + 1)\\)") + " can be expressed as a product of primes less than the prime we are trying to express " + (inline_maths "\\(p_{i}\\)") + ".");
            Paragraph "Each of these primes can in turn be expressed in a similar way, with respect to primes less than themselves.";
            Paragraph ("So starting with a base case of " + (inline_maths "\\(2\\)") + " where " + (inline_maths "\\(2 = 2!\\)") + ", we can produce each prime in turn using the above method, and hence every prime number can be expressed as a quotient of products of factorials of primes.");
            Paragraph "Due to the fundamental theorem of arithmetic, we can express any positive integer as a product of primes, and hence the above result implies the same is true of any positive integers by simply taking the product of the expressions for each prime.";
            Paragraph "Since every positive rational number can be expressed as the quotient of two positive integers, we can apply the above result to generalise that every positive rational number can be expressed as the quotient of products of factorials of primes, the desired result.";
        ];
    }

let an_elegant_solution_to_an_ugly_integral =
    let open String in
    {
        title = "An elegant solution to an ugly integral";
        api_name = "an-elegant-solution-to-an-ugly-integral";
        date = {
            date = 17;
            month = October;
            year = 2021;
        };
        preview = "There are few problem solving challenges more satisfying than a nice integral. Integration is fundamentally built upon differentiation, as an attempt to reverse a known and algorithmic process...";
        content = [
            Blockquote "Differentiation is mechanics, integration is art.";
            Paragraph "There are few problem solving challenges more satisfying than a nice integral. Integration is fundamentally built upon differentiation, as an attempt to reverse a known and algorithmic process. However, by the nature of that algorithm, not only are there functions which do not have an elementary derivative, there are plenty of integration challenges that can only be solved through creative thinking and pattern matching and it is my belief that the mathematics that is the most enjoyable and beautiful is that which cannot be done by a series of steps or an algorithm, but rather requires genuine insight.";
            Paragraph "I would like to explore a problem from the 2006 MIT integration Bee.";
            Display_maths "\\[\\int \\sin(101x)\\sin^{99}(x) \\quad dx\\]";
            Paragraph ("Now before you read on, I would encourage you to take the challenge for yourself. High school level calculus is sufficient to solve this problem, but that certainly doesn't mean it will be that level of difficulty. " + bold "Spoilers follow.");
            Paragraph ("The first thing to notice is how close our coefficient of " + inline_maths "\\(x\\)" + " inside the first " + inline_maths "\\(\\sin\\)" + " is to the power of the second. Any attempt to solve this problem by conventional means with powers of trigonometric functions is going to get out of hand very quickly. An integral of this kind requires a bit of a creative trick. In fact, I will show a solution to this problem that can be written neatly and clearly with 3 lines of working.");
            Paragraph ("Let's start by thinking through this problem as we would any integral by asking ourselves, what kind of expression can we differentiate to get this? One thing we can try is to get a coefficient of " + inline_maths "\\(100\\)" + ", since " + inline_maths "\\(101\\)" + " is very close to that already, and differentiating a power of " + inline_maths "\\(100\\)" + " will leave a power of " + inline_maths "\\(99\\)" + ". One way we can do that is use the trigonometric angle sum formulas, identifying that " + inline_maths "\\(\\sin(101x) = \\sin(100x + x)\\)" + ". Applying the corresponding identity leaves us with:");
            Display_maths "\\[\\int (\\sin(100x)\\cos(x) + \\cos(100x)\\sin(x))\\sin^{99}(x) \\quad dx\\]";
            Paragraph ("Just viewing the term on the right hand side, because we have " + inline_maths "\\(\\sin(x)\\)" + ", distributing the " + inline_maths "\\(\\sin^{99}(x)\\)" + " will give us a power of " + inline_maths "\\(100\\)" + " on one side and a power of 99 on the other. Some readers may be able to see where this is going...");
            Display_maths "\\[\\int \\sin(100x)\\cos(x)\\sin^{99}(x) + \\cos(100x)\\sin^{100}(x) \\quad dx\\]";
            Paragraph "Do you see the solution yet? If you read on without trying this problem it's not too late to still try and finish it yourself!";
            Paragraph "Maybe re-arranging the terms and putting some brackets in will make it a little more obvious?";
            Display_maths "\\[\\int (\\cos(x)\\sin^{99}(x))\\sin(100x) + \\cos(100x)\\sin^{100}(x) \\quad dx\\]";
            Paragraph ("The key aspect to solving the integral from here is identifying that the derivative of " + inline_maths "\\(\\sin^{100}(x)\\)" + " in the right hand term is a scalar multiple of " + inline_maths "\\(\\cos(x)\\sin^{99}(x)\\)" + ", and that the derivative of " + inline_maths "\\(\\sin(100x)\\)" + " is the same scalar multiple of " + inline_maths "\\(\\cos(100x)\\)" + " in the left hand term. So multiplying by this value:");
            Display_maths "\\[\\frac{1}{100} \\int (100\\cos(x)\\sin^{99}(x))\\sin(100x) + (100\\cos(100x))\\sin^{100}(x) \\quad dx\\]";
            Paragraph "Gives us an integral of the form:";
            Display_maths "\\[\\int \\frac{du}{dx}v + \\frac{dv}{dx}u \\quad dx\\]";
            Paragraph ("With " + inline_maths "\\(u = \\sin^{100}(x)\\)" + " and " + inline_maths "\\(v = \\sin(100x)\\)" + ".");
            Paragraph "Hence, the solution to our integral is:";
            Display_maths "\\[\\frac{1}{100} \\sin(100x) \\sin^{100}(x) + C\\]";
            Paragraph "A truly elegant result!";
        ];
    }

let a_better_approach_to_polynomial_division =
    let open String in
    {
        title = "A better approach to polynomial division";
        api_name = "a-better-approach-to-polynomial-division";
        date = {
            date = 29;
            month = September;
            year = 2021;
        };
        preview = "Polynomials, despite being quite rare in terms of modelling real world systems, are incredibly useful in computational Mathematics, error correction codes, and to be honest, can be just a fun toy for mathematicians to study...";
        content = [
            Paragraph "Polynomials, despite being quite rare in terms of modelling real world systems, are incredibly useful in computational Mathematics, error correction codes, and to be honest, can be just a fun toy for mathematicians to study. Unfortunately, as a high school topic, polynomials can be quite bland and boring. When first introduced, they are a type of expression that can show up in other problems, and as such it can be handy to know how to manipulate and work with them, including through long division. The goal here being to learn how to work with polynomials as quick as possible with a thorough understanding of how it works, to then move on to the interesting bits.";
            Subtitle "The Standard Method";
            Paragraph ("Here is a common example as to how one would do polynomial division the conventional way, in this case to divide " + inline_maths "\\(x^4 + 2x^3 + 3x + 2\\)" + " by " + inline_maths "\\(x^2 + 2x + 3\\)" + ".");
            Paragraph "First we write our divisor out the front of our polynomial that we wish to divide, with a vinculum over it.";
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 + x^2 + 0x - 3}\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\end{array}$$";
            Paragraph ("Now we ask ourselves, how many times does or polynomial go into our first term of \\(x^4\\)? Well, uhhhh, " + inline_maths "\\(x^2\\)" + " times? This is what students are expected to say, and expected to write, but does this really make any sense? If you multiply " + inline_maths "\\(x^2\\)" + " by " + inline_maths "\\(x^2 + 2x + 3\\)" + " you don't get " + inline_maths "\\(x^4\\)" + " because you still have leftover terms, and this notion of a remainder is far less intuitive in the context of polynomials.");
            Paragraph "Many people choose to think of this as how many times does the first term of our divisor divide the first term of our polynomial, but can you see a clear reason why you would do that? We are trying to divide our whole divisor in, not just the first term. Let's just march on though in the way we're supposed to and see what happens.";
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 +} x^2 \\phantom{+ 0x - 3}\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\end{array}$$";
            Paragraph ("Now we multiply " + inline_maths "\\(x^2\\)" + " by our divisor and are left with a polynomial we then subtract from our initial polynomial, completely ignoring the tail end of the terms. Why do we do this? Why can we ignore these terms for now and write them in later? Why do we write in specifically the number of terms that we do? These are all questions with answers, but answers that are not intuitive or obvious from the way we complete the operation. I am a firm believer that mathematical notation and process should be explanatory in and of itself as much as possible.");
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 +} x^2 \\phantom{+ 0x - 3}\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\kern-.2ex \\\\[-3pt]\\underline{-x^4 - 2x^3 - 3x^2} \\phantom{+ 3x - 2}\\end{array}$$";
            Paragraph "After completing the subtraction and writing down our remaining terms, we are left with the following:";
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 +} x^2 \\phantom{+ 0x - 3}\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\kern-.2ex \\\\[-3pt]\\underline{-x^4 - 2x^3 - 3x^2} \\phantom{+ 3x - 2} \\\\[-3pt]-3x^2 + 3x + 2\\end{array}$$";
            Paragraph ("Which then allows us to repeat the process from before, asking how many times " + inline_maths "\\(x^2\\)" + " divides " + inline_maths "\\(-3x^2\\)" + ", and writing that up the top.");
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 +} x^2 \\phantom{+ 0x} - 3\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\kern-.2ex \\\\[-3pt]\\underline{-x^4 - 2x^3 - 3x^2} \\phantom{+ 3x - 2} \\\\[-3pt]-3x^2 + 3x + 2\\end{array}$$";
            Paragraph ("We can then subtract " + inline_maths "\\(-3\\)" + " times our divisor and we are done.");
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 +} x^2 \\phantom{+ 0x} - 3\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\kern-.2ex \\\\[-3pt]\\underline{-x^4 - 2x^3 - 3x^2} \\phantom{+ 3x - 2} \\\\[-3pt]-3x^2 + 3x + 2\\\\[-3pt]\\underline{3x^2 + 6x + 9}\\end{array}$$";
            Display_maths "$$\\require{enclose}\\begin{array}{rll}\\phantom{x^4 + 2x^3 +} x^2 \\phantom{+ 0x} - 3\\\\[-3pt]x^2 + 2x + 3\\enclose{longdiv}{x^4 + 2x^3 + 0x^2 + 3x + 2}\\kern-.2ex \\\\[-3pt]\\underline{-x^4 - 2x^3 - 3x^2} \\phantom{+ 3x - 2} \\\\[-3pt]-3x^2 + 3x + 2\\\\[-3pt]\\underline{3x^2 + 6x + 9}\\\\[-3pt]9x + 11\\end{array}$$";
            Paragraph ("This leaves the divisor on the right, our polynomial that we started with under our vinculum, the quotient over the vinculum and the remainder at the bottom. Not only is it confusing to have the quotient written over the initial polynomial, but the whole process is a series of memorised steps that don't really make mathematical sense so that we can then memorise where each part of our expression is to ultimately write it in the form we want: " + inline_maths "\\(P(x) = D(x)Q(x) + R(x)\\)" + ".");
            Display_maths "\\[(x^4 + 2x^3 + 3x + 2) = (x^2 - 3)(x^2 + 2x + 3) + (9x + 11)\\]";
            Subtitle "A Better Approach";
            Paragraph "I now propose an alternate approach to polynomial division, which I will argue is simpler, easier to learn, more intuitive and works better within the problems that it is used. It will also provide us with the result in a nicer format and most importantly will rely on students existing intuition for how division works with numbers and how to manipulate algebraic expressions. However, we should first look at how the division algorithm works with integers, to show just how nicely the polynomial form will follow on from it.";
            Paragraph ("Let's say we want to divide " + inline_maths "\\(45\\)" + " by " + inline_maths "\\(13\\)" + ". The division algorithm states that for any positive integers " + inline_maths "\\(a\\)" + " and " + inline_maths "\\(b\\)" + ", there exists a unique " + inline_maths "\\(q\\)" + " and " + inline_maths "\\(r\\)" + " with " + inline_maths "\\(0 \\leq r < b\\)" + " such that:");
            Display_maths "\\[a = qb + r\\]";
            Paragraph ("This is just that for any choice of " + inline_maths "\\(a\\)" + ", and a  " + inline_maths "\\(b\\)" + " that we wish to divide it by, we can find a unique quotient and remainder. So for our above example, the largest multiple of " + inline_maths "\\(13\\)" + " that is still lass than " + inline_maths "\\(45\\)" + " is " + inline_maths "\\(3\\)" + ", hence:");
            Display_maths "\\[45 = 13 \\cdot 3 + 6\\]";
            Paragraph "We will now complete a very similar process for polynomials, with some small differences. These differences however should clearly show what is happening as the division occurs and should make sense from start to finish with respect to the underlying mathematics.";
            Paragraph "We begin by writing out the polynomial we wish to divide on one side of an equation, and the divisor on the other, leaving space for other things we will write in. This is because ultimately we want our initial polynomial in terms of the divisor.";
            Display_maths "\\[x^4 + 2x^3 + 3x + 2 = \\phantom{x^2}(x^2 + 2x + 3) \\phantom{-3x^2 + 3x + 2}\\]";
            Paragraph ("Now the process of polynomial division is just about matching algebraic terms. In order for our right hand side to be equal to our left hand side, we must make our first term " + inline_maths "\\(x^4\\)" + ". To do this we multiply by " + inline_maths "\\(x^4\\)" + ".");
            Display_maths "\\[x^4 + 2x^3 + 3x + 2 = x^2(x^2 + 2x + 3) \\phantom{-3x^2 + 3x + 2}\\]";
            Paragraph ("So we have matched the first term for when we expand our right hand side, but we need to make sure our expressions are equal, so we add and subtract lower degree terms to compensate. For example, when we expand our right hand side we will end up with a " + inline_maths "\\(2x^3\\)" + " term, which we already have on the left hand side. So good so far. The next term we will get will be " + inline_maths "\\(3x^2\\)" + ", but that's not on the left hand side so we have to subtract it to make sure our equation holds. Similarly, we will be missing the " + inline_maths "\\(3x + 2\\)" + ", so we will also add that to the end.");
            Display_maths "\\[x^4 + 2x^3 + 3x + 2 = x^2(x^2 + 2x + 3) -3x^2 + 3x + 2\\]";
            Paragraph ("Now we just repeat the exact same thing for the tail end of our terms. So we can for now ignore our first term of " + inline_maths "\\(x^2(x^2 + 2x + 3)\\)" + ", and just divide " + inline_maths "\\(-3x^2 + 3x + 2\\)" + " by our divisor. In this case, we need to multiply our quotient by " + inline_maths "\\(-3\\)" + " to match our leading term, and then we can add or subtract our extra terms so our expression is still equal.");
            Display_maths "\\[x^4 + 2x^3 + 3x + 2 = x^2(x^2 + 2x + 3) -3(x^2 + 2x + 3) + 9x + 11\\]";
            Paragraph "Since the degree of our remaining expression is less than our divisor, we have nothing more to divide. So let's just factorise out divisor and we are done!";
            Display_maths "\\[x^4 + 2x^3 + 3x + 2 = (x^2 + 2x + 3)(x^2 - 3) + 9x + 11\\]";
            Paragraph ("Now, with no further work, just as a consequence of the process, we are left with the standard form of " + inline_maths "\\(P(x) = D(x)Q(x) + R(x)\\)" + ".");
            Paragraph "With a little bit of practice this process becomes easy, allowing your full working to look just like this:";
            Display_maths "\\begin{align}x^4 + 2x^3 + 3x + 2 &= x^2(x^2 + 2x + 3) - 3x^2 + 3x + 2 \\\\ &= x^2(x^2 + 2x + 3) - 3(x^2 + 2x + 3) + 9x + 11 \\\\ &= (x^2 + 2x + 3)(x^2 - 3) + 9x + 11\\end{align}";
            Paragraph "Not only is this method easier to learn and intuitively understand for someone being introduced to the topic, it is also better suited to the cases where polynomial division is actually used. For example, consider the use of the Euclidean Algorithm to find the greatest common divisor of two polynomials. We will use the same example as before, meaning the first few steps are already done for us.";
            Display_maths "\\begin{align}x^4 + 2x^3 + 3x + 2 &= x^2(x^2 + 2x + 3) - 3x^2 + 3x + 2 \\\\ &= x^2(x^2 + 2x + 3) - 3(x^2 + 2x + 3) + 9x + 11 \\\\ &= (x^2 + 2x + 3)(x^2 - 3) + 9x + 11 \\\\ x^2 + 2x + 3 &= \\frac{1}{9}x(9x + 11) + \\frac{7}{9}x + 3 \\\\ &= \\frac{1}{9}x(9x + 11) + \\frac{7}{81}(9x + 11) + \\frac{166}{81} \\\\ &= (9x + 11)\\left(\\frac{1}{9}x + \\frac{7}{81}\\right) + \\frac{166}{81} \\\\ 9x + 1 &= \\frac{166}{81}\\left(\\frac{729}{166}x + \\frac{891}{166}\\right)\\end{align}";
            Paragraph "Note how this process looks just like how it would be written for using the Euclidean Algorithm to find the greatest common denominator of two integers.";
            Paragraph "My ultimate goal in writing this post is to encourage readers to further consider how mathematical methods for computations influence one's understanding of the concept itself, and more importantly to realise that some methods are easy precisely because they're familiar, and that makes it hard to identify where they could be problematic for people learning them for the first time.";
        ];
    }