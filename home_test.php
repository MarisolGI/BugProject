<?php
require_once ('helpers/common.php');
$show = show_project();
?>
<html>

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">


<head>
<title>PHP Test</title>

<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
  <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
     <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

</head>
<body>
<div>
<!-- the code below don't service for anything, garde for future -->
<script id="source" language="javascript" type="text/javascript">

  $(function () 
  {
    //-----------------------------------------------------------------------
    // 2) Send a http request with AJAX http://api.jquery.com/jQuery.ajax/
    //-----------------------------------------------------------------------
    $.ajax({                                      
      url: 'common.php',                  //the script to call to get data          
      data: "",                        //you can insert url argumnets here to pass to api.php
                                       //for example "id=5&parent=6"
      dataType: 'json',                //data format      
      success: function(data)          //on recieve of reply
      {
        var id = data[0];              //get id
        var vname = data[1];           //get name
        //--------------------------------------------------------------------
        // 3) Update html content
        //--------------------------------------------------------------------
       // $('#output').html("<b>id: </b>"+id+"<b> name: </b>"+vname);

      } 
    });
  }); 

  </script>
</div>
<table>
  <tr>
    <th>Month</th>
    <th>Savings</th>
    <th>Test</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
    <td>$100</td>
  </tr>
 
  <tr>
    <td>January</td>
    <td>$100</td>
    <td>$100</td>
  </tr>
</table>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="form-control-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
	  </div>
	  </div>
	  </div>
	  </div>
	  
	
 </body>
</html>