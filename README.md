# FriendlyNumbers

Converts numbers like 1000 to 1K and 1500 to 1.5K.

This representation of numbers using K (thousand), M (million), and B (billion) is commonly used in banking and games universe to simplify the reading of a big number.

## Installation

FriendlyNumbers is available through [CocoaPods](http://cocoapods.org). 

To install it, simply add the following line to your Podfile:

```ruby
pod 'FriendlyNumbers'
```

## Examples

```swift
let number = 1530
print(number.FNMostSimple) // prints 1K

let number = 1530
print(number.FNSimple) // prints 1.5K

let number = 15320
print(number.FNMostSimple) // prints 15K

let number = 15320
print(number.FNSimple) // prints 15.3K

let number = 153200
print(number.FNMostSimple) // prints 153K

let number = 153200
print(number.FNSimple) // prints 153.2K

let number = 1532200
print(number.FNMostSimple) // prints 1M

let number = 1532200
print(number.FNSimple) // prints 1.5M

let number = 15300000
print(number.FNMostSimple) // prints 15M

let number = 15300000
print(number.FNSimple) // prints 15.3M
```
