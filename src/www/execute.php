<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>EmoteTV generator</title>
  </head>
  <body>
      <?php
        $commands = array();
        var_dump($_POST);
        if(array_key_exists('download_chat',$_POST)) {
            $_POST['vid_id'];
            if(!empty($_POST['vid_id'])) return;
            $_POST['vid_id'];
            array_push($commands, 'shit');
            array_push($commands, 'if not exist "bin\ChatDownloads\\'+$_POST['vid_id']+'.json" bin\TwitchDownloaderCLI\TwitchDownloaderCLI.exe -m ChatDownload --id '+$_POST['vid_id']+' -o "bin\ChatDownloads\\'+$_POST['vid_id']+'.json"');
        }
        var_dump($commands);
        exit();
    ?>
  </body>
</html>
