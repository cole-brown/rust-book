fn main() {
    println!("Hello, world!");

    another_function(5, 400);

    println!("five() is: {}", five());

    let x = plus_one(five());
    println!("plus_one(five()) is: {}", x);
}

fn another_function(x: i32, y: i32) {
    println!("The value of x is: {}", x);
    println!("The value of y is: {}", y);
}

fn five() -> i32 {
    5
}

fn plus_one(x: i32) -> i32 {
    x + 1
}
