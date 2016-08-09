var oldMotd = React.createClass({
  propTypes: {
    author: React.PropTypes.string,
    message: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Author: {this.props.author}</div>
        <div>Message: {this.props.message}</div>
      </div>
    );
  }
});
