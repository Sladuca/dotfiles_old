import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog

myBar = "xmobar"
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)
myConfig = desktopConfig { modMask = mod4Mask, terminal = "alacritty" }
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

