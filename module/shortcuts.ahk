; * -------- 被动 -------- *
~Esc:: {
}

; ; ctrl + [ 映射为 esc
^[:: {
  Send("{Esc}")
}

; * -------- 日常 -------- *

; ctrl + r -> f2
^r:: Send("{f2}")

; alt + d -> win + d 
$!d:: Send("#d")

; alt + q -> alt + f4
!q:: Send("!{f4}")

; alt + n -> 最小化当前窗口
!n:: WinMinimize("A")

; alt + m -> 最大化、还原窗口
!m:: {
  S := WinGetMinMax("A")
  if (S = 0)
    WinMaximize("A")
  else if (S = 1)
    WinRestore("A")
  else if (S = -1)
    WinRestore("A")
}

; * -------- 移动 -------- *

; 左
^h:: Send("{Left}")        ; ctrl + h -> left
^!h:: Send("^{Left}")      ; ctrl + alt + h -> ctrl + left
^+h:: Send("+{Left}")      ; ctrl + shift + h -> shift + left
^!+h:: Send("^+{Left}")    ; ctrl  + shift + alt + h -> ctrl + shift + left

; 右
^l:: Send("{Right}")
^!l:: Send("^{Right}")
^+l:: Send("+{Right}")
^!+l:: Send("^+{Right}")

; 上
^k:: Send("{Up}")
^+k:: Send("+{Up}")

; 下
^j:: Send("{Down}")
^+j:: Send("+{Down}")

; HOME
^i:: Send("{Home}")
^+i:: Send("+{Home}")

; END
^o:: Send("{End}")
^+o:: Send("+{End}")

; * -------- chrome -------- *
#HotIf WinActive("ahk_exe chrome.exe") && WinGetProcessName("ahk_exe chrome.exe")
; ctrl + d -> 聚焦地址栏
^d:: Send("!d")

~^r:: Send("{Raw}") 
#HotIf