navigator.getUserMedia = navigator.getUserMedia || navigator.mozGetUserMedia || navigator.webkitGetUserMedia;
		window.RTCPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;
		window.RTCIceCandidate = window.RTCIceCandidate || window.mozRTCIceCandidate || window.webkitRTCIceCandidate;
		window.RTCSessionDescription = window.RTCSessionDescription || window.mozRTCSessionDescription || window.webkitRTCSessionDescription;
		      var pConfig = {'iceServers': [{'url': 'stun:stun.services.mozilla.com'}, {'url': 'stun:stun.l.google.com:19302'}]};

		     var pc;
			var pcc;
			var pccc;
			var pcccc;
			
			
		socket = io.connect('https://cpe-72-190-80-197.tx.res.rr.com:443');
					
						var constraints = {
							video : true,
							audio : false
						};
						localVideo = document.getElementById('localVideo');
						
						
							localVideo = document.getElementById('localVideo');
							
							
							
							if(navigator.getUserMedia){
								navigator.getUserMedia(constraints,function(data){

									 lStream = data;
									localVideo.src = window.URL.createObjectURL(data);
									localVideo.play();
								     rest();
								    

								},function(e){
									console.log(e);
								
								});
								
							}
							
							function rest(){
								
								var $roomId = document.getElementById('roomId').value;
								console.log($roomId);
								var $videoWrap = $('#videoWrap');
								var localVideo = document.getElementById('localVideo');
								var remoteVideo1 = document.getElementById('remoteVideo1');
								var remoteVideo2 = document.getElementById('remoteVideo2');
								var remoteVideo3 = document.getElementById('remoteVideo3');
								
								//var $rooms = $('#rooms');
								var $roomError = $('#roomError');
								//var $userForm =  $('#userForm');
								//var $userId = $('#userId');
								var $userId = document.getElementById('userId').value; 
								console.log($userId);
								alert($userId+$roomId);
								var $users = $('#users');
								var $usrError = $('#usrError');
								var $wrapUser = $('#wrapUser');
								var $showRooms = $('#showRooms');
								var $textFrom = $('#text');
								var mySocket = null;
								var $current_room = null;
								var $current_user = null;
								var creator;
								
								socket.emit('new-user',$userId);
								alert($userId);
								socket.emit('new-room',$roomId);
								
//				 				$userForm.submit(function(e){
//				 					e.preventDefault();
//				 					console.log(socket.id);
//				 					socket.emit('new-user',$userId.val(),function(data){
//				 						if(data){
//				 							$wrapUser.hide();
//				 							$wrapRoom.show();
//				 							$current_user = $userId.val();
//				 							console.log($current_user);
//				 						}
//				 						else{
//				 							//alert('This already exists');
//				 							$userId.val('');
//				 						}

//				 					});
//				 				});
//				 				$roomForm.submit(function(e){
//				 					e.preventDefault();

//				 					socket.emit('new-room',$roomId.val(),function(data){
//				 						if(data){
//				 							$wrapRoom.hide();
//				 							//$videoWrap.show();
//				 							$current_room = $roomId.val();
//				 							console.log($current_room);
//				 						}
//				 						else{

//				 							//alert('This already exists');
//				 							$roomId.val('');
//				 						}

//				 					});
//				 				});
								socket.on('room',function(data){
									$rooms.empty();
									for(i = 0;i<data.length;i++){
										$rooms.append('<br>'+data[i]+'<br>');
									}
								});

								socket.on('isCreator',function(data){
									creator = true;
									////alert('recieved');
								});
								socket.on('mySocket',function(data){
									mySocket = data;
								});
								
				
						
						pc = new RTCPeerConnection(pConfig);
						pcc = new RTCPeerConnection(pConfig);
						pccc = new RTCPeerConnection(pConfig);
						pcccc = new RTCPeerConnection(pConfig);
						pc.onaddstream = function(event){
						remoteVideo1.src = window.URL.createObjectURL(event.stream);
						remoteVideo1.play();
						console.log("I got the remote stream");
						//onaddstream adds remote video

						};
						pcc.onaddstream = function(event){
						 remoteVideo2.src = window.URL.createObjectURL(event.stream);
						 remoteVideo2.play();
						console.log("I got the remote stream");
						//onaddstream adds remote video

						};
						pccc.onaddstream = function(event){
						remoteVideo3.src = window.URL.createObjectURL(event.stream);
						remoteVideo3.play();
						console.log("I got the remote stream");
						//onaddstream adds remote video

						};
						pcccc.onaddstream = function(event){
						remoteVideo1.src = window.URL.createObjectURL(event.stream);
						remoteVideo1.play();
						console.log("I got the remote stream");
						//onaddstream adds remote video

						};

					socket.on('21',function(data){
						console.log('calling from 2');
						pc.onicecandidate = function(event){
							if(event.candidate != null){
								socket.emit('12',JSON.stringify({'ice':event.candidate}));
							}
						};
						
		                
						pc.addStream(lStream);
						pc.createOffer(gotDesc21,errorHandler);

						function gotDesc21(description){
						pc.setLocalDescription(description, function(){
							console.log('created offer');
						socket.emit('12',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

					});
					socket.on('31',function(data){
						//alert("message recieved from 3");
					});
					
					socket.on('32',function(data){
						//alert("message recieved from 3");
					});
					
					socket.on('41',function(data){

						//alert("message recieved from 4");
						
					});
					
					socket.on('42',function(data){
						
						//alert("message recieved from 4");
					});
					
					socket.on('43',function(data){
						
						//alert("message recieved from 4");
					});

					socket.on('12A',function(message){


							pc.onicecandidate = function(event){
							if(event.candidate != null){
								console.log(event.candidate,"This is mine");
								socket.emit('12B',JSON.stringify({'ice':event.candidate}));
							}
						};

						console.log("got message yo!");
						

						var signal = JSON.parse(message);
						//var signal = message;
						
						if(signal.sdp){
							console.log('got sdp from 2');
							pc.setRemoteDescription(new RTCSessionDescription(signal.sdp),function(){
								pc.createAnswer(gotDesc12,errorHandler);
								console.log('created Answer for 2');
							},errorHandler);

						} else if(signal.ice){
							pc.addIceCandidate(new RTCIceCandidate(signal.ice));
							console.log("added remote ice candidate");
							console.log(signal.ice);
						// 	pc.onicecandidate = function(event){
						// 	if(event.candidate != null){
						// 		console.log(event.candidate,"This is mine");
						// 		socket.emit('12B',JSON.stringify({'ice':event.candidate}));
						// 	}
						// };

						}
						
						function gotDesc12(description){
						pc.setLocalDescription(description, function(){
						socket.emit('12B',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}
						pc.addStream(lStream);
					

						////alert("message recieved from 2");
					});
					socket.on('12C',function(data){
			        var message = JSON.parse(data);
			        console.log(data);
			       //var send = JSON.stringify(data);
			       if(message.sdp){
			       	pc.setRemoteDescription(new RTCSessionDescription(message.sdp));
			       }
			       else if(message.ice){
			       	pc.addIceCandidate(new RTCIceCandidate(message.ice));
			     
			       }
					

					});

					socket.on('callinga',function(data){
						

						if(data == 4){


							pccc.addStream(lStream);
						pccc.createOffer(gotDesc1for4,errorHandler);

						function gotDesc1for4(description){
						pccc.setLocalDescription(description, function(){
						socket.emit('calling4',JSON.stringify({'sdp':description,'from':'1'}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pccc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('calling4',JSON.stringify({'ice':event.candidate,'from':'1'}));
							}
						};

						}
						else{

						
						pcc.addStream(lStream);
						pcc.createOffer(gotDesc1for3,errorHandler);

						function gotDesc1for3(description){
						pcc.setLocalDescription(description, function(){
						socket.emit('calle',JSON.stringify({'sdp':description,'from':'1'}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pcc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('calle',JSON.stringify({'ice':event.candidate,'from':'1'}));
							}
						};
						}
					});


					socket.on('callingb',function(data){
						


						if(data == 4){


							pccc.addStream(lStream);
						pccc.createOffer(gotDesc2for4,errorHandler);

						function gotDesc2for4(description){
						pccc.setLocalDescription(description, function(){
						socket.emit('calling4',JSON.stringify({'sdp':description,'from':'2'}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pccc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('calling4',JSON.stringify({'ice':event.candidate,'from':'2'}));
							}
						};

						}
						else {


						pcc.addStream(lStream);
						pcc.createOffer(gotDesc2for3,errorHandler);

						function gotDesc2for3(description){
						pcc.setLocalDescription(description, function(){
						socket.emit('calle',JSON.stringify({'sdp':description,'from':'2'}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pcc.onicecandidate = function(event){

							if(event.candidate != null){
								//alert('my own ice');
								socket.emit('calle',JSON.stringify({'ice':event.candidate,'from':'2'}));
							}
						};
						}

					});




					socket.on('callee_message',function(data){

						var message = JSON.parse(data);
						if(message.from == 1){

							
							if(message.sdp){

								

								pc.setRemoteDescription(new RTCSessionDescription(message.sdp),function(){
								pc.createAnswer(gotDesc3for1,errorHandler);
								
							},errorHandler);

								function gotDesc3for1(description){
						pc.setLocalDescription(description, function(){
						socket.emit('callingtoA',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('callingtoA',JSON.stringify({'ice':event.candidate}));
							}
						};




							}

							if(message.ice){

								pc.addIceCandidate(new RTCIceCandidate(message.ice));
							}



							pc.addStream(lStream);
							
						}
						else if(message.from == 2){
							
							if(message.sdp){

								

								pcc.setRemoteDescription(new RTCSessionDescription(message.sdp),function(){
								pcc.createAnswer(gotDesc3for2,errorHandler);
								
							},errorHandler);

								function gotDesc3for2(description){
						pcc.setLocalDescription(description, function(){
						socket.emit('callingtoB',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pcc.onicecandidate = function(event){

							if(event.candidate != null){
								//alert('my own ice');
								socket.emit('callingtoB',JSON.stringify({'ice':event.candidate}));
							}
						};




							}

							if(message.ice){

								pcc.addIceCandidate(new RTCIceCandidate(message.ice));
							}



							pcc.addStream(lStream);

						}


					});
					socket.on('passedtoA',function(data){
						var message = JSON.parse(data);
						if(message.sdp){

							pcc.setRemoteDescription(new RTCSessionDescription(message.sdp));

						}
						if(message.ice){

							pcc.addIceCandidate(new RTCIceCandidate(message.ice));
						}
					});

					socket.on('passedtoB',function(data){
						var message = JSON.parse(data);
						if(message.sdp){

							pcc.setRemoteDescription(new RTCSessionDescription(message.sdp));

						}
						if(message.ice){

							pcc.addIceCandidate(new RTCIceCandidate(message.ice));
						}
					});


					socket.on('passedtoA4',function(data){
						var message = JSON.parse(data);
						if(message.sdp){

							pccc.setRemoteDescription(new RTCSessionDescription(message.sdp));

						}
						if(message.ice){

							pcc.addIceCandidate(new RTCIceCandidate(message.ice));
						}
					});

					socket.on('passedtoB4',function(data){
						var message = JSON.parse(data);
						if(message.sdp){

							pccc.setRemoteDescription(new RTCSessionDescription(message.sdp));

						}
						if(message.ice){

							pcc.addIceCandidate(new RTCIceCandidate(message.ice));
						}
					});


					socket.on('passedtoc4',function(data){
						var message = JSON.parse(data);
						if(message.sdp){

							pccc.setRemoteDescription(new RTCSessionDescription(message.sdp));

						}
						if(message.ice){

							pccc.addIceCandidate(new RTCIceCandidate(message.ice));
						}
					});







					socket.on('callee_message4',function(data){

						var message = JSON.parse(data);
						if(message.from == 1){

							
							if(message.sdp){

								

								pc.setRemoteDescription(new RTCSessionDescription(message.sdp),function(){
								pc.createAnswer(gotDesc4for1,errorHandler);
								
							},errorHandler);

								function gotDesc4for1(description){
						pc.setLocalDescription(description, function(){
						socket.emit('callingtoA4',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('callingtoA4',JSON.stringify({'ice':event.candidate}));
							}
						};




							}

							if(message.ice){

								pc.addIceCandidate(new RTCIceCandidate(message.ice));
							}



							pc.addStream(lStream);
							
						}
						else if(message.from == 2){
							
							if(message.sdp){

								

								pcc.setRemoteDescription(new RTCSessionDescription(message.sdp),function(){
								pcc.createAnswer(gotDesc4for2,errorHandler);
								
							},errorHandler);

								function gotDesc4for2(description){
						pcc.setLocalDescription(description, function(){
						socket.emit('callingtoB4',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pcc.onicecandidate = function(event){

							if(event.candidate != null){
								//alert('my own ice');
								socket.emit('callingtoB4',JSON.stringify({'ice':event.candidate}));
							}
						};




							}

							if(message.ice){

								pcc.addIceCandidate(new RTCIceCandidate(message.ice));
							}



							pcc.addStream(lStream);

						}
						else if (message.from == 3){


							if(message.sdp){

								

								pccc.setRemoteDescription(new RTCSessionDescription(message.sdp),function(){
								pccc.createAnswer(gotDesc4for3,errorHandler);
								
							},errorHandler);

								function gotDesc4for3(description){
						pccc.setLocalDescription(description, function(){
						socket.emit('callingtoc4',JSON.stringify({'sdp':description}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pccc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('callingtoc4',JSON.stringify({'ice':event.candidate}));
							}
						};




							}

							if(message.ice){

								pccc.addIceCandidate(new RTCIceCandidate(message.ice));
							}



							pccc.addStream(lStream);



						}


					});

					socket.on('callingc',function(data){
						

						pccc.addStream(lStream);
						pccc.createOffer(gotDesc3for4,errorHandler);

						function gotDesc3for4(description){
						pccc.setLocalDescription(description, function(){
						socket.emit('calling4',JSON.stringify({'sdp':description,'from':'3'}));
						console.log("sent local description");
							},function(){console.log("set description error")});
							}function errorHandler(error){
						console.log(error);
						}

						pccc.onicecandidate = function(event){

							if(event.candidate != null){
								
								socket.emit('calling4',JSON.stringify({'ice':event.candidate,'from':'3'}));
							}
						};

					});

							}//		quick fix	
								
							
						
//		 				if(navigator.getUserMedia){
//		 					navigator.getUserMedia(constraints,function(data){

//		 						lStream = data;
//		 						localVideo.src = window.URL.createObjectURL(data);
//		 						localVideo.play();
//		 						return lStream;

//		 					},function(e){
//		 						console.log(e);
//		 					});
//		 				}


		        
						//var socket = io.connect();
						//var $wrapRoom = $('#wrapRoom');
						//var $roomForm = $('#roomForm');
						//var $roomId = $('#roomId');
						