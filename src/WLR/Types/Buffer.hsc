{-# LANGUAGE EmptyDataDeriving #-}

module WLR.Types.Buffer where

#define WLR_USE_UNSTABLE
#include <wlr/types/wlr_buffer.h>

import Foreign
import Foreign.C.Types

import WL.ServerCore
import WLR.Util.Addon

{{ struct wlr/types/wlr_buffer.h, wlr_buffer_impl }}

{{ struct
    wlr/types/wlr_buffer.h,
    wlr_buffer,
    impl, Ptr WLR_buffer_impl,
    width, CInt,
    height, CInt,
    dropped, CBool,
    n_locks, CSize,
    accessing_data_ptr, CBool,
    events destroy, WL_signal,
    events release, WL_signal,
    addons, WLR_addon_set
}}
