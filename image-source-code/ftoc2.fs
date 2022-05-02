open Mathil.Colours
open Mathil.MathematicalObjects
open Mathil.Rendering
open Mathil.CompoundShapes
open Mathil.Bitmap

let resolution = (4200, 3000)
let boundingBox = (createPoint (-1.0, -2.0), createPoint (Constants.pi + 1.0, 2.0))
let backgroundColour = CSSColour.white

let blankScreen = createScreen resolution boundingBox backgroundColour

let sineFunction =
    createFunction Parametric.sin (0, Constants.pi)

let negativeCosineFunction =
    createFunction (fun t -> Point.negateY (Parametric.cos t)) (0, Constants.pi)

let negativeCosineEndpoints =
    [
        createPoint (Constants.pi, 1.0)
        createPoint (0.0, -1.0)
    ]

let horizontalAxis = createVector (createPoint (Constants.pi + 0.25, 0.0)) (createPoint (-0.25, 0.0)) 0.1 0.1
let verticalAxis = createVector (createPoint (0.0, 1.75)) (createPoint (0.0, -1.75)) 0.1 0.1



let shiftedAreaBox =
    createPolygon [createPoint (0.0, 2.0 / Constants.pi); createPoint (Constants.pi, 2.0 / Constants.pi); createPoint (Constants.pi, 0.0); createPoint (0.0, 0.0)]

blankScreen
|> renderFunction sineFunction (Colour.fromHex "#e74c3c") 5 2000 RenderingType.Round
|> renderManyVectors [horizontalAxis; verticalAxis] CSSColour.black 5 1000 RenderingType.Square
|> renderPolygonSides shiftedAreaBox (Colour.fromHex "#e74c3c") 5 2000 RenderingType.Round
|> renderManyPoints negativeCosineEndpoints (Colour.fromHex "#9b59b6") 20
|> colourFill (createPoint (Constants.pi / 2.0, 0.5)) (Colour.fromHex "#f2a59d")
|> colourFill (createPoint (3.0, 0.5)) (Colour.fromHex "#f2a59d")
|> colourFill (createPoint (0.1, 0.5)) (Colour.fromHex "#f2a59d")
|> renderFunction negativeCosineFunction (Colour.fromHex "#9b59b6") 5 2000 RenderingType.Round