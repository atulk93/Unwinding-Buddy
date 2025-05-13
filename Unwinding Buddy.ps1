Add-Type -AssemblyName System.Windows.Forms

Add-Type -AssemblyName System.Drawing

 
while ($true){
    # Run the countdown timer before showing the popup
    $seconds = 1200 #20 mins
    Start-Sleep -Seconds $seconds

    # Create a colorful popup window
    $form = New-Object System.Windows.Forms.Form
    $form.Text = "Unwind Buddy!!!"
    $form.Size = New-Object System.Drawing.Size(600, 300)  # Rectangular size
    $form.StartPosition = "CenterScreen"
    $form.FormBorderStyle = "FixedDialog"
    $form.TopMost = $true # This makes sure it stays on top of all windows

    # Set background color
    $form.BackColor = [System.Drawing.Color]::LightBlue  # Light blue background for a fresh look

    # Label for message with vibrant color
    $messageLabel = New-Object System.Windows.Forms.Label
    $messageLabel.Text = "Your focused time of 20 minutes is over.`nPlease take a break and unwind yourself.`nFollow 20-20-20 rule !"
    $messageLabel.Font = New-Object System.Drawing.Font("Comic Sans MS", 14, [System.Drawing.FontStyle]::Bold)
    $messageLabel.ForeColor = [System.Drawing.Color]::DarkBlue  # Dark Blue text
    $messageLabel.AutoSize = $true
    $messageLabel.Location = New-Object System.Drawing.Point(80, 50)
    $form.Controls.Add($messageLabel)

    # OK Button with stylish colors
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Text = "Got It !"
    $okButton.Font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Bold)
    $okButton.BackColor = [System.Drawing.Color]::Gold  # Gold button for elegance
    $okButton.ForeColor = [System.Drawing.Color]::Black  # Black text for contrast
    $okButton.Location = New-Object System.Drawing.Point(220, 150)
    $okButton.Width = 100
    $okButton.Height = 30
    $okButton.FlatStyle = "Flat"
    $okButton.Add_Click({ $form.Close() })  # Close on click
    $form.Controls.Add($okButton)

    # Display the colorful popup
    $form.ShowDialog()

    #After closing, wait 20 seconds before restarting
    Start-Sleep -Seconds 20
}
