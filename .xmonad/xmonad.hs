import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
--import XMonad.Util.Run(spawnPipe)


myManageHook = composeAll
        [ className =? "hl2_linux" --> doFullFloat
        , className =? "csgo_linux" --> doFullFloat
        , manageDocks
        ]

myLayoutHook = layoutHook defaultConfig ||| noBorders Full

main = do
  --xmproc <- spawnPipe "/usr/bin/xmobar /home/rey/.xmonad/xmobarrc"
  xmonad $ defaultConfig{ layoutHook = myLayoutHook }
    {
      terminal          = "terminology"
    , modMask           = mod1Mask
    , borderWidth       = 3
    , focusedBorderColor = "#248F24"
    , clickJustFocuses  = True
    , manageHook = myManageHook <+> manageHook defaultConfig
    }
