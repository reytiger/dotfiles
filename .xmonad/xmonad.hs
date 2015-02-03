import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run

main = do
xmproc <- spawnPipe "/usr/bin/xmobar /home/rey/.xmonad/xmobarrc"
xmonad $ defaultConfig { layoutHook = smartBorders $ layoutHook defaultConfig }
    {
        terminal        = "terminology"
        , modMask       = mod1Mask
        , borderWidth   = 2
    }
