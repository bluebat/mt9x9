// 9x9 multiplication table in Rust
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
// rustc mt9x9.rs ; ./mt9x9

fn main() {
    for i in (1..10).step_by(3) {
        for j in 1..10 {
            for k in i..i+3 {
                print!("{}x{}={:2}\t", k, j, k*j);
            }
            println!();
        }
        println!();
    }
}
