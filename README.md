# Launchbook

Practice finding elements on the DOM using JavaScript.

You will practice how to:

- Find HTML elements
- Find HTML elements using CSS selectors
- Store JavaScript objects in variables

## Getting Started

```no-highlight
# Clone down this repo
git clone git@github.com:LaunchAcademy/launchbook.git

# Move into repo directory
cd launchbook

# Install gems app depends on
bundle install

# Start the app server
ruby app.rb

# Open the app in your browser
open 'http://localhost:4567'
```

## Following Along

Each section contains an example and something for you to do on your own to
reinforce the concept. You should try out each example in the browser and then
do the reinforcement exercise.

**Open the JavaScript console in Chrome so that you can follow along with the
queries listed in the following section. You can open the JavaScript console
by navigating the menu bar to `View -> Developer -> JavaScript Console` or with
the shortcut `cmd + option + j`.**

## Finding Stuff

### Find an Element by Type

JavaScript let's us use [CSS selectors](http://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048),
to find elements that are in the DOM (on the page). The most basic way to find
something with JavaScript is to use the element type as the CSS selector.

Example, finding the status update form:

```javascript
document.getElementsByTagName("form")[0];
```

**Find the top navbar by query for the element type, which is  `<nav>`.**

### Finding Elements by their ID

We can also find an element by it's **id**.

Example, finding the left sidebar by it's id:

```javascript
document.getElementById('sidebar-left');
```

**Find the sidebar on the right by using it's id.**

### Finding Elements by their Class

We can also find elements by their **class**.

Example, finding the "Favorites" section of the sidebar by using it's class:

```javascript
document.getElementsByClassName('favorites')[0];
```

**Find the "Pages" and "Groups" sections of the sidebar by using their class.**

### Finding Child Elements

With JavaScript, we can utilize HTML id and class attributes to find tags in a page. We can also scope our queries by chaining functions.

Example, finding all of the sections of the sidebar:

```javascript
document.getElementById('sidebar-left').getElementsByTagName('div');
```

### Querying Multiple Elements

#### Finding All Matching Elements

Example, we can find all of the posts on the page by using the `.post` class:

```javascript
document.getElementsByClassName('post');
```

**Find all of the comments on the page.**

#### Finding Specific Matching Elements

Example, finding the first post in the feed:

```javascript
document.getElementsByClassName('post')[0];
```

**Find the first comment on the page.**

Example, finding the last post in the feed:

```javascript
var posts = document.getElementsByClassName('post');
var lastPostIndex = posts.length - 1;
posts[lastPostIndex];
```

**Find the last comment on the page.**

Example, finding the third post in the feed:

```javascript
var posts = document.getElementsByClassName('post')[2];
```

**Find the fourth comment on the page.**

### Simple Hiding/Showing Elements

#### Hiding an Element

We can set the CSS properties of elements on the page via the `.style` function.

Example, hiding the status update form:

```javascript
var statusUpdateForm = document.getElementsByClassName('status-update')[0];
statusUpdateForm.style.visibility = "hidden";
```

**Find one of the ads in the sidebar and hide them.**

#### Showing an Element

We can change the visibility back to what it was, initially.

Example, showing the status update form:

```javascript
var statusUpdateForm = document.getElementsByClassName('status-update')[0];
statusUpdateForm.style.visibility = "visible";
```

**Set the visibility to the form that you hid in the previous step to make it visible again.**

#### Toggling an Element (have students write a `toggle` function?)

JavaScript's [.toggle()](https://api.JavaScript.com/toggle/) can be used to easily show
an element that is currently hidden.

Example, toggling the status update form:

```javascript
$('.status-update').toggle();
```

**Use `.toggle()` to toggle the display of the nav bar at the top of the page.**

### Modifying an Element's Attributes

We can use the `setAttribute` function to modify the value of an element's attribute.

Example, changing the placeholder of the status update form's `<textarea>`:

```javascript
var statusUpdate = document.findElementByClassName('status-update');
statusUpdate.findElementByTagName('textarea');

var $textarea = $('.status-update textarea');
$textarea.attr('placeholder', 'Hello World!');
```

**Use `.attr()` to change `src` attribute of one of the ads in the sidebar.**

Here's an image source if you need one: `http://placebear.com/200/300`.

**Protip:** Prefixing variables with `$` is a good way to signify that it's value
is a JavaScript object. This is helpful because it lets us know that we can use
JavaScript's functions on this object.

### Modifying an Element's Text

We can use JavaScript's [.text()](http://api.JavaScript.com/text/) function to change
the text content of an element.

Example, changing the title of our application:

```javascript
$('.title-area .name a').text('Launch Academy Facebook Clone');
```

**Find Sam's post and change it's text to something incredible.**

### Modifying an Element's Class

JavaScript provides some easy ways of modifying an element's class. Some of the mostused are [.addClass()](http://api.JavaScript.com/addclass/), [.removeClass()](https://api.JavaScript.com/removeClass/), and [.toggleClass()](https://api.JavaScript.com/toggleClass/).

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
