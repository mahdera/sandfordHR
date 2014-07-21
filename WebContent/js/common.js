function showMessageDialog(dialogText,okFunc,dialogTitle,width) {
    $('<div style="padding: 5px; break-word;">' + dialogText + '</div>').dialog({
      draggable: false,
      modal: true,
      resizable: false,
      width: width,
      title: dialogTitle,
      minHeight: 75,
      buttons: {
        Ok: function () {
        	  if (typeof (okFunc) == 'function') {
                setTimeout(okFunc, 50);            
          }
          $(this).dialog('destroy');
        }
      }
    });
}

function showFormDialog(dialogText,okFunc,dialogTitle,width) {
	$('<div style="padding: 5px; break-word;">' + dialogText + '</div>').dialog({
	      draggable: false,
	      modal: true,
	      resizable: false,
	      width: width,
	      title: dialogTitle,
	      minHeight: 75,
	      buttons: {
	        Close: function () {
	        	  if (typeof (okFunc) == 'function') {
	                setTimeout(okFunc, 50);            
	          }
	          $(this).dialog('destroy');
	        }
	      }
	    });
}

function showConfirmDialog(dialogText, okFunc, cancelFunc, dialogTitle) {
    $('<div style="padding: 10px; max-width: 500px; word-wrap: break-word;">' + dialogText + '</div>').dialog({
      draggable: false,
      modal: true,
      resizable: false,
      width: 'auto',
      title: dialogTitle,
      minHeight: 75,
      buttons: {
        Yes: function () {
          if (typeof (okFunc) == 'function') {
            setTimeout(okFunc, 50);            
          }
          $(this).dialog('destroy');
        },
        No: function () {
          if (typeof (cancelFunc) == 'function') {
            setTimeout(cancelFunc, 50);
          }
          $(this).dialog('destroy');
        }
      }
    });
}

function savePostReminder(patientId, physicianId, title, theNote, remindMeOn) {
	if(title != "" && theNote != "" && remindMeOn != ""){
		var dataString = "patientId="+patientId+"&physicianId="+physicianId+
		"&title="+title+"&theNote="+theNote+"&remindMeOn="+remindMeOn;
		$.ajax({
		    url: 'savepostreminder.jsp',		
		    data: dataString,
		    type:'POST',
		    success:function(response){		    				    		
				$('#txttitle').val('');
				$('#textareathenote').val('');
				$('#txtremindmeon').val('');
				//then reload the right-bar
				$('#rightbar').html(response);
		    },
		    error:function(error){
				alert(error); 
		    }
		});
	}
}

function deleteThisTaskNote(id) {
	var confirmDialog = "<img src='style/images/question.jpeg' align='absmiddle'> Do you want to delete this post?";
	showConfirmDialog(confirmDialog,function () {deletePost(id);},null,'Confirm Delete Post');
}

function deletePost(id){
	var dataString = "id="+id;
	$.ajax({
	    url: 'deletethistasknote.jsp',		
	    data: dataString,
	    type:'POST',
	    success:function(response){			
			$('#rightbar').html(response);
	    },
	    error:function(error){
			alert(error); 
	    }
	});
}