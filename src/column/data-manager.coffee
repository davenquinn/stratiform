###
# This file houses data managers for an individual stratigraphic column's
# internal data, including surfaces, scales, etc.
###
import {Component, createContext} from 'react'

ColumnLayoutContext = createContext({})
ColumnLayoutConsumer = ColumnLayoutContext.Consumer

class ColumnLayoutManager extends Component
  ###
  # Manager for column scaling and display data which should be shared
  # between all columns in a set
  # (e.g. size, level of generalization, pixel scale)
  ###

ColumnDataContext = createContext({})
ColumnDataConsumer = ColumnDataContext.Consumer

class ColumnDataManager extends Component
  render: ->
    {surfaces} = @props
    value = {}
    h ColumnDataContext.Provider, {value, children}

export {
  ColumnLayoutManager
  ColumnLayoutConsumer
  ColumnDataManager
  ColumnDataConsumer
}

