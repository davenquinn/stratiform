import {Component} from 'react'
import {findDOMNode} from 'react-dom'
import h from 'react-hyperscript'
import {select} from 'd3-selection'
import {axisLeft} from 'd3-axis'
import {scaleIdentity} from 'd3-scale'

class ColumnAxis extends Component
  @defaultProps: {
    scale: scaleIdentity()
    ticks: 4
  }
  render: ->
    h 'g.y.axis'
  componentDidUpdate: ->
    @yAxis
      .scale @props.scale
      .ticks @props.ticks
    select findDOMNode @
      .call @yAxis
  componentDidMount: ->
    @yAxis = axisLeft()
    @componentDidUpdate()

export {ColumnAxis}
