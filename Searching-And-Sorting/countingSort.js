// One way to write counting sort (unstable);
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
    while (count[m] > 0) {
      array[frontIdx] = m;
      frontIdx++;
      count[m]--;
    }
  }

  return array;
}

// Another way to write counting sort (unstable);
function countingSort(list, k) {
  let frequencies = Array(k+1).fill(0);

  for (num of list) {
    frequencies[num]++;
  }

  let idx = 0;

  for (let i = 0; i < frequencies.length; i++) {
    while (frequencies[i] > 0) {
      list[idx] = i;
      idx++;
      frequencies[i]--;
    }
  }

  return list;
}

/*

Counting sort is a viable option if we are given an array of integers where the integers are low values
and the gaps between each integer are minimal.

Counting sort does not make any comparisons, unlike bubble sort or selection sort.

Counting sort takes n time to iterate through the input array, and it takes k time to iterate through the auxillary array.
This is why the time complexity of the algorithm is O(n+k).

Although the return value is the original input array in ascending order, the integers that were mapped to the array are not guaranteed to be the same integers (as they appeared in the original array) the array originally contained.
This is what makes the above implementations categorized as unstable.

Note: Although the original array was mutated and overwritten, the operation is not classified as in-place sorting.
This is so because we used an auxillary array instead of constant space.

Note: A sorting algorithm is said to be stable if two objects with equal keys appear in the same order in sorted output as they appear in the input array to be sorted.
There is an implementation of counting sort that is stable, and I will look further into it.

*/
