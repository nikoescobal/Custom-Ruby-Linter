# Ruby Capstone Project
## A Customized CSS Linter built with Ruby & Object Oriented Programming (OOP)

The objective of this capstone project was to demonstrate mastery of key concepts in object oriented programming by writing classes, methods, and accessing their attributes. Here, I created an executable CSS linter program that detects style issues within the css file, and provides detailed feedback on how to fix them. 

<img width="1436" alt="Screen Shot 2021-03-04 at 9 38 07 PM" src="https://user-images.githubusercontent.com/62937819/109972102-ebed5080-7d31-11eb-8664-5b717d8d0b51.png">


## Project Description: 

Upon executing the program, the user will be given detailed on feedback on whether their CSS file adopts proper style conventions on the following:

### ***Hex Case***

> **Bad code:**
```
body { 
  background: #FFF;
}
```

> **Good code:**

```
body { 
  background: #fff;
}
```

### ***Trailing Spaces***

> **Bad code:**
```
footer {
  font-weight: 12px;
} 

```

> **Good code:**

```
footer {
  font-weight: 12px;
}
```

### ***Braces On Same Line***

> **Bad code:**
```
a {font-size: 10px;}

```

> **Good code:**

```
a {
font-size: 10px;
}

```

### ***Extra Semicolons***

> **Bad code:**
```
.btn {
  padding: 5px;;
}
```

> **Good code:**

```
.btn {
  padding: 5px;
}
```

### ***Decimal Placement***

> **Bad code:**
```
#wrapper {
  margin: 3.0000px;
}
```

> **Good code:**

```
#wrapper {
  margin: 3.00px;
}
```

### ***Font Weight***

> **Bad code:**
```
footer {
  font-weight: bold;
}
```

> **Good code:**

```
footer {
  font-weight: 16px;
}
```

### ***Comma Spaces***

> **Bad code:**
```
p {
  transform: translate(1px,1px);
}
```

> **Good code:**

```
p {
  transform: translate(1px, 1px);
}
```

### ***Leading Zeros***

> **Bad code:**
```
span {
  line-height: .5px;
}
```

> **Good code:**

```
span {
  line-height: 0.5px;
}
```

## Built with

- Ruby 
- Lots of love :heart:

## Getting Started

### Prerequisites

Before you can run the program, you need to make sure [Ruby](https://www.ruby-lang.org/en/) is installed on your computer.

### Installation

In order to run the linter on your local machine, please run the following commands on your terminal:

> 1. run `git clone git@github.com:nikoescobal/Custom-Ruby-Linter.git`
> 2. run `cd Custom-Ruby-Linter`
> 3. run `ruby bin/main.rb` to run the linter checks
> 4. Enjoy!

## Author:

👤 **Nikolas Escobal**

[<code><img height="26" src="https://cdn.iconscout.com/icon/free/png-256/github-153-675523.png"></code>](https://github.com/nikoescobal)
[<code><img height="26" src="https://upload.wikimedia.org/wikipedia/sco/thumb/9/9f/Twitter_bird_logo_2012.svg/1200px-Twitter_bird_logo_2012.svg.png"></code>](https://twitter.com/nikoescobal)
[<code><img height="26" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"></code>](https://www.linkedin.com/in/nikolas-escobal/)
 <a href="mailto:niko.escobal@gmail.com?subject=Sup Niko?"><img height="26" src="https://cdn.worldvectorlogo.com/logos/official-gmail-icon-2020-.svg"></a>

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/nikoescobal/Custom-Ruby-Linter/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- The Odin Project
- [Stylelint](https://stylelint.io/user-guide/rules/list#stylistic-issues) for some inspiration.
- A big thanks to [El-Potato-Slayer](https://github.com/El-Potato-Slayer) for all the support (Much love, brother :heart:)

## 📝 MIT License

This project makes use of the MIT license.
