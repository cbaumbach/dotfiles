import XMonad

main = xmonad $ defaultConfig
    { modMask = mod4Mask        -- use super as mod key
    }

-- The output of a raw "xmodmap" shows that super corresponds to mod4
-- and hyper to mod5.
