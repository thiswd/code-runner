function twoSum(arr, target) {
  let start = 0;
  let end = arr.length - 1;

  while (start < end) {
    let sum = arr[start] + arr[end];

    if (sum === target) {
      return [start, end];
    } else if (sum < target) {
      start += 1;
    } else {
      end -= 1;
    }
  }

  return [-1, -1];
}

function twoSum(nums, target) {
  let map = new Map();
  for (let i = 0; i < nums.length; i++) {
    let complement = target - nums[i];
    if (map.has(complement)) {
      return [map.get(complement), i];
    }
    map.set(nums[i], i);
  }
  return [];
}

let arr = [1, 2, 3, 4, 6];
let target = 6;
console.log(twoSum(arr, target));
