import XMonad
import XMonad.Layout.NoBorders

main = xmonad $ defaultConfig { layoutHook = smartBorders $ layoutHook defaultConfig }
    {
        terminal        = "terminology"
        , modMask       = mod4Mask
        , borderWidth   = 2
    }
