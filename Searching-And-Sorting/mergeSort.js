function mergeSort(array) {
  if (array.length <= 1) {
    return array;
  }

  let mid = array.length / 2;
  let left = array.slice(0, mid);
  let right = array.slice(mid);

  return merge(mergeSort(left), mergeSort(right));
}

function merge(left, right) {
  let sorted = [];

  let leftIdx = 0;
  let rightIdx = 0;

  while (leftIdx < left.length && rightIdx < right.length) {
    if (left[leftIdx] < right[rightIdx]) {
      sorted.push(left[leftIdx]);
      leftIdx += 1;
    } else {
      sorted.push(right[rightIdx]);
      rightIdx += 1;
    }
  }

  while (leftIdx < left.length) {
    sorted.push(left[leftIdx]);
    leftIdx += 1;
  }

  while (rightIdx < right.length) {
    sorted.push(right[rightIdx]);
    rightIdx += 1;
  }

  return sorted;
}
