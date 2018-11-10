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
2. mentorrq_controller.rb (멘토신청게시판)
3. mentoraw_controller.rb (멘토신청게시판 댓글)

//멘토링?
4. mentoring_controller.rb (????)

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


## PLEASE FIX THIS
- execution에서 뒤로가기를 하면 이전 화면으로 자동으로 렌더링되지 않고 새로고침을 해주어야함 ㅠㅠ
뭐가 문제인지 모르겠음....
레이아웃 렌더링에 문제가 있는 듯 해서 (execution만 except인걸로 해줘야하나)
정확한 방법을 공부중


- view/registrations/edit.html.erb 나이이름학과학번 작동X -> 해결! + 수정이후 redirect가 무조건 root로 되던 문제 registrations_controller에 after_update_path_for 추가함으로서 해결! (+ after_sign_up도 추가)

-bmain에서 로고랑 welcome(로그인시 네브바 우측끝에 나오는 환영인사)에 드래그 금지 적용하고싶은데 cascading이 문제인지..
-bmain 디자인이 조금 허전해서 칠판같은 느낌을 조금 더 추가했으면? 아니면 아예 리뉴얼하던지(여기라도 부트스트랩템플릿 갈아엎고)

-멘토링 레이아웃 도대체 왜 전체에 padding인지 margin인지 적용되어져있는거냐..............
