var Motd = React.createClass({
  checkForNextMotd: function() {
    $.getJSON('/api/v1/motds/current', (response) => {
      attr = response.data.attributes
      this.setState({
        author: attr.author,
        message: attr.message
      });
    }.bind(this));
  },

  getInitialState() {
    return {
      author: '',
      message: ''
    };
  },

  componentDidMount: function() {
    this.checkForNextMotd();
    setInterval(this.checkForNextMotd, this.props.pollInterval);
  },

  render: function() {
    return (
    <div className='motd'>
      <h3>{this.state.message}</h3>
      <h3>— {this.state.author}</h3>
    </div>
    )
  }
});
