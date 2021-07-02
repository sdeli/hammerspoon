hs.hotkey.bind({"shift", "cmd"}, "a", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://www.youtube.com/"
	end tell]])
end)

hs.hotkey.bind({"shift", "option"}, "w", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://eu-central-1.console.aws.amazon.com/console/home?region=eu-central-1#"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "g", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://mail.google.com/mail/u/0/#inbox"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "b", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://bitbucket.it.ewerk.com/projects/UBA/repos/platform-ui/browse"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "d", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://drive.google.com/drive/my-drive"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "n", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://nodejs.org/docs/latest-v10.x/api/"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "h", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://github.com"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "l", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://calendar.google.com/calendar/r"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "e", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://www.udemy.com/"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "k", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://keep.google.com/u/0/"
end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "i", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://app.clubhouse.io/s1seven/stories/space/1395/everything"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "m", function()
  hs.execute('/Users/sandordeli/Projects/usr-local-bin/imm')
end)

hs.hotkey.bind({"shift", "option"}, "c", function()
  hs.execute('/Users/sandordeli/Projects/usr-local-bin/toggle-dashes-on-clipboard.sh')
end)

hs.hotkey.bind({"shift", "option"}, "u", function()
  hs.execute('/Users/sandordeli/Projects/usr-local-bin/to-uppercase-clipboard.sh')
end)

-- hs.hotkey.bind({"shift", "option"}, "s", function()
--     hs.applescript([[tell application "Google Chrome"
-- 		open location "https://projects.invisionapp.com/d/main#/projects/prototypes/19224843"
-- 	end tell]])
-- end)

hs.hotkey.bind({"shift", "cmd"}, "s", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://en.bab.la/dictionary/english-hungarian/preamble"
end tell]])
end)

hs.hotkey.bind({"option"}, "e", function()
    hs.applescript([[
        set targetFolder to ((path to desktop) as text) & "/Users/sandordeli"

        tell application "Finder"
            set aWin to make new Finder window --with properties {target:targetFolder}
            activate
            set aWin's target to targetFolder
        end tell
    ]])
end)

hs.hotkey.bind({"option"}, "1", function()
    hs.applescript([[
      set TheNameOfTheWindowYouSeek to "/Users/sandordeli/Documents/screenshots"

      tell application "Finder"
        set allwindows to get every window
      end tell
      
      repeat with i in allwindows
        if i's name is TheNameOfTheWindowYouSeek then
          tell application "Finder" to close i
        end if
      end repeat
      
      do shell script "open /Users/sandordeli/Documents/screenshots"
    ]])
end)

hs.hotkey.bind({"option"}, "2", function()
    hs.applescript([[
      set TheNameOfTheWindowYouSeek to "/Applications"

      tell application "Finder"
        set allwindows to get every window
      end tell
      
      repeat with i in allwindows
        if i's name is TheNameOfTheWindowYouSeek then
          tell application "Finder" to close i
        end if
      end repeat
      
      do shell script "open /Applications"
    ]])
end)

hs.hotkey.bind({"option"}, "§", function()
    hs.applescript([[
      set TheNameOfTheWindowYouSeek to "/Users/sandordeli/Downloads"

      tell application "Finder"
        set allwindows to get every window
      end tell
      
      repeat with i in allwindows
        if i's name is TheNameOfTheWindowYouSeek then
          tell application "Finder" to close i
        end if
      end repeat
      
      do shell script "open /Users/sandordeli/Downloads"
    ]])
end)

hs.hotkey.bind({"shift", "cmd"}, "t", function()
  hs.execute("open -n -a Terminal")
end)

hs.hotkey.bind({"shift", "option"}, "n", function()
  hs.execute('/usr/local/bin/code -n "/Volumes/GoogleDrive/My Drive/"')
end)

hs.hotkey.bind({"shift", "cmd"}, "n", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://nemet-magyar-szotar.hu/"
end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "x", function()
  -- hs.execute("open -na 'Google Chrome' --args --profile-directory='Profile 1'")
  hs.applescript([[tell application "System Events"
  tell application "Google Chrome"
    make new window
    activate
  end tell
end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "q", function()
  hs.execute("/Users/sandordeli/Projects/usr-local-bin/click_arrow.sh")
end)

hs.hotkey.bind({"shift", "option"}, "q", function()
  hs.execute([[   
    /Users/sandordeli/Projects/usr-local-bin/click_arrow.sh
  ]])
end)

-- hs.hotkey.bind({"shift", "cmd"}, "]", function()
--   hs.applescript([[   
--     tell application "Terminal"
--   activate
--   do script "bash /Users/sandordeli/Projects/usr-local-bin/mov-to-gif.sh & exit"
--   -- // write user's password
--   -- // write some linux commands to remote server
-- end tell
--   ]])
--   hs.applescript([[   
--     tell application "iTerm2"
--   activate
--   exec command "/Users/sandordeli/Projects/usr-local-bin/mov-to-gif.sh & exit"
-- end tell
--   ]])
  -- hs.applescript([[   
  -- do script "bash /Users/sandordeli/Projects/usr-local-bin/mov-to-gif.sh & exit"
  -- -- // write user's password
  -- -- // write some linux commands to remote server
  -- ]])
-- end)

-- hs.hotkey.bind({"ctrl", "option", "cmd"}, "up", function()
--   hs.execute([[   
--     /Users/sandordeli/Projects/usr-local-bin/reposition-windows-on-left.sh left &
--     /Users/sandordeli/Projects/usr-local-bin/reposition-windows-on-right.sh left &
--   ]])
-- end)
-- hs.hotkey.bind({"ctrl", "option", "cmd"}, "down", function()
--   hs.execute([[   
--     /Users/sandordeli/Projects/usr-local-bin/reposition-windows-on-left.sh right &
--     /Users/sandordeli/Projects/usr-local-bin/reposition-windows-on-right.sh right &
--   ]])
-- end)

-- hs.hotkey.bind({"cmd", "option"}, ",", function()
--   hs.applescript([[   
--     beep 1
--   ]])
-- end)

-- hs.hotkey.bind({"cmd", "option", "ctrl"}, "up", function()
--   hs.applescript([[
--      on tillSideBySideWindows(direction)
--   tell application "System Events"
-- 		set allVisibleProcessNames to name of processes whose visible is true
		
-- 		repeat with processName in allVisibleProcessNames
			
-- 			set windowsOfCurrentApp to every window of application process processName
			
-- 			repeat with currentWindow in windowsOfCurrentApp
				
-- 				set currentWindowsSize to size of currentWindow
-- 				set currentWindowsWidth to item 1 of currentWindowsSize
				
-- 				set currentWindowsPosition to position of currentWindow
-- 				set currentWindowsLeftPos to item 1 of currentWindowsPosition
				
-- 				if currentWindowsLeftPos = 0 then
-- 					if direction = "right" then
-- 						set currentWindowsWidth to currentWindowsWidth + 30
-- 					else
-- 						set currentWindowsWidth to currentWindowsWidth - 30
-- 					end if
					
-- 					set currentWindowsHeight to item 2 of currentWindowsSize
-- 					set winName to name of currentWindow
-- 					set size of window winName of application process processName to {currentWindowsWidth, currentWindowsHeight}
-- 				end if
				
-- 				if (currentWindowsLeftPos + currentWindowsWidth) = 1680 then
-- 					set currentWindowsHeight to item 2 of currentWindowsSize
					
-- 					if direction = "right" then
-- 						set currentWindowsLeftPos to currentWindowsLeftPos + 30
-- 						set currentWindowsWidth to currentWindowsWidth - 30
-- 					else
-- 						set currentWindowsLeftPos to currentWindowsLeftPos - 30
-- 						set currentWindowsWidth to currentWindowsWidth + 30
-- 					end if
					
-- 					set winName to name of currentWindow
-- 					set position of window winName of application process processName to {currentWindowsLeftPos, 0}
-- 					set size of window winName of application process processName to {currentWindowsWidth, currentWindowsHeight}
-- 					get currentWindowsWidth
-- 				end if
-- 			end repeat
-- 		end repeat
-- 	end tell
	
-- end tillSideBySideWindows

-- tillSideBySideWindows("left")

-- ]])
-- end)

-- hs.hotkey.bind({"cmd", "option", "ctrl"}, "down", function()
--   hs.applescript([[
--      on tillSideBySideWindows(direction)
-- 	tell application "System Events"
-- 		set allVisibleProcessNames to name of processes whose visible is true
		
-- 		repeat with processName in allVisibleProcessNames
			
-- 			set windowsOfCurrentApp to every window of application process processName
			
-- 			repeat with currentWindow in windowsOfCurrentApp
				
-- 				set currentWindowsSize to size of currentWindow
-- 				set currentWindowsWidth to item 1 of currentWindowsSize
				
-- 				set currentWindowsPosition to position of currentWindow
-- 				set currentWindowsLeftPos to item 1 of currentWindowsPosition
				
-- 				if currentWindowsLeftPos = 0 then
-- 					if direction = "right" then
-- 						set currentWindowsWidth to currentWindowsWidth + 30
-- 					else
-- 						set currentWindowsWidth to currentWindowsWidth - 30
-- 					end if
					
-- 					set currentWindowsHeight to item 2 of currentWindowsSize
-- 					set winName to name of currentWindow
-- 					set size of window winName of application process processName to {currentWindowsWidth, currentWindowsHeight}
-- 				end if
				
-- 				if (currentWindowsLeftPos + currentWindowsWidth) = 1680 then
-- 					set currentWindowsHeight to item 2 of currentWindowsSize
					
-- 					if direction = "right" then
-- 						set currentWindowsLeftPos to currentWindowsLeftPos + 30
-- 						set currentWindowsWidth to currentWindowsWidth - 30
-- 					else
-- 						set currentWindowsLeftPos to currentWindowsLeftPos - 30
-- 						set currentWindowsWidth to currentWindowsWidth + 30
-- 					end if
					
-- 					set winName to name of currentWindow
-- 					set position of window winName of application process processName to {currentWindowsLeftPos, 0}
-- 					set size of window winName of application process processName to {currentWindowsWidth, currentWindowsHeight}
-- 					get currentWindowsWidth
-- 				end if
-- 			end repeat
-- 		end repeat
-- 	end tell
-- end tillSideBySideWindows

-- tillSideBySideWindows("right")
-- ]])
-- end)

-- hs.hotkey.bind({"cmd", "option"}, ",", function()
--   hs.applescript([[   
--     beep 1
--   ]])
-- end)