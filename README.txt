# 단토단티 개발일지

## 컨트롤러 및 뷰 정리

1. main_controller.rb : 메인컨트롤러

액션 정리
 -bmain (intro,소개 뷰로 이동 ***main/bmain.html.erb가 있어야 layouts/bmain.html.erb를 렌더링 할 수 있음! 실제로는 layouts에 있는 bmain.html을 렌더링 하는 것이지만 main/bmain.html이라는 파일이 있어야 그곳에 렌더링이 가능. 단 main/bmain.html에는 아무 내용이 없어도 됨. 껍데기만 있으면 됨. 알맹이는 layouts/bmain 임)
 -main (메인뷰로 이동)
 -cards (멘토링뷰로 이동)
 -execution(공개처형뷰로 이동)
 -mypage

## Model
