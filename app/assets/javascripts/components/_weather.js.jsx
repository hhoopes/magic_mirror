var Weather = React.createClass({
  getInitialState() {
    return { weather: [] }
  },
  componentDidMount() {
    $.getJSON('/api/v1/weather',
    (response) => { this.setState({ weather: response }) });
  },

  render() {
  }
})
