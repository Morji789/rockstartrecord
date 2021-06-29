local recording = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0,288) then
            if recording == false then
                StartRecording(1)
                recording = true
            else
                StopRecordingAndSaveClip()
                recording = false
            end
        end
    end
end)
