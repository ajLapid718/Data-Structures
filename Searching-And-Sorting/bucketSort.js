function bucketSort(arr) {
  let res = [];

  let len = arr.length;
  let buckets = Array(len);

  for (let i = 0; i < len; i++) {
    let num = arr[i];
    let targetIdx = Math.floor(num/len) + 1;
    if (buckets[targetIdx] === undefined) {
      buckets[targetIdx] = [num];
    }
    else {
      buckets[targetIdx].push(num);
      buckets[targetIdx].sort((a,b) => a - b);
    }
  }

  for (let i = 0; i < buckets.length; i++) {
    let bucket = buckets[i];
    if (bucket) res = res.concat(bucket);
  }

  return res;
}
