return {
  -- 1. Kanagawa 테마 플러그인 설치
  { "rebelot/kanagawa.nvim" },

  -- 2. LazyVim의 기본 색상을 Kanagawa로 변경
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
