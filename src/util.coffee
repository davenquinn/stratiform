import {Component} from 'react'
import h from 'react-hyperscript'

SVGComponent = (props)->
  # Helper to apply XMLNS to svg component created with react
  xmlns = "http://www.w3.org/2000/svg"
  h 'svg', {props..., xmlns}

export {SVGComponent}
