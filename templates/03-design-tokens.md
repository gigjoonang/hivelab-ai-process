# 03 · 디자인 토큰

> 단계 2-0에서 채웁니다. 스킬: `/ui-tokens`
> 입력: `02-design-style.md` 확정 방향 · 규칙: [docs/design-system-rules.md](../../docs/design-system-rules.md)
> 시안보다 먼저 채웁니다. 이 파일이 확정되기 전엔 화면을 그리지 않습니다.

---

| 항목 | 내용 |
|---|---|
| 기준 스타일 방향 | 정석 / 변주 / 파격 |
| 명명 규칙 | 표준 / 고객사 시스템 준수 |
| 확정일 | |
| 대비 검사 | 통과 / 미통과 |

---

## 1. 컬러

### 원시값
| 토큰 | 값 | 비고 |
|---|---|---|
| `color/neutral-0` | `#FFFFFF` | |
| `color/neutral-50` | | |
| `color/neutral-100` | | |
| `color/neutral-200` | | |
| `color/neutral-400` | | |
| `color/neutral-600` | | |
| `color/neutral-800` | | |
| `color/neutral-900` | | |

### 브랜드
| 토큰 | 값 |
|---|---|
| `color/primary` | |
| `color/primary-hover` | |
| `color/primary-active` | |
| `color/primary-disabled` | |
| `color/secondary` | |
| `color/secondary-hover` | |
| `color/accent` | |

### 의미값 — 화면에서는 이것만 씁니다
| 토큰 | 참조 | 용도 |
|---|---|---|
| `color/text-primary` | | 본문·제목 |
| `color/text-secondary` | | 보조 설명 |
| `color/text-disabled` | | |
| `color/text-inverse` | | 어두운 배경 위 |
| `color/bg-default` | | |
| `color/bg-subtle` | | 카드·섹션 구분 |
| `color/bg-inverse` | | |
| `color/border-default` | | |
| `color/border-strong` | | |

### 시맨틱
| 토큰 | 전경 | 배경 |
|---|---|---|
| success | | |
| warning | | |
| error | | |
| info | | |

## 2. 타이포그래피

| 토큰 | 폰트 | 크기 | 굵기 | 행간 | 자간 | 용도 |
|---|---|---|---|---|---|---|
| `font/display` | | | | | | |
| `font/h1` | | | | | | |
| `font/h2` | | | | | | |
| `font/h3` | | | | | | |
| `font/body-l` | | | | 1.7 | | |
| `font/body` | | | | 1.65 | | |
| `font/body-s` | | | | | | |
| `font/caption` | | | | | | |
| `font/label` | | | | | | |

국문 기준으로 정하고 영문을 맞춥니다. 반대로 하면 국문이 깨집니다.

| 항목 | 내용 |
|---|---|
| 국문 서체 | |
| 영문 서체 | |
| 숫자 서체 | |
| **웹폰트 라이선스** | 웹 전용 / 앱 포함 / 임베딩 가능 — 확인 출처와 확인일 |

## 3. 간격

`space/4` `space/8` `space/12` `space/16` `space/24` `space/32` `space/48` `space/64` `space/96` `space/128`

기준 배수: 4 / 8

## 4. 반경 · 그림자 · 테두리

| 토큰 | 값 |
|---|---|
| `radius/s` | |
| `radius/m` | |
| `radius/l` | |
| `radius/full` | 9999 |
| `shadow/s` | |
| `shadow/m` | |
| `shadow/l` | |
| `border/default` | 1px |

## 5. 그리드 · 브레이크포인트

> `01-ui-structure.md` 값을 그대로 옮깁니다. 여기서 새로 정하지 않습니다.

| | 폭 | 최대폭 | 칼럼 | 거터 |
|---|---|---|---|---|
| 데스크톱 | | | | |
| 태블릿 | | | | |
| 모바일 | | | | |

## 6. 대비 검사 결과 — 직접 잰 값

| 조합 | 기준 | 실측값 | 판정 |
|---|---|---|---|
| text-primary on bg-default | 4.5:1 | | |
| text-secondary on bg-default | 4.5:1 | | |
| text-inverse on primary | 4.5:1 | | |
| h1 on bg-default | 3:1 | | |
| border-default on bg-default | 3:1 | | |
| 버튼 경계 on bg-default | 3:1 | | |

> AI가 말한 대비 수치는 믿지 마세요. 계산기로 직접 재세요.

---

## 결정 기록

| 날짜 | 뭘 골랐나 | 왜 | 뭘 버렸나 (이유) |
|---|---|---|---|
| | | | |

## 변경 이력

| 날짜 | 뭐가 바뀌었나 | 왜 |
|---|---|---|
| | | |
