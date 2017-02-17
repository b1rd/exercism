class Hamming {
  compute(xs, ys) {
    let distance;

    if (xs.length !== ys.length) {
      throw new Error('DNA strands must be of equal length.')
    }

    xs = xs.split('')
    ys = ys.split('')

    distance = xs.reduce((acc, item, index) => {
      if (item !== ys[index]) {
        acc += 1
      }
      return acc
    }, 0)

    return distance
  }
}

export default Hamming
