<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>EmoteTV generator</title>
  </head>
  <body>
    <?php
      // if($_POST) var_dump($_POST)
    ?>
    <form action="execute.php" method="post">
      <p>Video ID: <input type="text" name="vid_id" value=""> </p>
  
      <button type="submit" name="download_chat">Download chat</button>
      <br>
  
      <p>Emote: <input type="text" name="emote" value=""> </p>
      <p>Video count: <input type="text" name="vid_count" value=""> </p>
      <p>Video length: <input type="text" name="vid_length" value=""> </p>
      <button type="submit" name="generate_vids">Generate top emote video</button>
    </form>
  </body>
</html>
