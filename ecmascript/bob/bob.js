class Bob {
  hey(message) {
    const processedMessage = message.split(' ').join('')

    if (processedMessage === '') {
      return 'Fine. Be that way!'
    } else if (processedMessage === processedMessage.toUpperCase() 
        && processedMessage.toLowerCase() !== processedMessage) {
      return 'Whoa, chill out!'
    } else if (processedMessage.slice(-1) === '?') {
      return 'Sure.'
    }
    else {
      return 'Whatever.'
    }
  }
}

export default Bob