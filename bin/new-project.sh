#!/usr/bin/env bash
# 프로젝트 폴더를 만들고 템플릿을 복사합니다.
# 사용법: ./bin/new-project.sh 프로젝트명

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "사용법: ./bin/new-project.sh 프로젝트명"
  echo "예:     ./bin/new-project.sh 한빛물산-리뉴얼"
  exit 1
fi

NAME="$1"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIR="$ROOT/projects/$NAME"

if [ -e "$DIR" ]; then
  echo "이미 있습니다: $DIR"
  echo "다른 이름을 쓰거나, 기존 폴더에서 이어서 작업하세요."
  exit 1
fi

mkdir -p "$DIR/source" "$DIR/assets" "$DIR/drafts"
cp "$ROOT/templates/"*.md "$DIR/"

TODAY=$(date +%Y-%m-%d)
cat > "$DIR/README.md" <<EOF
# $NAME

착수일: $TODAY

## 다음에 할 일

1. 기획 문서를 \`source/\` 에 넣으세요.
2. Claude Code에서 \`/ui-intake\` 를 실행하세요.
3. 이후 순서는 [WORKFLOW.md](../../WORKFLOW.md) 를 따릅니다.

## 폴더

- \`source/\` — 고객사에서 받은 원본 (기획서, 브랜드 자산)
- \`drafts/\` — HTML 시안, 캡처 이미지, 레퍼런스 갤러리
- \`assets/\` — 제작한 디자인 에셋
- \`00~07-*.md\` — 단계별 산출물

## 진행 상태

- [ ] 0 착수 · 1-1 분석 → \`00-brief.md\`
- [ ] 1-2 구조 → \`01-ui-structure.md\`
- [ ] 1-3 스타일 → \`02-design-style.md\`
- [ ] **1-4 게이트 — 사람이 확정**
- [ ] 2-0 토큰 → \`03-design-tokens.md\`
- [ ] 2-1 시안 → \`04-draft-log.md\`
- [ ] 2-3 에셋 → \`06-assets.md\`
- [ ] 2-2 컨펌 → \`05-review-log.md\`  [10/31]
- [ ] 3-1 정리 → \`07-handoff.md\`  [10/31]
EOF

echo "만들었습니다: $DIR"
echo
echo "다음 순서:"
echo "  1. 기획 문서를 $DIR/source/ 에 넣으세요"
echo "  2. Claude Code에서 /ui-intake 를 실행하세요"
