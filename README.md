# Launchbook

Practice finding elements on the DOM using jQuery.

You will practice how to:

- Find HTML elements
- Find HTML elements using CSS selectors
- Store jQuery objects in variables

## Find an Element by Type

jQuery let's us use [CSS selectors](http://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048),
to find elements that are in the DOM (on the page). The most basic way to find
something with jQuery is to use the element type as the CSS selector.

Example, finding the status update form:

```javascript
$('form');
```

**Find the top navbar by query for the element type, which is  `<nav>`.**

## Finding Elements by their ID

We can also find an element by it's **id**.

Example, finding the left sidebar by it's id:

```javascript
$('#sidebar-left');
```

**Find the sidebar on the right by using it's id.**

## Finding Elements by their Class

We can also find elements by their **class**.

Example, finding the "Favorites" section of the sidebar by using it's class:

```javascript
$('.favorites');
```

**Find the "Pages" and "Groups" sections of the sidebar by using their class.**

## Finding Child Elements

Since jQuery uses CSS selectors to find elements, we can also scope our queries
the same way you would with CSS.

Example, finding all of the sections of the sidebar:

```javascript
$('#sidebar div');

// Even better, this only selects div elements that are direct children of
// the sidebar container
$('#sidebar > div');
```

## Querying Multiple Elements

### Finding All Matching Elements

Example, we can find all of the posts on the page by using the `.post` class:

```javascript
$('.post');
```

**Find all of the comments on the page.**

### Finding Specific Matching Elements

Example, finding the first post in the feed:

```javascript
$('.post:first');
$('.post').first();
```

**Find the first comment on the page.**

Example, finding the last post in the feed:

```javascript
$('.post:last');
$('.post').last();
```

**Find the last comment on the page.**

Example, finding the third post in the feed:

```javascript
$('.post:nth-child(3)');
```

**Find the fourth comment on the page.**

**Protip:** You don't want to use `$('.post')[2]` because this won't return a
jQuery object. Because the object that is return is not a jQuery object, you
won't be able to use any of jQuery's functions on this object. In order to use
this technique and return a jQuery object, you would need to wrap the entire
query with jQuery: `$($('.post')[2]);`.

## Simple Hiding/Showing Elements

### Hiding an Element

jQuery's [.hide()](https://api.jquery.com/hide/) can be used to easily hide an
element.

Example, hiding the status update form:

```javascript
$('.status-update').hide();
```

**Find one of the ads in the sidebar and use `.hide()` to hide it.**

### Showing an Element

jQuery's [.show()](http://api.jquery.com/show/) can be used to easily show an
element that is currently hidden.

Example, showing the status update form:

```javascript
$('.status-update').show();
```

**Use `.show()` to make the ad that you hid in the previous step visible
again.**

### Toggling an Element

jQuery's [.toggle()](https://api.jquery.com/toggle/) can be used to easily show
an element that is currently hidden.

Example, toggling the status update form:

```javascript
$('.status-update').toggle();
```

**Use `.toggle()` to toggle the display of the nav bar at the top of the page.**

## Modifying Elements

### Modifying an Element's Attributes

#### Changing the Status Form's Placeholder

We can use jQuery's [.attr()](https://api.jquery.com/attr/) function to modify
the value of an element's attribute.

Example, changing the placeholder of the status update form's `<textarea>`:

```javascript
var $textarea = $('.status-update textarea');
$textarea.attr('placeholder', 'Hello World!');
```

**Use `.attr()` to change `src` attribute of one of the ads in the sidebar.**

Here's an image source if you need one: `http://placebear.com/200/300`.

### Modifying an Element's Text

We can use jQuery's [.text()](http://api.jquery.com/text/) function to change
the text content of an element.

Example, changing the title of our application:

```javascript
$('.title-area .name a').text('Launch Academy Facebook Clone');
```

**Find Sam's post and change it's text to something incredible.**

## Modifying an Element's Class

jQuery provides some easy ways of modifying an element's class. Some of the most
used are [.addClass()](http://api.jquery.com/addclass/), [.removeClass()](https://api.jquery.com/removeClass/),
and [.toggleClass()](https://api.jquery.com/toggleClass/).

#### Adding a Class to an Element

Example, adding the `.active` class to the "News Feed" link in the left sidebar:

```javascript
var $newsFeedLink = $('.favorites li:nth-child(3)');
$newsFeedLink.addClass('active');
```

**Find the first post and use `.addClass()` to add the `.post-liked` class to
it.**

#### Removing a Class

Example, removing the `.active` class from the "News Feed" link in the left
sidebar:

```javascript
var $newsFeedLink = $('.favorites li:nth-child(3)');
$newsFeedLink.removeClass('active');
```

**Find the second post and use `.removeClass()` to remove the `.post-liked`
class.**

#### Toggling a Class

Example, toggling the `.active` class on all the links in the left sidebar:

```javascript
var $sidebarLinks = $('.favorites li');
$sidebarLinks.toggleClass('active');
```

**Find any post and use `.toggleClass()` to toggle the `.post-liked` class.**

#### More with Classes

**Play around with the functions for modifying an elements class by finding some
posts and adding/removing/toggling the `.post-hidden` class.**
