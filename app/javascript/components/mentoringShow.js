import React from "react"
import PropTypes from "prop-types"

class mentoringShow extends React.Component {
    render () {
      return (
        <React.Fragment>
          <h1>안녕! 수업내용은 : {this.props.data.title}</h1>
        </React.Fragment>
      );
    }
  }

mentoringShow.propTypes = {
data: PropTypes.string
};

export default mentoringShow