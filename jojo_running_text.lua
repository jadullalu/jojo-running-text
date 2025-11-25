--==================================================
--  JOJO RUNNING TEXT - LITE + SIMPLE KEY
--  MOBILE + AUTO COLOR + PAUSE + 10 LINES + MINIMIZE
--==================================================

local REQUIRED_KEY = "JOJO-TEXT-123"  -- <<< GANTI KEY DI SINI

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local speaker = Players.LocalPlayer
local PlayerGui = speaker:WaitForChild("PlayerGui")

----------------------------------------------------
-- FUNGSI UI UTAMA (SCRIPT KAMU YANG LITE)
----------------------------------------------------
local function startMainUI()
    --==================== MAIN GUI ====================

    local main = Instance.new("ScreenGui")
    main.Name = "JojoRunningTextLiteMobile"
    main.ResetOnSpawn = false
    main.Parent = PlayerGui

    local PANEL_WIDTH  = 290
    local PANEL_HEIGHT = 230

    local Frame = Instance.new("Frame")
    Frame.Name = "MainFrame"
    Frame.Parent = main
    Frame.BackgroundColor3 = Color3.fromRGB(26, 27, 35)
    Frame.BackgroundTransparency = 0.15
    Frame.BorderSizePixel = 0
    Frame.AnchorPoint = Vector2.new(0.5, 0)
    Frame.Position = UDim2.new(0.5, 0, 0.15, 0)
    Frame.Size = UDim2.new(0, PANEL_WIDTH, 0, PANEL_HEIGHT)
    Frame.Active = true
    Frame.Draggable = true

    local frameCorner = Instance.new("UICorner")
    frameCorner.CornerRadius = UDim.new(0, 10)
    frameCorner.Parent = Frame

    --==================== TITLE ====================

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = Frame
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 12, 0, 4)
    TitleLabel.Size = UDim2.new(1, -90, 0, 26)
    TitleLabel.Font = Enum.Font.SourceSansBold
    TitleLabel.Text = "JOJO - Running Text"
    TitleLabel.TextColor3 = Color3.fromRGB(230, 235, 255)
    TitleLabel.TextSize = 18
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- CLOSE BUTTON

    local closebutton = Instance.new("TextButton")
    closebutton.Name = "Close"
    closebutton.Parent = Frame
    closebutton.BackgroundColor3 = Color3.fromRGB(220, 70, 80)
    closebutton.BorderSizePixel = 0
    closebutton.Font = Enum.Font.SourceSansBold
    closebutton.Size = UDim2.new(0, 28, 0, 24)
    closebutton.Text = "X"
    closebutton.TextSize = 18
    closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closebutton.Position = UDim2.new(1, -32, 0, 4)

    local closeCorner = Instance.new("UICorner")
    closeCorner.CornerRadius = UDim.new(0, 6)
    closeCorner.Parent = closebutton

    -- MINIMIZE BUTTON

    local miniButton = Instance.new("TextButton")
    miniButton.Name = "Minimize"
    miniButton.Parent = Frame
    miniButton.BackgroundColor3 = Color3.fromRGB(70, 80, 110)
    miniButton.BorderSizePixel = 0
    miniButton.Font = Enum.Font.SourceSansBold
    miniButton.Size = UDim2.new(0, 28, 0, 24)
    miniButton.Text = "-"
    miniButton.TextSize = 18
    miniButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    miniButton.Position = UDim2.new(1, -64, 0, 4)

    local miniCorner = Instance.new("UICorner")
    miniCorner.CornerRadius = UDim.new(0, 6)
    miniCorner.Parent = miniButton

    --==================== RUNNING TEXT SWITCH ====================

    local rtTitleLabel = Instance.new("TextLabel")
    rtTitleLabel.Parent = Frame
    rtTitleLabel.BackgroundTransparency = 1
    rtTitleLabel.Position = UDim2.new(0, 12, 0, 34)
    rtTitleLabel.Size = UDim2.new(0, 150, 0, 22)
    rtTitleLabel.Font = Enum.Font.SourceSansBold
    rtTitleLabel.Text = "Running Text"
    rtTitleLabel.TextColor3 = Color3.fromRGB(200, 205, 230)
    rtTitleLabel.TextSize = 16
    rtTitleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local rtToggleButton = Instance.new("TextButton")
    rtToggleButton.Name = "RunningTextToggle"
    rtToggleButton.Parent = Frame
    rtToggleButton.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
    rtToggleButton.BorderSizePixel = 0
    rtToggleButton.AutoButtonColor = true
    rtToggleButton.Size = UDim2.new(0, 90, 0, 24)
    rtToggleButton.Font = Enum.Font.SourceSans
    rtToggleButton.Text = ""
    rtToggleButton.TextSize = 12
    rtToggleButton.TextColor3 = Color3.fromRGB(230, 235, 255)
    rtToggleButton.Position = UDim2.new(1, -104, 0, 34)

    local rtToggleCorner = Instance.new("UICorner")
    rtToggleCorner.CornerRadius = UDim.new(0, 6)
    rtToggleCorner.Parent = rtToggleButton

    local rtSwitchBack = Instance.new("Frame")
    rtSwitchBack.Name = "SwitchBack"
    rtSwitchBack.Parent = rtToggleButton
    rtSwitchBack.BackgroundColor3 = Color3.fromRGB(80, 80, 95)
    rtSwitchBack.BorderSizePixel = 0
    rtSwitchBack.Size = UDim2.new(0, 44, 0, 18)
    rtSwitchBack.Position = UDim2.new(0.5, -22, 0.5, -9)

    local rtSwitchBackCorner = Instance.new("UICorner")
    rtSwitchBackCorner.CornerRadius = UDim.new(1, 0)
    rtSwitchBackCorner.Parent = rtSwitchBack

    local rtSwitchKnob = Instance.new("Frame")
    rtSwitchKnob.Name = "SwitchKnob"
    rtSwitchKnob.Parent = rtSwitchBack
    rtSwitchKnob.BackgroundColor3 = Color3.fromRGB(220, 220, 235)
    rtSwitchKnob.BorderSizePixel = 0
    rtSwitchKnob.Size = UDim2.new(0, 20, 0, 18)
    rtSwitchKnob.Position = UDim2.new(0, 2, 0, 0)

    local rtSwitchKnobCorner = Instance.new("UICorner")
    rtSwitchKnobCorner.CornerRadius = UDim.new(1, 0)
    rtSwitchKnobCorner.Parent = rtSwitchKnob

    --==================== INPUT PESAN ====================

    local rtMessageBox = Instance.new("TextBox")
    rtMessageBox.Name = "RT_Message"
    rtMessageBox.Parent = Frame
    rtMessageBox.BackgroundColor3 = Color3.fromRGB(35, 40, 55)
    rtMessageBox.BorderSizePixel = 0
    rtMessageBox.Position = UDim2.new(0, 12, 0, 62)
    rtMessageBox.Size = UDim2.new(0, 266, 0, 80)
    rtMessageBox.Font = Enum.Font.SourceSans
    rtMessageBox.Text = "Tulis pesan di sini (mobile)"
    rtMessageBox.TextColor3 = Color3.fromRGB(230, 235, 255)
    rtMessageBox.TextSize = 14
    rtMessageBox.ClearTextOnFocus = false
    rtMessageBox.TextXAlignment = Enum.TextXAlignment.Left
    rtMessageBox.TextYAlignment = Enum.TextYAlignment.Top
    rtMessageBox.MultiLine = true
    rtMessageBox.TextWrapped = true

    local rtMsgCorner = Instance.new("UICorner")
    rtMsgCorner.CornerRadius = UDim.new(0, 6)
    rtMsgCorner.Parent = rtMessageBox

    --==================== SIZE / SPEED / PAUSE ====================

    local sizeRowY = 148

    local rtSizeBox = Instance.new("TextBox")
    rtSizeBox.Name = "RT_Size"
    rtSizeBox.Parent = Frame
    rtSizeBox.BackgroundColor3 = Color3.fromRGB(35, 40, 55)
    rtSizeBox.BorderSizePixel = 0
    rtSizeBox.Position = UDim2.new(0, 12, 0, sizeRowY)
    rtSizeBox.Size = UDim2.new(0, 52, 0, 22)
    rtSizeBox.Font = Enum.Font.SourceSans
    rtSizeBox.Text = "24"
    rtSizeBox.TextColor3 = Color3.fromRGB(230, 235, 255)
    rtSizeBox.TextSize = 14
    rtSizeBox.ClearTextOnFocus = false

    local rtSizeCorner = Instance.new("UICorner")
    rtSizeCorner.CornerRadius = UDim.new(0, 6)
    rtSizeCorner.Parent = rtSizeBox

    local rtSizeLabel = Instance.new("TextLabel")
    rtSizeLabel.Parent = Frame
    rtSizeLabel.BackgroundTransparency = 1
    rtSizeLabel.Position = UDim2.new(0, 12 + 52 + 4, 0, sizeRowY)
    rtSizeLabel.Size = UDim2.new(0, 36, 0, 22)
    rtSizeLabel.Font = Enum.Font.SourceSans
    rtSizeLabel.Text = "Size"
    rtSizeLabel.TextColor3 = Color3.fromRGB(200, 205, 230)
    rtSizeLabel.TextSize = 14
    rtSizeLabel.TextXAlignment = Enum.TextXAlignment.Left

    local rtSpeedBox = Instance.new("TextBox")
    rtSpeedBox.Name = "RT_Speed"
    rtSpeedBox.Parent = Frame
    rtSpeedBox.BackgroundColor3 = Color3.fromRGB(35, 40, 55)
    rtSpeedBox.BorderSizePixel = 0
    rtSpeedBox.Position = UDim2.new(0, 110, 0, sizeRowY)
    rtSpeedBox.Size = UDim2.new(0, 52, 0, 22)
    rtSpeedBox.Font = Enum.Font.SourceSans
    rtSpeedBox.Text = "100"
    rtSpeedBox.TextColor3 = Color3.fromRGB(230, 235, 255)
    rtSpeedBox.TextSize = 14
    rtSpeedBox.ClearTextOnFocus = false

    local rtSpeedCorner = Instance.new("UICorner")
    rtSpeedCorner.CornerRadius = UDim.new(0, 6)
    rtSpeedCorner.Parent = rtSpeedBox

    local rtSpeedLabel = Instance.new("TextLabel")
    rtSpeedLabel.Parent = Frame
    rtSpeedLabel.BackgroundTransparency = 1
    rtSpeedLabel.Position = UDim2.new(0, 110 + 52 + 4, 0, sizeRowY)
    rtSpeedLabel.Size = UDim2.new(0, 48, 0, 22)
    rtSpeedLabel.Font = Enum.Font.SourceSans
    rtSpeedLabel.Text = "Speed"
    rtSpeedLabel.TextColor3 = Color3.fromRGB(200, 205, 230)
    rtSpeedLabel.TextSize = 14
    rtSpeedLabel.TextXAlignment = Enum.TextXAlignment.Left

    local pauseButton = Instance.new("TextButton")
    pauseButton.Name = "PauseButton"
    pauseButton.Parent = Frame
    pauseButton.BackgroundColor3 = Color3.fromRGB(90, 150, 220)
    pauseButton.BorderSizePixel = 0
    pauseButton.Position = UDim2.new(0, 220, 0, sizeRowY)
    pauseButton.Size = UDim2.new(0, 58, 0, 22)
    pauseButton.Font = Enum.Font.SourceSansBold
    pauseButton.Text = "Pause"
    pauseButton.TextSize = 14
    pauseButton.TextColor3 = Color3.fromRGB(10, 15, 20)

    local pauseCorner = Instance.new("UICorner")
    pauseCorner.CornerRadius = UDim.new(0, 6)
    pauseCorner.Parent = pauseButton

    --==================== POSISI (TOP / MID / BOT) ====================

    local posRowY = 176

    local posLabel = Instance.new("TextLabel")
    posLabel.Parent = Frame
    posLabel.BackgroundTransparency = 1
    posLabel.Position = UDim2.new(0, 12, 0, posRowY)
    posLabel.Size = UDim2.new(0, 60, 0, 20)
    posLabel.Font = Enum.Font.SourceSans
    posLabel.Text = "Posisi"
    posLabel.TextColor3 = Color3.fromRGB(200, 205, 230)
    posLabel.TextSize = 14
    posLabel.TextXAlignment = Enum.TextXAlignment.Left

    local posButtons = {}
    local posNames = {"Top", "Mid", "Bot"}
    local posAnchors = {0.25, 0.5, 0.8}

    for i, name in ipairs(posNames) do
        local btn = Instance.new("TextButton")
        btn.Parent = Frame
        btn.Text = name
        btn.Name = "Pos_" .. name
        btn.Font = Enum.Font.SourceSansBold
        btn.TextSize = 12
        btn.TextColor3 = Color3.fromRGB(230, 235, 255)
        btn.BackgroundColor3 = Color3.fromRGB(50, 55, 75)
        btn.BorderSizePixel = 0
        btn.Size = UDim2.new(0, 52, 0, 20)
        btn.Position = UDim2.new(0, 72 + (i-1)*56, 0, posRowY)

        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, 6)
        c.Parent = btn

        posButtons[name] = btn
    end

    --==================== GUI OVERLAY RUNNING TEXT ====================

    local rtGui = Instance.new("ScreenGui")
    rtGui.Name = "RunningTextGui"
    rtGui.ResetOnSpawn = false
    rtGui.Parent = PlayerGui

    local rtLabel = Instance.new("TextLabel")
    rtLabel.Parent = rtGui
    rtLabel.BackgroundTransparency = 1
    rtLabel.TextColor3 = Color3.new(1, 1, 1)
    rtLabel.TextStrokeTransparency = 0.3
    rtLabel.Font = Enum.Font.SourceSansBold
    rtLabel.Text = "Running Text"
    rtLabel.TextSize = 24
    rtLabel.Size = UDim2.new(0, 400, 0, 100)
    rtLabel.Visible = false
    rtLabel.TextXAlignment = Enum.TextXAlignment.Center
    rtLabel.TextYAlignment = Enum.TextYAlignment.Center
    rtLabel.TextWrapped = true

    --==================== VARIABEL ====================

    local rtEnabled = false
    local rtPaused = false
    local rtSpeed = 100
    local rtTextSize = 24
    local rtCurrentX = 0
    local rtVerticalAnchor = 0.5
    local isMinimized = false

    local MAX_RT_LINES = 10

    local colorCycle = {
        Color3.fromRGB(255,255,255),
        Color3.fromRGB(255,80,80),
        Color3.fromRGB(80,255,120),
        Color3.fromRGB(255,230,100),
        Color3.fromRGB(120,210,255),
    }
    local colorIndex = 1
    local colorTimer = 0
    local colorInterval = 0.6

    --==================== FUNGSI BANTU ====================

    local function applyRTSwitchVisual()
        if rtEnabled then
            rtSwitchBack.BackgroundColor3 = Color3.fromRGB(80, 190, 120)
            rtSwitchKnob.Position = UDim2.new(1, -22, 0, 0)
        else
            rtSwitchBack.BackgroundColor3 = Color3.fromRGB(80, 80, 95)
            rtSwitchKnob.Position = UDim2.new(0, 2, 0, 0)
        end
    end

    local function updateRTSettings()
        rtTextSize = tonumber(rtSizeBox.Text) or 24
        rtSpeed = tonumber(rtSpeedBox.Text) or 100
        rtLabel.TextSize = rtTextSize

        local msg = rtMessageBox.Text
        if msg == "" then
            msg = "Running Text"
        end
        rtLabel.Text = msg

        local cam = workspace.CurrentCamera
        local screenW = cam and cam.ViewportSize.X or 800
        local maxWidth = math.min(600, screenW - 80)

        local maxHeight = rtTextSize * MAX_RT_LINES + 40
        rtLabel.Size = UDim2.new(0, maxWidth, 0, maxHeight)
    end

    local function setPosButtonsVisual(selectedName)
        for name, btn in pairs(posButtons) do
            if name == selectedName then
                btn.BackgroundColor3 = Color3.fromRGB(90, 150, 220)
            else
                btn.BackgroundColor3 = Color3.fromRGB(50, 55, 75)
            end
        end
    end

    local function setMainContentVisible(state)
        rtTitleLabel.Visible = state
        rtToggleButton.Visible = state
        rtMessageBox.Visible = state
        rtSizeBox.Visible = state
        rtSizeLabel.Visible = state
        rtSpeedBox.Visible = state
        rtSpeedLabel.Visible = state
        posLabel.Visible = state
        for _, btn in pairs(posButtons) do
            btn.Visible = state
        end
        pauseButton.Visible = state
    end

    --==================== POSISI BUTTON CLICK ====================

    for i, name in ipairs(posNames) do
        local btn = posButtons[name]
        local anchor = posAnchors[i]

        btn.MouseButton1Click:Connect(function()
            rtVerticalAnchor = anchor
            setPosButtonsVisual(name)
        end)
    end

    setPosButtonsVisual("Mid")

    --==================== PAUSE BUTTON LOGIC ====================

    pauseButton.MouseButton1Click:Connect(function()
        rtPaused = not rtPaused
        if rtPaused then
            pauseButton.Text = "Resume"
            pauseButton.BackgroundColor3 = Color3.fromRGB(200, 160, 80)
        else
            pauseButton.Text = "Pause"
            pauseButton.BackgroundColor3 = Color3.fromRGB(90, 150, 220)
        end
    end)

    --==================== MINIMIZE BUTTON LOGIC ====================

    miniButton.MouseButton1Click:Connect(function()
        isMinimized = not isMinimized
        if isMinimized then
            Frame.Size = UDim2.new(0, PANEL_WIDTH, 0, 40)
            setMainContentVisible(false)
            miniButton.Text = "+"
        else
            Frame.Size = UDim2.new(0, PANEL_WIDTH, 0, PANEL_HEIGHT)
            setMainContentVisible(true)
            miniButton.Text = "-"
        end
    end)

    --==================== TOGGLE RUNNING TEXT ====================

    rtToggleButton.MouseButton1Click:Connect(function()
        rtEnabled = not rtEnabled
        applyRTSwitchVisual()

        if rtEnabled then
            rtPaused = false
            pauseButton.Text = "Pause"
            pauseButton.BackgroundColor3 = Color3.fromRGB(90, 150, 220)

            updateRTSettings()
            local cam = workspace.CurrentCamera
            local vpX = cam and cam.ViewportSize.X or 800
            rtCurrentX = vpX + 50
            rtLabel.Visible = true
        else
            rtLabel.Visible = false
        end
    end)

    --==================== GERAKAN + AUTO COLOR ====================

    RunService.RenderStepped:Connect(function(dt)
        if rtEnabled and rtLabel.Visible then
            local cam = workspace.CurrentCamera
            local vpX = cam and cam.ViewportSize.X or 800

            if not rtPaused then
                rtCurrentX = rtCurrentX - rtSpeed * dt
                if rtCurrentX < -rtLabel.AbsoluteSize.X - 50 then
                    rtCurrentX = vpX + 50
                end
            end

            rtLabel.Position = UDim2.new(
                0, rtCurrentX,
                rtVerticalAnchor, -rtLabel.AbsoluteSize.Y / 2
            )

            colorTimer = colorTimer + dt
            if colorTimer >= colorInterval then
                colorTimer = colorTimer - colorInterval
                colorIndex = colorIndex + 1
                if colorIndex > #colorCycle then
                    colorIndex = 1
                end
                rtLabel.TextColor3 = colorCycle[colorIndex]
            end
        end
    end)

    --==================== UPDATE SETTING SAAT INPUT ====================

    rtSizeBox.FocusLost:Connect(function()
        if rtEnabled then
            updateRTSettings()
        end
    end)

    rtSpeedBox.FocusLost:Connect(function()
        if rtEnabled then
            updateRTSettings()
        end
    end)

    rtMessageBox.FocusLost:Connect(function()
        if rtEnabled then
            updateRTSettings()
        end
    end)

    --==================== CLOSE ====================

    closebutton.MouseButton1Click:Connect(function()
        main:Destroy()
        rtGui:Destroy()
    end)

    applyRTSwitchVisual()
    setMainContentVisible(true)

    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "JoJo Running Text LITE";
            Text = "UI rapi + auto color + pause + 10 lines + minimize siap.";
            Duration = 4;
        })
    end)
end

----------------------------------------------------
-- AUTO-BYPASS JIKA KEY DARI LOADER BENAR
----------------------------------------------------
local autoKey = rawget(_G, "JOJO_RT_KEY")
if autoKey and autoKey == REQUIRED_KEY then
    startMainUI()
    return
end

----------------------------------------------------
-- POPUP KEY (UNTUK YANG TIDAK PAKAI LOADER)
----------------------------------------------------

local function trim(s)
    return (s:match("^%s*(.-)%s*$"))
end

local keyGui = Instance.new("ScreenGui")
keyGui.Name = "JojoKeyUI"
keyGui.ResetOnSpawn = false
keyGui.Parent = PlayerGui

local keyFrame = Instance.new("Frame")
keyFrame.Parent = keyGui
keyFrame.Name = "KeyFrame"
keyFrame.BackgroundColor3 = Color3.fromRGB(26, 27, 35)
keyFrame.BackgroundTransparency = 0.1
keyFrame.BorderSizePixel = 0
keyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
keyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
keyFrame.Size = UDim2.new(0, 260, 0, 140)
keyFrame.Active = true
keyFrame.Draggable = true

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 10)
keyCorner.Parent = keyFrame

local keyTitle = Instance.new("TextLabel")
keyTitle.Parent = keyFrame
keyTitle.BackgroundTransparency = 1
keyTitle.Position = UDim2.new(0, 12, 0, 8)
keyTitle.Size = UDim2.new(1, -24, 0, 22)
keyTitle.Font = Enum.Font.SourceSansBold
keyTitle.Text = "JOJO Running Text - KEY"
keyTitle.TextColor3 = Color3.fromRGB(230, 235, 255)
keyTitle.TextSize = 16
keyTitle.TextXAlignment = Enum.TextXAlignment.Left

local keyBox = Instance.new("TextBox")
keyBox.Parent = keyFrame
keyBox.BackgroundColor3 = Color3.fromRGB(35, 40, 55)
keyBox.BorderSizePixel = 0
keyBox.Position = UDim2.new(0, 12, 0, 40)
keyBox.Size = UDim2.new(1, -24, 0, 28)
keyBox.Font = Enum.Font.SourceSans
keyBox.PlaceholderText = "Masukkan key di sini..."
keyBox.Text = ""
keyBox.TextColor3 = Color3.fromRGB(230, 235, 255)
keyBox.TextSize = 14
keyBox.ClearTextOnFocus = false

local keyBoxCorner = Instance.new("UICorner")
keyBoxCorner.CornerRadius = UDim.new(0, 6)
keyBoxCorner.Parent = keyBox

local keyButton = Instance.new("TextButton")
keyButton.Parent = keyFrame
keyButton.BackgroundColor3 = Color3.fromRGB(90, 150, 220)
keyButton.BorderSizePixel = 0
keyButton.Position = UDim2.new(0, 12, 0, 76)
keyButton.Size = UDim2.new(1, -24, 0, 26)
keyButton.Font = Enum.Font.SourceSansBold
keyButton.Text = "UNLOCK"
keyButton.TextSize = 14
keyButton.TextColor3 = Color3.fromRGB(10, 15, 20)

local keyButtonCorner = Instance.new("UICorner")
keyButtonCorner.CornerRadius = UDim.new(0, 6)
keyButtonCorner.Parent = keyButton

local keyStatus = Instance.new("TextLabel")
keyStatus.Parent = keyFrame
keyStatus.BackgroundTransparency = 1
keyStatus.Position = UDim2.new(0, 12, 0, 108)
keyStatus.Size = UDim2.new(1, -24, 0, 20)
keyStatus.Font = Enum.Font.SourceSans
keyStatus.Text = ""
keyStatus.TextColor3 = Color3.fromRGB(255, 120, 120)
keyStatus.TextSize = 14
keyStatus.TextXAlignment = Enum.TextXAlignment.Left

local function tryCheckKey()
    local input = trim(keyBox.Text or "")
    if input == "" then
        keyStatus.TextColor3 = Color3.fromRGB(255, 120, 120)
        keyStatus.Text = "Key kosong."
        return
    end

    if input == REQUIRED_KEY then
        keyStatus.TextColor3 = Color3.fromRGB(120, 220, 130)
        keyStatus.Text = "Key valid. Membuka UI..."
        task.delay(0.3, function()
            keyGui:Destroy()
            startMainUI()
        end)
    else
        keyStatus.TextColor3 = Color3.fromRGB(255, 120, 120)
        keyStatus.Text = "Key salah."
    end
end

keyButton.MouseButton1Click:Connect(tryCheckKey)

keyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        tryCheckKey()
    end
end)
