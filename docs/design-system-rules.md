# 토큰과 컴포넌트 명명 규칙

프로젝트마다 이름이 다르면 재사용도 인계도 안 됩니다. 이 규칙은 프로젝트를 안 가립니다.

---

## 토큰 이름

`범주/역할-단계-상태` 형식입니다.

```
color/primary              color/primary-hover        color/primary-disabled
color/neutral-0 … 900
color/text-primary         color/text-secondary       color/text-disabled
color/bg-default           color/bg-subtle            color/bg-inverse
color/border-default       color/border-strong
color/success-fg           color/success-bg

font/display  font/h1  font/h2  font/h3
font/body-l   font/body  font/body-s  font/caption  font/label

space/4 … space/128
radius/s  radius/m  radius/l  radius/full
shadow/s  shadow/m  shadow/l
```

몇 가지만 기억하면 됩니다.

색 이름에 색상명을 넣지 마세요. `color/blue-500` 말고 `color/primary`입니다. 브랜드 색이 바뀌면 이름이 거짓말이 됩니다.

원시값(neutral-0~900)이랑 의미값(text-primary)을 나눕니다. 의미값이 원시값을 참조하고요. 화면에서는 의미값만 씁니다. 원시값을 직접 쓰기 시작하면 다크모드나 리브랜딩을 못 합니다.

단계는 숫자가 커질수록 진해집니다.

---

## 컴포넌트 이름

`범주/컴포넌트명`으로 쓰고 속성은 variant로 넣습니다.

```
Core/Button        variant: primary·secondary·ghost·danger
                   size: l·m·s
                   state: default·hover·pressed·disabled
                   icon: none·leading·trailing·only

Core/Input         state: default·focus·error·disabled
                   label: true·false
                   helper: true·false

Core/Card          variant: default·image-top·horizontal
Core/Badge         variant: neutral·success·warning·error
Core/Icon          name: (아이콘 목록)

Nav/Header         device: desktop·mobile
Nav/Footer
Nav/Item           state: default·hover·active

Feedback/Modal     size: s·m·l
Feedback/Toast     variant: info·success·warning·error

Section/Hero       (프로젝트 전용은 Section/ 아래)
Section/FeatureGrid
```

범주는 서너 개, 많아야 다섯 개로 유지합니다. `Core` / `Nav` / `Feedback` / `Section` / `Form` 정도면 충분해요.

variant를 쓰고 컴포넌트를 복제하지 마세요. `Button-Primary`랑 `Button-Secondary`를 따로 만들면 수정할 때 전부 따로 고쳐야 합니다.

variant 조합이 16개를 넘으면 컴포넌트를 쪼갭니다.

프로젝트 전용은 `Section/` 아래에 둡니다. 나중에 조직 라이브러리로 올릴 때 `Core/`만 골라내면 되니까요.

---

## 레이어 이름

`Rectangle 42`, `Frame 128`, `Group 7`을 남기지 마세요.

```
프레임        HOME_히어로
텍스트        headline / subcopy / cta-label
이미지        img_hero-bg
플레이스홀더   ph_product-thumb_320x240
```

이름만 보고 뭔지 알 수 있어야 합니다. 며칠 뒤에 다른 사람이 열었을 때 클릭 안 하고도 알아야 해요.

---

## 프레임 이름

`화면ID_화면명_등급_방향` 형식입니다.

```
HOME_메인_B_변주
PROD-01_상품목록_B_정석
HOME_메인_A
```

`화면ID`는 `01-ui-structure.md`의 화면 목록 ID랑 같아야 합니다. 등급은 A급이면 `A`, B급이면 `B`. 방향은 정석/변주/파격이고, A급은 방향 표기를 생략합니다.

---

## 오토레이아웃 기본값

```
페이지 최상위   세로, 간격 0, 패딩 0, 자식 폭 채우기
섹션           세로, 간격 space/48~96, 좌우 패딩은 (뷰포트-최대폭)/2
콘텐츠 그룹     세로, 간격 space/16~24
가로 나열       가로, 간격 space/16~24, 정렬 명시
버튼 내부       가로, 간격 space/8, 패딩 space/12 space/24
```

모든 프레임에 오토레이아웃을 겁니다. 절대 위치로 놓은 요소는 화면 하나 추가할 때마다 사람이 손으로 옮기게 됩니다.

---

## 고객사에 기존 시스템이 있으면

이 문서보다 고객사 규칙이 우선입니다. `03-design-tokens.md` 상단에 `명명 규칙: 고객사 시스템 준수`라고 적고 그 아래에 고객사 규칙을 요약해 두세요.

두 규칙을 섞지 마세요. 섞인 파일은 양쪽 어디서도 못 씁니다.

---

## 재사용 자산 환원

프로젝트 끝나면 잘 만든 걸 조직 라이브러리로 올립니다. 이게 없으면 몇 년을 해도 매번 처음부터예요.

올리는 건 아래를 다 만족하는 것만.
- `Core/` 범주다. 프로젝트 고유가 아니다
- variant가 정리돼 있다
- 토큰만 쓴다. 하드코딩한 값이 없다
- 다른 프로젝트에서 색만 바꾸면 그대로 쓸 수 있다

절차랑 저장 위치는 3단계 문서에서 정합니다. [03-stage-wrapup.md](03-stage-wrapup.md)의 b 항목을 보세요.
