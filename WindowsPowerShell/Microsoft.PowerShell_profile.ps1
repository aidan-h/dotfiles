function gitc {
  [CmdletBinding()]
    param (
      # This parameter allows you to type a message string
      [Parameter()]
      [string]
      $Message
  )
  git add -A; git commit -m $Message; git push
}

function gits {
  git status
}

set-alias -name pn -value pnpm


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
