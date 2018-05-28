function binarySearch(sortedArr, val) {
  let leftIndex = 0;
  let rightIndex = sortedArr.length - 1;

  while (leftIndex <= rightIndex) {
    let midIndex = Math.floor((leftIndex + rightIndex) / 2);
    let element = arr[midIndex];

    if (element === val) {
      return midIndex;
    }
    else if (val < element) {
      rightIndex = midIndex - 1;
    }
    else {
      leftIndex = midIndex + 1;
    }
  }

  return -1;
}
