import XMonad

main = xmonad defaultConfig
    {
        terminal        = "terminology"
        , modMask       = mod4Mask
        , borderWidth   = 3
    }
