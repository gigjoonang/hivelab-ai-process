# 템플릿

프로젝트 1건당 이 폴더의 `.md` 8종을 복사해서 채웁니다. 복사는 스크립트가 합니다.

```bash
./bin/new-project.sh 고객사-프로젝트명
```

> **참고**: 템플릿 안의 `../../docs/...` 링크는 **복사된 위치**(`projects/[프로젝트명]/`) 기준입니다. 이 폴더에서 직접 열면 링크가 안 열립니다. 정상입니다.

| 파일 | 단계 | 스킬 |
|---|---|---|
| `00-brief.md` | 0 착수 · 1-1 분석 | `/ui-intake` → `/ui-analyze` |
| `01-ui-structure.md` | 1-2 구조 | `/ui-structure` |
| `02-design-style.md` | 1-3 스타일 | `/ui-style` |
| `03-design-tokens.md` | 2-0 토큰 | `/ui-tokens` |
| `04-draft-log.md` | 2-1 시안 | `/ui-draft` |
| `05-review-log.md` | 2-2 컨펌 | `/ui-review` `[10/31]` |
| `06-assets.md` | 2-3 에셋 | `/ui-assets` |
| `07-handoff.md` | 3-1 정리 | `/ui-handoff` `[10/31]` |
