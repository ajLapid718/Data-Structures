function swap(arr, idxOne, idxTwo) {
  let temp = arr[idxTwo];
  arr[idxTwo] = arr[idxOne];
  arr[idxOne] = temp;
}

function selectionSort(arr) {
  for (let i = 0; i < arr.length; i++) {
    let currNum = arr[i];
    let minIdx = i;

    for (let j = i + 1; j < arr.length; j++) {
      let otherNum = arr[j];
      if (otherNum < currNum) {
        minIdx = j;
      }
    }

    if (i !== minIdx) {
      swap(arr, i, minIdx);
    }
  }

  return arr;
}
