hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

hs.hotkey.bind({"shift", "cmd"}, "a", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://www.youtube.com/"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "s", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://angol-magyar-szotar.hu/"
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
		open location "https://cloudstorm.atlassian.net/jira/software/projects/NDEV/boards/31"
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "s", function()
    hs.applescript([[tell application "Google Chrome"
		open location "https://projects.invisionapp.com/d/main#/projects/prototypes/19224843"
	end tell]])
end)

hs.hotkey.bind({"alt"}, "e", function()
    hs.applescript([[
        set targetFolder to ((path to desktop) as text) & "/Users/sandordeli"

        tell application "Finder"
            set aWin to make new Finder window --with properties {target:targetFolder}
            activate
            set aWin's target to targetFolder
        end tell
    ]])
end)

hs.hotkey.bind({"shift", "cmd"}, "c", function()
    hs.applescript([[tell application "Calculator"
		activate
	end tell]])
end)

hs.hotkey.bind({"shift", "cmd"}, "t", function()
    hs.applescript([[tell application "Terminal"
    if not (exists window 1) then reopen
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

-- hs.hotkey.bind({"shift", "cmd"}, "e", function()
--     hs.applescript([[   
--         set targetFolder to POSIX file "/Users/sandordeli"´
--         tell application "Finder"
--             reveal targetFolder
--             activate
--         end tell
        
--     ]])
-- end)

-- hs.hotkey.bind({"shift", "cmd"}, "u", function()
--     hs.applescript("do shell script \"open /Users/sandordeli/\"")
-- end)

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.alert.show("Config loaded")
        hs.reload()
    end
end

myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

local currentWindowSet = {}
local windowCycler = nil

local wf = hs.window.filter.new(function(win)
    local fw = hs.window.focusedWindow()
    return (
      win:isStandard() and
      win:application() == fw:application() and
      win:screen() == fw:screen()
    )
  end)

local function makeTableCycler(t)
  local i = 1
  return function(d)
    local j = d and d < 0 and -2 or 0
    i = (i + j) % #t + 1
    local x = t[i]
    return x
  end
end

local function updateWindowCycler()
  
  -- if not hs.fnutils.contains(currentWindowSet, hs.window.focusedWindow()) then
    currentWindowSet = hs.window.allWindows()
    print(type(currentWindowSet))
    print('fuck')
    print(currentWindowSet[2]:application())
    printTable(currentWindowSet)
    -- print(dump(currentWindowSet))
    -- print(#currentWindowSet)
    -- printTable(currentWindowSet)
    -- windowCycler = makeTableCycler(currentWindowSet)
  -- end√printObj
end

hs.hotkey.bind('alt', "tab", function()
    updateWindowCycler()
    windowCycler():focus()
  end)

hs.hotkey.bind('alt', "§", function()
  print('funck')
    updateWindowCycler()
    -- windowCycler(-1):focus()
  end)
  print('funck')

  function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

 function printTable(tabel)
    -- for k,v in ipairs(tabel) do
    --     print(k,v)
    -- end
    
    -- table.sort(tabel)
    -- print("sorted table")
    
    for k,v in ipairs(tabel) do
        print(k,v)
    end
 end