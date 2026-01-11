$folderName = $args[0]
$Files = Get-ChildItem -Path "C:\Users\jlynn\Downloads\$folderName" -File
ForEach($File in $Files){ 
    ffmpeg -i "C:\Users\jlynn\Downloads\$folderName\$File" -acodec pcm_s16le -ac 2 -ar 44100 "C:\Users\jlynn\Downloads\$folderName\$($File.BaseName).wav" 
    Remove-Item -Path "C:\Users\jlynn\Downloads\$folderName\$File" -Force
}
