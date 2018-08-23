function quickSort(arr) {
  if (arr.length <= 1) return arr;

  let pivotElement = arr[0];
  let lessThanPivot = [];
  let greaterThanPivot = [];

  for (let i = 1; i < arr.length; i++) {
    let num = arr[i];
    if (num <= pivotElement) {
      lessThanPivot.push(num);
    }
    else {
      greaterThanPivot.push(num);
    }
  }

  return quickSort(lessThanPivot).concat([pivotElement]).concat(greaterThanPivot);
}
