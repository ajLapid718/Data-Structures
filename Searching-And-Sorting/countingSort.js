function countingSort(array) {
  let min = array[0];
  let max = array[0];

  for (let i = 0; i < array.length; i++) {
    let num = array[i];
    if (num < min) {
      min = num;
    }
    if (num > max) {
      max = num;
    }
  }

  let count = [];
  let frontIdx = 0;

  for (let j = min; j <= max; j++) {
    count[j] = 0;
  }

  for (let k = 0; k < array.length; k++) {
    let numVal = array[k];
    count[numVal] += 1;
  }

  for (let m = min; m <= max; m++) {
    while(count[m] > 0) {
      array[frontIdx] = m;
      frontIdx++;
      count[m]--;
    }
  }

  return array;
}
