+++
{
    "preview": "",
    "date": ""
}
+++

## What I love about Rust

Over the past few months I have been programming an increasing amount in the programming language Rust.

Let's start with a little context. For quite a while now I have been looking for a general purpose programming language to invest a serious amount of my time and effort into as a long term technology. As such, it doesn't matter if the language doesn't have great libraries, or even a great standard library, as I can take the time implementing those things myself. I just need a good starting point of the fundamental language.

This really started after I begin programming in F#, as the first functional programming language that I learned. At that point I realised how the tool I was using could make such a huge difference in my productivity as a programmer, and the process of learning F# really brought back for me the love of programming. F# has two major problems though: it is a VM language, running on .Net, and therefore doesn't produce standalone executables, and it's garbage collected, making it slow.

At that point though, when I realised how a well designed language could make me love programming so much more, and allow me to work so much faster, I began the hunt for a programming language to solve the problems I had with F#. At this point though, I can say how much I deeply regret going on that journey. As Aditya Siram put it in a talk on ATS:

"People keep saying that learning programming languages makes you a better programmer, it really doesn't. It makes you a better programmer up to a point, and then it makes you bitter and dissatisfied."

This is exactly my experience. Choose a new language because of some interesting idea it has or some way it solves a problem with an existing technology, spend a long time programming in that language, realise it too has a bunch of compromises that are unacceptable, and then go hunting for another language.

I tried everything from huge popular languages to small research languages.

In general though, I had the following criteria:

- Static Typing
- No Garbage Collection (either manually managed memory, statically analysed memory or )

So after trying many different options, and finding myself dissatisfied in one way or another with all of them, I eventually landed at Rust. My most recent attempt at learning Rust was not my  first. As I'm sure was true with many other people, I lost the fight against the borrow checker once and eventually came back.

So why did I come back? I eventually reached the realisation that I would never find anything I was completely happy with, but if I wanted a programming language suitable for systems programming and needed some level of abstraction above C to make programming a faster, easier and more pleasant experience, then I'm left with C++ and Rust, and to be completely honest, it then just came down to the fact that Rust takes a more functional approach to programming, and many of C++s design decisions I find nonsensical.

Rust has a lot of the things I love about functional programming languages, without the same costs in terms of performance that come with reference counting or garbage collection, or that purely functional data structures intrinsically give. Note though that I said 'a lot'. Not all. Making a distinction between functions and closures, and the way Rust handles closures, is something I find messy and confusing.

But what makes Rust so great? Well let's start with error handling.

---

### Error Handling Strategy
- exceptions are slow, and you never know what might cause an exception
### Performance Predictability
- many people often credit Rust as being ridiculously fast, but low level languages aren't great because they're fast, it's because if they're slow it's clear why, and it's the fault of the programmer. whereas lots of languages which run on a VM, or are interpreted can be slow because of things that aren't clear from the code, which make it too difficult to fix performance issues
### You can do anything in it
- from web development to building an OS
### (Only) The good parts of object oriented programming
- The niceness of object oriented programming without the horrors of object oriented programming (the fact that the type signature tells you what a function can do with a given variable)
### Smart Pointers
- allowing safe abstractions the borrow checker can't verify (RefCell, Cow)
### Macros
- avoid boilerplate with traits and the code generation allowing minimal cost at runtime (use DSL as example, but also derive macros, nary arguments, etc)
### Powerful Type System
- Traits and polymorphic output
### Developer Experience
- Build scripts, vendoring and compiling libraries from source to allow pain free dependencies
- The fact that files + compiler = program (no need to tell compiler what other files there are)
### Best of Functional Programming without Performance Cost
- Takes all the best ideas from functional programming but in a way that doesn't take a huge cost to performance. It's no secret that one of the best advantages of functional programming is that immutability makes your code safe, but Rust allows this. Instead it eliminates shared mutable state

---

Notice how in all of those things I mentioned I have yet to mention the borrow checker and Rust's guarantees about memory. This is because, in my opinion, the best thing about Rust is not it's guarantees about memory and concurrency.

Rust is a fantastic language because it provides high level features whilst still compiling to fast, low level code, with no runtime. To me, arguments over whether the borrow checker is too restrictive or helps write better code are auxiliary. 

If you are also thinking about learning Rust, I would pass on this one piece of wisdom. Many people find Rust to be a difficult language to learn, especially if you come from a background in C++ where Rust is so similar yet different in confusing ways, and especially if you don't have any experience in functional languages such as OCaml. The main reason Rust can be a challenging language to learn though is not because any individual part of the language is hard to learn, but because it forces you to learn it all at once. I hope to have somewhat helped in resolving this problem by giving a bit of a tour of the language, but if you start programming in Rust with no other knowledge or context, it will immediately start forcing you to think about traits, macros, lifetimes, ownership, etc. So if you want to learn Rust, you have to be motivated by its design decisions and believe that upon becoming experienced they will help make you a better programmer, and you have to take your time to learn things slowly and deliberately, rather than rushing past new concepts as they arise.


