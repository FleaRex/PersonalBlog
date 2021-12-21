---
author: Ben Madley
github: FleaRex
title: I Rate the SOLID Principles
---

The SOLID Principles are a commonly referenced part of Object Oriented development, but are they any good? Which couldn't we live without and which are forgettable.

## Single Responsibility 6/10

Starting with a contraversial score, Single Responsibility gets 6/10. It pushes us towards smaller objects, but it's hard to use to it's fullest. From a fear of creating too many classes, to a lack of experience with different ways of breaking responsibilities (e.g. strategy, factory, adapter), we find it hard to go far enough. "One thing" in the definition of Single Responsibility is too vague to make us.

## Open/Closed 7/10

Striving towards the Open/Closed principle, primarily makes you create code that separates instantiation from logic. This is useful for testing and leads to better defined responsibilities.

Before:

```java
class Maths {
    public double integrate(string method, double lowerBound, double upperBound) {
        switch(method) {
            case "analytic":
                // Do analytic integration
                break;
            case "trapezium":
                // Use the trapezium rule
                break;
            }
    }
}
```

After:

```java
class Maths {
    public double integrate(string method, double lowerBound, double upperBound) {
        switch(method) {
            case "analytic":
                (new AnalyticIntegral(lowerBound, upperBound))->calculate();
                break;
            case "trapezium":
                (new TrapeziumIntegral(lowerBound, upperBound))->calculate();
                break;
            }
    }
}
```

## Liskov Substitution 3/10

Sorry for the shock. The most commonnly repeated version of the Liskov Substitution Principle says I should be able to replace any class with a subclass without breaking the program. Of course I should. I've seen the examples before: A square shouldn't extend rectangle, an ostritch shouldn't extend bird. I've never had the case where I've fallen foul, like I have for other rules.

## Interface Segregation 4/10

Another low score. It's nice to have small interfaces that express a single idea and I'm perfectly happy to express an object as implementing two interfaces. Unfortunately Interface Segregation suffers the same fate as Liskov Substitution. I'm yet to come across the situation where splitting one down yields benefit. 

In all fairness, interfaces don't come up much in my life. Many languages rely on duck typing. Lots don't have a concept of interfaces. Apologies if this has led me to be too harsh.

## Dependency Inversion 9/10

We finish with the top scorer. Depend on abstractions instead of concretions. The Dependency Inversion Principle leads to easier to maintain code, injecting your dependencies and extracting ideas into new objects. It would have been a 10/10 if it was a little easier to get your head around when you first read it.

## Alternatives

You can see I've not exactly given these principles glowing reviews and why should I? Lots of developers know of these principles and our codebases can still suffer. Instead, why not consider Sandi Metz's affordances for objects. Make each object:

- Anthropomorphic
- Polymorphic
- Loosley-coupled
- Role-playing
- Factory-created
- Message-sending

For more info on what these mean, check out [Polly want a message](https://www.youtube.com/watch?v=XXi_FBrZQiU).

<iframe width="560" height="315" src="https://www.youtube.com/embed/XXi_FBrZQiU?start=1446" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
