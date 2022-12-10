hs.hotkey.bind({"shift", "option"}, "t", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://ads.google.com/aw/keywordplanner/home?ocid=681900448&__u=3057801635&__c=1346120352&authuser=0"
	end tell]])
end)

hs.hotkey.bind({"shift", "option"}, "a", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://ads.google.com/aw/changehistory?ocid=1030815110&scorecardState=0&authuser=0&__u=3057801635&__c=4590578390&tableState=EgAyEgoHCOYPEAgYAhIHCOYPEAkYEQ%3D%3D"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "a", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://www.youtube.com/"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "i", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://trello.com/b/Jv3ZsLsq/main-board"
end tell]])
end)

hs.hotkey.bind({"shift", "option"}, "p", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://trello.com/b/SfajUbei/ppc"
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

hs.hotkey.bind({"shift", "cmd"}, "m", function()
  hs.execute('/Users/sandordeli/Projects/usr-local-bin/imm')
end)

hs.hotkey.bind({"shift", "option"}, "c", function()
  hs.execute('/Users/sandordeli/Projects/usr-local-bin/toggle-dashes-on-clipboard.sh')
end)

hs.hotkey.bind({"shift", "option"}, "u", function()
  hs.execute('/Users/sandordeli/Projects/usr-local-bin/to-uppercase-clipboard.sh')
end)

hs.hotkey.bind({"shift", "cmd"}, "s", function()
  hs.applescript([[tell application "Google Chrome"
  open location "https://en.bab.la/dictionary/english-hungarian/preamble"
end tell]])
end)

hs.hotkey.bind({"cmd"}, "e", function()
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
  hs.execute("open -n /Users/sandordeli/Downloads")
end)
hs.hotkey.bind({"shift", "cmd"}, "t", function()
  hs.execute("open -n -a iTerm")
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

hs.hotkey.bind({"cmd"}, "1", function()
  hs.eventtap.keyStroke({"ctrl", 'shift'}, "tab")
end)

hs.hotkey.bind({"cmd"}, "2", function()
  hs.eventtap.keyStroke({"ctrl"}, "tab")
end)
