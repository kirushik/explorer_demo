#[macro_use]
extern crate qmlrs;
use qmlrs::*;

/// Stupid counter module
///
/// # Examples
///
/// ```
/// let mut counter = Counter::new();
/// counter.increment();
/// assert_eq!(counter.value, 1i64);
/// ```
struct Counter {
    value: i64
}

impl Counter {
   fn new() -> Counter {
       Counter{value: 0}
   }

   fn value(&self) -> i64 {
      self.value
   }

   fn increment(&mut self) {
       self.value = self.value + 1;
       println!("{}", self.value);
   }
}

Q_OBJECT! { Counter:
    slot fn increment();
    slot fn value();
}

fn main() {
    let counter = Counter::new();

    let mut engine = qmlrs::Engine::new();
    engine.set_property("counter", counter);
    engine.load_local_file("qml/main.qml");

    engine.exec();
}
