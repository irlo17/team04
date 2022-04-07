	$('.modal-button').click(function() {
			$('this').css({
				'z-index' : 105000
			})
		});

		/* 마이페이지 이동*/
		/* 	$('.login-btn').click(function() {

				location.href = 'review.html';

			}) */

		$('#listAdd2').click(function() {
			alert('이미 추가된 가게입니다.');
		})

		/*	가게 상세페이지에서 추가하기 버튼을 눌렀을때	
				가게 번호를 가져오고 처리
				type : 포스트방식
				datatype: text
				
		 */
		$('#listAdd').click(function() {
			var shopNumber = $(this).attr('value');
			/* 	alert(shopNumber); */

			let param = {
				shopNumber : shopNumber
			}
			$.ajax({
				url : 'listingDetailsAddList.do',

				type : 'post',
				datatype : 'text',
				data : param,
				success : function(data) {

					alert("추가 되었습니다.");
					
					$('#listAdd').html(data)
					
					
				
			
					
				},

				error : function(err) {

					alert('이미 추가된 가게입니다.');

				}
			});

		});
		
		/* 
		//실패작 ajax
		var oldListCnt = '${oldListCnt}';
		// 조회 인덱스
		var startIndex = 1;	// 인덱스 초기값
		var searchStep = 2;	// 2개씩 로딩
		var shopNumber = $('#searchMoreNotify').val();
		// 페이지 로딩 시 첫 실행
		readOldNotify(startIndex);
		
		// 더보기 클릭시
		$('#searchMoreNotify').click(function(){
			
			startIndex += searchStep;
			readOldNotify(startIndex);
			
		})
			
		// 더보기 실행함수 **
		function readOldNotify(index){
			let _endIndex = index+searchStep-1;	// endIndex설정
			$.ajax({
				type: "get",
				async: "false",
				dataType: "json",
				data: {
					shopNumber: shopNumber,
					startIndex: startIndex,
					endIndex: let _endIndex
				},
				url: "listingDetails",
				success: function (data, textStatus) {
					console.log(data);
					alert(data[0].SHOPNUMBER)
					let NodeList = "";
					for(i = 0; i < data.length; i++){
						let newNode = "<div style='display: none;' class='card form-group col-sm-10 mx-auto p-0' onClick='window.open('"+listingDetails.do+"')>";
						newNode += "<div class='card-body pt-3'><div class='row px-3 mb-2'>";
						newNode += "<strong class='d-block text-gray-dark'>"+data[i].shopNumber+"</strong>";
						newNode += "<span class='text-muted ml-auto'>"+data[i].shopNumber+"</span>";
						newNode += "</div><span>"+data[i].shopNumber+"</span></div></div>";
						NodeList += newNode;
					}
					$(NodeList).appendTo($("#oldList")).slideDown();

					// 더보기 버튼 삭제
								
				},
				error: function (err) {
					alert('에러발생');
					console.log(err)
				}
			});
		}
 */	

		
		
		
		
		
		
		
		