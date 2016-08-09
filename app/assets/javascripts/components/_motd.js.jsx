var Motd = React.createClass({
  getInitialState() {
    return { motds: [] }
  },
  componentDidMount() {
    $.getJSON('/api/v1/motds/current', (response) => { this.setState({ motds: response }) });
  },

  render() {
    var motds = this.state.motds.map(function(motd) {
      return (
        <div className='motd'>
          <h3>{motd.message}</h3>
          <h3>— {motd.author}</h3>
        </div>
      )
    });

    return (
      <div>
        <h1>{motds}</h1>
      </div>
    )
  }
});
