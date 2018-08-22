// Standard binary search;
// Return the index at which the target element is located;
// Otherwise, return -1;

function binarySearch(arr, target) {
  let midPoint = Math.floor(arr.length/2);
  let currentValue = arr[midPoint];

  if (currentValue === target) {
    return midPoint;
  }

  if (currentValue > target) {
    return binarySearch(arr.slice(0, midPoint), target);
  }

  if (currentValue < target) {
    return binarySearch(arr.slice(midPoint + 1), target);
  }

  return -1;
}

// Modified binary search;
// If the target value is contained by the input array, return true;
// Otherwise, return false;

function modifiedBinarySearch(arr, target) {
  let midPoint = Math.floor(arr.length/2);
  let currentValue = arr[midPoint];
  let head = arr[0];
  let tail = arr[arr.length-1];

  if (currentValue === target || head === target || tail === target) {
    return true;
  }

  if (target < head || target > tail) {
    return false;
  }

  if (currentValue > target) {
    return modifiedBinarySearch(arr.slice(0, midPoint), target);
  }

  if (currentValue < target) {
    return modifiedBinarySearch(arr.slice(midPoint + 1), target);
  }

  return false;
}
