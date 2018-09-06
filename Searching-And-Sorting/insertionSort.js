function insertionSort(arr) {
  for (let i = 1; i < arr.length; i++) {
    let currNum = arr[i];
    let j = i - 1;

    while (arr[j] > currNum) {
      arr[j+1] = arr[j];
      j--;
    }

    arr[j+1] = currNum;
  }

  return arr;
}
