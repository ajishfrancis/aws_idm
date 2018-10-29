$remove = net localgroup administrators | select -skip 6 | ? {$_ -and $_ -notmatch 'successfully|^administrators$'}; foreach
($user in $remove) {net localgroup administrators "`"$user`"" /delete};
