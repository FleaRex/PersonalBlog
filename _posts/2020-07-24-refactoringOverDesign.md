---
author: Ben Madley
github: FleaRex
title: Refactoring is more important than design
---

There's a tendency with new developers to teach them about design of code and make that a focus. This is by no means a bad thing. New developers often haven't had to think about the code that they write before. It's more important that you teach them how to refactor than design.

My first software development job was an internship doing C++ at Delcam in Birmingham (now part of Autodesk). The internship started with a 2 week course in C++ and object oriented programming. They gave me the practice of drawing UML diagrams before starting any piece of work. This continued into my next jobs. I gained greater fervour, redrawing the diagram until I copied it without feeling the need to make any changes. This inevitably led to drawing the diagram four or five times. I'd like to believe I wasn't bad at it. Eventually the designs would need to change, caused by either a misunderstanding of the system or a new requirement [breaks an assumption](http://www.mooreds.com/wordpress/archives/3000). The only way out of this kind of situation is to refactor.

Let me give you an example. I've been doing some game development recently and this sort of situation arises relatively frequently. Consider this code:

{% highlight js %}
var direction = steering(inputs);

function steering(inputs) {
  if(inputs.keyboard.left) {
    return 'left'
  }
  if(inputs.keyboard.right) {
    return 'right'
  }
}
{% endhighlight %}

This code will hold up for a while, but then maybe we need to support rebinding keys, controllers and perhaps even analogue steering. So now we will refactor. If you don't, you end up with something like this:

{% highlight js %}
var direction = steering(inputs);

function steering(inputs) {
  if(inputs.keyboard[config.keybindings.left] || inputs.controller.stick_x &lt; 0) {
    return 'left'
  }
  if(inputs.keyboard[config.keybindings.right] || inputs.controller.stick_x > 0) {
    return 'right'
  }
}
{% endhighlight %}

We can see this code starting to get out of control. This is where our refactoring comes in and allows us to control this complexity:

{% highlight js %}
var direction = steering(inputs);

function holdingLeft(inputs) {
  return inputs.keyboard[config.keybindings.left] || inputs.controller.stick_x &lt; 0
}

function holdingRight(inputs) {
  return inputs.keyboard[config.keybindings.right] || inputs.controller.stick_x > 0
}

function steering(inputs) {
  if(holdingLeft(inputs)) {
    return 'left'
  }
  if(holdingRight(inputs)) {
    return 'right'
  }
}
{% endhighlight %}

And now we have code where the complexity is controlled better. In another step would be to move `holdingRight` and `holdingLeft` to an `Inputs` class, allowing us to easily mock the controller inputs for testing our steering. The change to our steering **was bound to happen**, and it was only our confidence refactoring that kept us going when our design fell apart.

For one final example of how refactoring gives us abilities that design doesn't, let's think about how those approaches differ. In a mostly design approach I've decided how everything will function and I go through component by component until I've completed them all, dealing with any integration issues as they occur. I probably start with any leaf nodes on my neatly drawn graph. It's close to the end by the time that I have a working product.

In the mostly refactor approach, I start by building something. It probably has a few erroneous assumptions. I assume my game only has 1 player, my scoring system is simple, I only need to read one type of file. I know these assumptions will be broken quickly. Because I'm not fixed to a design I'm free to develop software which makes these assumptions, letting me create something more quickly. It will be a prototype, but now I have working software. When I need to add more players, I can use the [Extract Class](https://refactoring.guru/extract-class) pattern to define a player and then create the players when I know how many we have. When I need a new scoring system (possibly supporting multiple systems simultaneously), I can use the [Strategy Pattern](https://sourcemaking.com/design_patterns/strategy) and inject the system when I know which to use. At all points **I have a game that I can play**.

The point is you should practice refactoring and you should teach refactoring. If you want to practice, you could start in a worse place than [5 coding exercises to practice refactoring Legacy Code](https://understandlegacycode.com/blog/5-coding-exercises-to-practice-refactoring-legacy-code/) from Nicolas Carlo. If you want to teach refactoring, particularly to new developers why not start with some of these and focus on how to do them without breaking existing code:

-   [Extract](https://refactoring.guru/extract-method)/[Inline Method](https://refactoring.guru/inline-method)
-   [Extract Class](https://refactoring.guru/extract-class)
-   [Replace Constructor with Factory Method](https://refactoring.guru/replace-constructor-with-factory-method)
-   [Replace Temp with Query](https://refactoring.guru/replace-temp-with-query)

The other point is that unless you live in a perfect hypothetical world, you will need to refactor your code to make changes, no amount of design could have allowed for.
