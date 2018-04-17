function bubbleSort(arr) {
  while (true) {
    let sorted = true;

    for (let i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i+1]) {
        sorted = false;
        let temp = arr[i];
        arr[i] = arr[i+1];
        arr[i+1] = temp;
      }
    }

    if (sorted === true) {
      break;
    }
  }

  return arr;
}
