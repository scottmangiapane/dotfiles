import XMonad

-- Hooks
import XMonad.Hooks.ManageDocks

-- Layouts
import XMonad.Layout.BinarySpacePartition
import XMonad.Layout.Gaps
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing

-- Utils
import XMonad.Util.EZConfig
import XMonad.Util.Run(spawnPipe)

myKeys =
	[	-- rofi
		("M-r", spawn "rofi -show run"),
		-- windows
		("M-<Space>", sendMessage Swap),
		("M-<Return>", sendMessage Rotate),
		("M-h", sendMessage $ ExpandTowards L),
		("M-j", sendMessage $ ExpandTowards D),
		("M-k", sendMessage $ ExpandTowards U),
		("M-l", sendMessage $ ExpandTowards R)
	]

myLayout = avoidStruts $ noBorders $ spacing 10 $ gaps [(U,50), (D,50), (L,60), (R,60)] $ emptyBSP

main = do
	spawnPipe "feh --bg-scale '/home/scottmangiapane/Pictures/Wallpaper/lake.jpg'"
	xmonad $ defaults `additionalKeysP` myKeys

defaults = def {
	layoutHook = myLayout,
	modMask = mod4Mask,
	terminal = "gnome-terminal"
}
