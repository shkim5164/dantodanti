# 단토단티 개발일지

## 컨트롤러 및 뷰 정리

1. main_controller.rb : 메인컨트롤러

    - bmain (intro,소개뷰로 이동 ***main/bmain.html.erb가 있어야 layouts/bmain.html.erb를 렌더링 할 수 있음! 실제로는 layouts에 있는 bmain.html을 렌더링 하는 것이지만 main/bmain.html이라는 파일이 있어야 그곳에 렌더링이 가능. 단 main/bmain.html에는 아무 내용이 없어도 됨. 껍데기만 있으면 됨. 알맹이는 layouts/bmain 임)
    - main (메인뷰로 이동)
    - execution(공개처형뷰로 이동)
    - mentoring (멘토링뷰로 이동)
    - mypage(내정보 뷰로 이동)
 
    - sugang(멘토링 수강신청?)
    - create(마이페이지 프로필사진?)


//멘토신청
2. mentorrq_controller.rb : 멘토신청게시판
    -index는 유저가 본인의 멘토신청을 볼 수 있는 뷰
    -write는 멘토 신청 뷰
3. mentoraw_controller.rb :멘토신청게시판 댓글...?**이게 필요한가?**
    

//멘토링?
4. mentoring_controller.rb : 멘토링 클래스 (suup)


//공개처형
5. public_controller.rb (공개처형게시판)
6. comment_controller.rb (공개처형댓글)


//users controller!! (devise로 생성된)

controllers/users/에 있는 6개 컨트롤러 중 회원가입 및 정보수정을
users/registrations_controller.rb 이라는 컨트롤러에서 담당
    - sign_up_params (회원가입)
    - edit_params (회원정보수정)





## user 뷰!! (devise로 생성된)

view/users/에 보면

confirmations -> 아마 회원가입 시 이메일 확인시켜주는 기능
mailer -> 얘도 뭐 메일관련인 것 같은데 잘..아마 subscribe..?
passwords -> 원래 비밀번호 바꿔주는 뷰인듯. 우리는 필요없음(registrations/edit에 구현)
registrations -> edit.html.erb가 회원정보 수정, new.html.erb가 회원가입(sign up)
sessions -> new.html.erb가 로그인창
shared -> 뭐지? docs 봐야 알듯
unlocks -> 얘도 잘..



## 모델 정리

Answer - 
Blacklist - 블랙리스트 (for 공개처형)
Comment - 블랙리스트 show의 코멘트..^^;
Like - 좋아요에 필요한 모델(어떤 user 혹은 mentor가 어떤 mentor를 좋아하는지)
List - 멘토신청게시판
Mentor - 멘토목록
Sinchung - 수업신청
Suup - 멘토링클래스
User - 유저


## PLEASE FIX THIS
- execution에서 뒤로가기를 하면 이전 화면으로 자동으로 렌더링되지 않고 새로고침을 해주어야함 ㅠㅠ
뭐가 문제인지 모르겠음....
레이아웃 렌더링에 문제가 있는 듯 해서 (execution만 except인걸로 해줘야하나)
정확한 방법을 공부중

-bmain 디자인 개선

- Main/main 레이아웃 grid로 다시짜서 grid-gap 적용, 사이사이로 뒷배경 색 보이게