<?php
$expiration_timestamp = 1364586060; #in reality, fetch from database
?>
<html>
<head></head>

<script type="text/javascript" src="counter.js"></script>
<script type="text/javascript">
startTimer(<?=($expiration_timestamp - time())?>);
</script>

<span id="countdown" style="font-weight: bold;"></span>
</html>
