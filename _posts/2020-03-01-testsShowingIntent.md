---
author: Ben Madley
github: FleaRex
title: Tests Show Intent
---

I recently came across a line of code that looked roughly like `if((a() || b()) === false) { doSomething(); }`. I've definitely written unnecessary equalities like this before. I generally prefer `if(!a() && !b()) { doSomething(); }` I'd seen something that could be better, and I wanted to change it. After all, you should leave the codebase better than you found it.

The problem is this is more tricky than we would like to admit. If the above code was Java, maybe I'd be happy to make that change, but this was JavaScript. There's so much more to consider! Let's look at these examples again:

Example 1:

```js
if((a() || b()) === false) {
  doSomething();
}
```

Example 2:

```js
if(!a() && !b()) {
  doSomething();
}
```

So, if `a()` is also falsey and `b()` is `undefined`, `0` or anything else falsey apart from `false`, `doSomething` will not run in Example 1 but **will** run in Example 2. [Short circuiting](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Logical_Operators) gives us even more things to think about! These aren't unusual situations. In PHP this happens all the time. Consider this example from the [`stripos` documentation](https://www.php.net/manual/en/function.stripos.php#refsect1-function.stripos-examples).

```php
<?php
$findme    = 'a';
$mystring1 = 'xyz';
$mystring2 = 'ABC';

$pos1 = stripos($mystring1, $findme);
$pos2 = stripos($mystring2, $findme);

// Nope, 'a' is certainly not in 'xyz'
if ($pos1 === false) {
    echo "The string '$findme' was not found in the string '$mystring1'";
}

// Note our use of ===.  Simply == would not work as expected
// because the position of 'a' is the 0th (first) character.
if ($pos2 !== false) {
    echo "We found '$findme' in '$mystring2' at position $pos2";
}
?>
```

We can't check for `if (!$pos1)` because `stripos` could be in the 0th position!

If we had tests, this would be easier. Tests would let us know if we were expecting `b()` to be undefined or signal the intent of that condition a bit more strongly. We definitely would have more confidence for refactoring.

So, please show your intention, write some tests and let's do some refactoring.
