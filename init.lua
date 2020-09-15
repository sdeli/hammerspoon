hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

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
		open location "https://github.com/cloudstorm"
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
		open location "https://keep.google.com/"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "i", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://cloudstorm.atlassian.net/jira/software/projects/NDEV/boards/31?assignee=5dc0339a16a90b0df7c6c781"
	end tell]])
end)

hs.hotkey.bind({"shift", "option"}, "s", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://projects.invisionapp.com/d/main#/projects/prototypes/19224843"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "s", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://angol-magyar-szotar.hu/"
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

hs.hotkey.bind({"option"}, "s", function()
    hs.applescript([[
      set TheNameOfTheWindowYouSeek to "/Users/sandordeli/Desktop"

      tell application "Finder"
        set allwindows to get every window
      end tell
      
      repeat with i in allwindows
        if i's name is TheNameOfTheWindowYouSeek then
          tell application "Finder" to close i
        end if
      end repeat
      
      do shell script "open /Users/sandordeli/Desktop"
    ]])
end)

hs.hotkey.bind({"shift", "cmd"}, "t", function()
    hs.applescript([[tell application "Terminal"
    activate
end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "x", function()
    hs.applescript([[tell application "System Events"
    tell application "Google Chrome"
      make new window
      activate
    end tell
  end tell]])
end)

hs.hotkey.bind({"shift", "option"}, "q", function()
  hs.execute([[   
    /Users/sandordeli/Projects/usr-local-bin/click_arrow.sh
  ]])
end)