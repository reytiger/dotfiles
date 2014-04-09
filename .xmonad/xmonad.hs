import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/rey/.xmobarrc"
    xmonad $ defaultConfig
	{
        terminal = "terminology"
        , modMask=mod4Mask
        , borderWidth = 3
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , manageHook = manageHook defaultConfig <+> manageDocks
	}
    `additionalKeys`
    [
        ((mod4Mask, xK_w), spawn $ "/usr/bin/sudo -S /usr/bin/connman_dmenu")
    ]
