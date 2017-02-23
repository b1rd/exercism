class Gigasecond {
  constructor(d) {
    this.d = d
  }
  
  date() {
    const expected = new Date(this.d.getTime() + 10**12)
    return expected
  }
}
export default Gigasecond

