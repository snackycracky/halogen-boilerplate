module Main where

import Prelude

import Effect (Effect, liftEff)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)
import Layouts.Main (component, matchRoutes)

main :: Effect Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  app <- runUI component unit body
  liftEff $ matchRoutes app