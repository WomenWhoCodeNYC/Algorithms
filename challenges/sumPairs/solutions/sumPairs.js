const sumPairs = (arr, tgt) => {
  const hash = {}
  for (let i=0, len=arr.length; i<len; i++) {
    if (hash[tgt-arr[i]]) return [tgt-arr[i], arr[i]]
    hash[arr[i]] = true
  }
  return false
}

// submitted by https://github.com/pseuyi
