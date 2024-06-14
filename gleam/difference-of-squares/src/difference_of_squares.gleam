import gleam/list
import gleam/int

pub fn square_of_sum(n: Int) -> Int {
  let range_sum = list.range(1, n) |> list.fold(0, int.add)
  range_sum * range_sum
}

pub fn sum_of_squares(n: Int) -> Int {
  list.range(1, n) |> list.map(fn(x) { x * x}) |> list.fold(0, int.add)
}

pub fn difference(n: Int) -> Int {  
  square_of_sum(n) - sum_of_squares(n)
}
