# AI 數值方法 期中考專案 — 目標達成評分制

- **姓名**：李柏穎
- **學號**：414210392
- **總得分數**：100 / 100 分
- **線上單一網頁報告 (GitHub Pages)**：https://by960330-sys.github.io/ai-numerical-midterm/
- **GitHub 儲存庫網址**：https://github.com/by960330-sys/ai-numerical-midterm

---

## 各題達成說明與檔案清單

1. **第一題（20分）**：輸出一個能做 1 加到 N 的 Fortran 程式（`sum_1_to_n.f90`）並以 `gfortran` 完成編譯與執行測試（`N = 100` 輸出 `5050`）。
2. **第二題（20分）**：執行該程式進行三次隨機驗證（`N = 669 -> 224115`、`N = 771 -> 297606`、`N = 242 -> 29403`），全數符合數學公式 $N(N+1)/2$。
3. **第三題（20分）**：Git 版本控制：
   - 原版認錄（Commit `4c794b2`）：`feat: 認錄原版 1 加到 N 的 Fortran 程式 (Original Version)`
   - 逐行註解並重新編譯驗證成功後再次認錄為新版（Commit `3036f65`）：`docs: 針對原程式碼進行逐行詳細註解並完成編譯驗證 (Commented Version)`
4. **第四題（20分）**：將本地端版本控制程式碼傳送至 GitHub 雲端儲存庫（`by960330-sys/ai-numerical-midterm`）。
5. **第五題（20分）**：建置「任務達成評分系統」（包含單一網頁互動式評分系統 `index.html` 與 Fortran CLI 評分系統 `grading_system.f90`），允許輸入前四題結果，達標即給分。
