# UIView Animations

## Manual

```swift
Timer.scheduledTimer(withTimeInterval: 1.0/60.0, repeats: true) { _ in
  self.square.frame = self.square.frame.offsetBy(dx: 1, dy: 0.5)
}
```

If you're going to use a timer to animate, don't, but if you do, use a `CADisplayLink`.

## Properties

When using `UIView.animate()` we give the function an end state that we want it to animate to. 

## Springs

## Keyframe

## UIViewPropertyAnimator

Worth googling, (new / shiny)

## Transforms

## Auto Layout

* If you're setting a frame, **Don't use auto layout**
* If you're using auto layout, **Don't set a frame**

* Animate the constraint directly,
* Change the constraints and animate that change
* Use a transform

---

## Links

wwdc auto layout animation https://developer.apple.com/videos/play/wwdc2017/412/



curl --request POST -d '{ "username": "dave","password": "asdf"}' https://cloud-tracker.herokuapp.com/signup