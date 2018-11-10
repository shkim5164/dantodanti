# 단토단티 개발일지

## 컨트롤러 및 뷰 정리

1. main_controller.rb : 메인컨트롤러

 - bmain (intro,소개뷰로 이동 ***main/bmain.html.erb가 있어야 layouts/bmain.html.erb를 렌더링 할 수 있음! 실제로는 layouts에 있는 bmain.html을 렌더링 하는 것이지만 main/bmain.html이라는 파일이 있어야 그곳에 렌더링이 가능. 단 main/bmain.html에는 아무 내용이 없어도 됨. 껍데기만 있으면 됨. 알맹이는 layouts/bmain 임)
 - main (메인뷰로 이동)
 - execution(공개처형뷰로 이동)
 - mentoring (멘토링뷰로 이동)
 - mypage(내정보 뷰로 이동)
 
 -sugang(멘토링 수강신청?)
 -create(마이페이지 프로필사진?)

//멘토신청
2. mentorrq_controller.rb (멘토신청게시판)
3. mentoraw_controller.rb (멘토신청게시판 댓글)

//멘토링?
4. mentoring_controller.rb (????)

//공개처형
5. public_controller.rb (공개처형게시판)
6. comment_controller.rb (공개처형댓글)



## 모델 정리


## PLEASE FIX THIS
execution에서 뒤로가기를 하면 이전 화면으로 자동으로 렌더링되지 않고 새로고침을 해주어야함 ㅠㅠ
뭐가 문제인지 모르겠음....
