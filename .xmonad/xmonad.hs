import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)

main = do
  xmproc <- spawnPipe "/usr/bin/xmobar /home/rey/.xmonad/xmobarrc"
  xmonad $ defaultConfig{ layoutHook = smartBorders $ layoutHook defaultConfig
    , manageHook = manageHook defaultConfig <+> manageDocks }
    {
      terminal          = "terminology"
    , modMask           = mod4Mask
    , borderWidth       = 3
    , focusedBorderColor = "#248F24"
    }
